import 'dart:io';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/utils/notify_on_new_state.dart';
import 'package:trios/models/mod.dart';
import 'package:trios/trios/app_state.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/utils/search_index.dart';
import 'package:trios/descriptions/descriptions_manager.dart';
import 'package:trios/weapon_viewer/models/weapon.dart';
import 'package:trios/weapon_viewer/weapons_manager.dart';
import 'package:trios/widgets/filter_engine/filter_engine.dart';
import 'package:trios/widgets/filter_group_persistence/filter_group_persistence_provider.dart';
import 'package:trios/widgets/smart_search/search_dsl_field.dart';

part 'weapons_page_controller.mapper.dart';

/// Stable page identifier for persistence keying.
const String kWeaponsPageId = 'weapons';

@MappableClass()
class WeaponsPageStatePersisted with WeaponsPageStatePersistedMappable {
  final bool splitPane;
  final bool useContainFit;
  final bool showFilters;
  final bool alwaysShowGlow;

  /// Advanced filters: number sliders, and an "any" / "all" choice per group.
  final bool advancedFilters;

  const WeaponsPageStatePersisted({
    this.splitPane = false,
    this.useContainFit = false,
    this.showFilters = false,
    this.alwaysShowGlow = false,
    this.advancedFilters = false,
  });
}

@MappableClass()
class WeaponsPageState with WeaponsPageStateMappable {
  final WeaponsPageStatePersisted persisted;
  final List<Weapon> allWeapons;
  final List<Weapon> filteredWeapons;
  final List<Weapon> weaponsBeforeGridFilter;
  final SearchIndex weaponSearchIndices;
  final String currentSearchQuery;
  final bool isLoading;

  bool get splitPane => persisted.splitPane;

  bool get useContainFit => persisted.useContainFit;

  bool get showFilters => persisted.showFilters;

  bool get alwaysShowGlow => persisted.alwaysShowGlow;

  bool get advancedFilters => persisted.advancedFilters;

  const WeaponsPageState({
    this.persisted = const WeaponsPageStatePersisted(),
    this.allWeapons = const [],
    this.filteredWeapons = const [],
    this.weaponsBeforeGridFilter = const [],
    this.weaponSearchIndices = const {},
    this.currentSearchQuery = '',
    this.isLoading = false,
  });
}

@MappableEnum()
enum WeaponSpoilerLevel { noSpoilers, showAllSpoilers }

/// Whether [weapon] should be shown at the given spoiler [level].
/// Shared by the weapons page and the faction profile dialog.
bool weaponMatchesSpoilerLevel(Weapon weapon, WeaponSpoilerLevel level) {
  if (level == WeaponSpoilerLevel.showAllSpoilers) return true;
  // tagsAsSet is cached on the weapon; re-splitting the tags string here was
  // a hot spot when the codex filters every weapon on each data refresh.
  return !weapon.tagsAsSet.contains('codex_unlockable');
}

final weaponsPageControllerProvider =
    NotifierProvider<WeaponsPageController, WeaponsPageState>(
      () => WeaponsPageController(),
    );

class WeaponsPageController extends Notifier<WeaponsPageState>
    with NotifyOnNewState {
  static final _scope = const FilterScope(kWeaponsPageId);

  late final FilterScopeController<Weapon> _filters;
  late final List<SearchField<Weapon>> _searchFields;
  late final Map<String, SearchField<Weapon>> _fieldsByKey;
  List<Weapon>? _searchIndexItems;

  final vanillaName = 'Vanilla';

  FilterScope get scope => _scope;

  List<FilterGroup<Weapon>> get filterGroups => _filters.groups;

  List<SearchFieldMeta> get searchFieldsMeta =>
      _searchFields.map((f) => f.toMeta(state.allWeapons)).toList();

  CompositeFilterGroup<Weapon> get _general =>
      _filters.findGroup('general') as CompositeFilterGroup<Weapon>;

  BoolField<Weapon> get _showEnabledField =>
      _general.fieldById('showEnabled') as BoolField<Weapon>;

  BoolField<Weapon> get _showHiddenField =>
      _general.fieldById('showHidden') as BoolField<Weapon>;

  EnumField<Weapon, WeaponSpoilerLevel> get _spoilerField =>
      _general.fieldById('spoiler') as EnumField<Weapon, WeaponSpoilerLevel>;

  bool get showEnabled => ref.read(appSettings).onlyEnabledMods;

  bool get showHidden => _showHiddenField.value;

  WeaponSpoilerLevel get weaponSpoilerLevel => _spoilerField.selected;

  @override
  WeaponsPageState build() {
    if (stateOrNull == null) {
      _filters = _buildFilters();
      _searchFields = _buildSearchFields();
      _fieldsByKey = {for (final f in _searchFields) f.key: f};
      final persistence = ref.read(filterGroupPersistenceProvider);
      _filters.loadPersisted(persistence);
    }

    final saved = ref.read(appSettings).weaponsPageState;

    ref.watch(descriptionsNotifierProvider);
    // One app-wide switch, so flipping it anywhere rebuilds this page too.
    final onlyEnabledMods = ref.watch(onlyEnabledModsProvider);
    _showEnabledField.value = onlyEnabledMods;
    final weaponsAsync = ref.watch(weaponListNotifierProvider(onlyEnabledMods));
    final mods = ref.watch(AppState.mods);
    final isLoadingWeapons = ref.watch(isLoadingWeaponsList);

    final allWeapons = weaponsAsync.value ?? [];

    _filters.applyPendingChipMerge(allWeapons);

    final itemsChanged = !identical(allWeapons, _searchIndexItems);
    _searchIndexItems = allWeapons;
    // Sliders cover the whole weapon list, not the filtered subset, so their
    // ends don't move as you filter.
    if (itemsChanged) _filters.updateRanges(allWeapons);
    final weaponValuesByWeaponId = itemsChanged
        ? _updateSearchIndices(allWeapons)
        : stateOrNull?.weaponSearchIndices ?? _updateSearchIndices(allWeapons);

    final initialState =
        (stateOrNull ??
                WeaponsPageState(
                  persisted: WeaponsPageStatePersisted(
                    splitPane: saved?.splitPane ?? false,
                    useContainFit: saved?.useContainFit ?? false,
                    showFilters: saved?.showFilters ?? false,
                    alwaysShowGlow: saved?.alwaysShowGlow ?? false,
                    advancedFilters: saved?.advancedFilters ?? false,
                  ),
                ))
            .copyWith(
              allWeapons: allWeapons,
              weaponSearchIndices: weaponValuesByWeaponId,
              isLoading: isLoadingWeapons,
            );

    if (!itemsChanged && !showEnabled && stateOrNull != null) {
      return initialState.copyWith(
        filteredWeapons: stateOrNull!.filteredWeapons,
        weaponsBeforeGridFilter: stateOrNull!.weaponsBeforeGridFilter,
      );
    }

    return _processAllFilters(initialState, mods);
  }

  FilterScopeController<Weapon> _buildFilters() {
    final loc = AppLocalizationsSync.instance;
    final groups = <FilterGroup<Weapon>>[
      CompositeFilterGroup<Weapon>(
        id: 'general',
        name: loc.codexGeneral,
        fields: [
          BoolField<Weapon>(
            id: 'showEnabled',
            label: loc.factionViewerOnlyEnabledMods,
            tooltip: loc.weaponsFilterOnlyEnabledModsTooltip,
            predicate: (weapon) {
              final mods = ref.read(AppState.mods);
              return weapon.modVariant == null ||
                  weapon.modVariant?.mod(mods)?.hasEnabledVariant == true;
            },
          ),
          BoolField<Weapon>(
            id: 'showHidden',
            label: loc.weaponsShowHiddenWeapons,
            tooltip: loc.weaponsFilterShowHiddenTooltip,
            predicate: (_) => true,
            defaultValue: true,
            initialValue: false,
          ),
          EnumField<Weapon, WeaponSpoilerLevel>(
            id: 'spoiler',
            label: loc.hullmodsSpoilers,
            defaultValue: WeaponSpoilerLevel.noSpoilers,
            options: WeaponSpoilerLevel.values,
            predicate: _spoilerMatches,
            optionLabel: _spoilerLabel,
            optionTooltip: _spoilerTooltip,
            optionIcon: (e) => switch (e) {
              WeaponSpoilerLevel.noSpoilers => Icons.visibility_off,
              WeaponSpoilerLevel.showAllSpoilers => Icons.visibility_outlined,
            },
            inactiveValue: WeaponSpoilerLevel.showAllSpoilers,
          ),
        ],
      ),
      ChipFilterGroup<Weapon>(
        id: 'weaponType',
        name: loc.weaponsColumnWeaponType,
        valueGetter: (weapon) => weapon.weaponType ?? '',
        displayNameGetter: (name) => name.toTitleCase(),
      ),
      ChipFilterGroup<Weapon>(
        id: 'size',
        name: loc.weaponsColumnSize,
        valueGetter: (weapon) => weapon.size ?? '',
        displayNameGetter: (name) => name.toTitleCase(),
      ),
      ChipFilterGroup<Weapon>(
        id: 'hint',
        name: loc.weaponsFilterHint,
        valueGetter: (weapon) => weapon.hints ?? "",
        valuesGetter: (weapon) => weapon.hintsAsSet.toList(),
        displayNameGetter: (hint) => hint.toTitleCase(),
      ),
      ChipFilterGroup<Weapon>(
        id: 'mod',
        name: loc.codexMod,
        collapsedByDefault: true,
        valueGetter: (weapon) =>
            weapon.modVariant?.modInfo.nameOrId ?? vanillaName,
        sortComparator: (a, b) => a == vanillaName
            ? -1
            : b == vanillaName
            ? 1
            : a.compareTo(b),
        // The chip label is localized; the stored value stays the stable
        // English "Vanilla" so persisted selections survive locale changes.
        displayNameGetter: (value) => value == vanillaName
            ? loc.vanillaShareBarVanilla
            : value,
      ),
      ChipFilterGroup<Weapon>(
        id: 'techManufacturer',
        name: loc.weaponsColumnTechManufacturer,
        collapsedByDefault: true,
        valueGetter: (weapon) => weapon.techManufacturer ?? '',
      ),
      // Number sliders (advanced mode only).
      RangeFilterGroup<Weapon>(
        id: 'rangeDamage',
        name: loc.weaponsFilterDamagePerShot,
        valueGetter: (weapon) => weapon.damagePerShot,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeDps',
        name: loc.weaponsFilterDamagePerSecond,
        valueGetter: (weapon) => weapon.damagePerSecond,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeOps',
        name: loc.shipsFilterOrdnancePoints,
        valueGetter: (weapon) => weapon.ops,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeRange',
        name: loc.weaponsColumnRange,
        valueGetter: (weapon) => weapon.range,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeFluxPerSecond',
        name: loc.weaponsFilterFluxPerSecond,
        valueGetter: (weapon) => weapon.fluxPerSecond,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeTurnRate',
        name: loc.weaponsColumnTurnRate,
        valueGetter: (weapon) => weapon.turnRate,
      ),
      RangeFilterGroup<Weapon>(
        id: 'rangeAmmo',
        name: loc.weaponsColumnAmmo,
        valueGetter: (weapon) => weapon.ammo,
      ),
    ];
    return FilterScopeController<Weapon>(scope: _scope, groups: groups);
  }

  bool _spoilerMatches(Weapon weapon, WeaponSpoilerLevel level) =>
      weaponMatchesSpoilerLevel(weapon, level);

  String _spoilerLabel(WeaponSpoilerLevel e) => switch (e) {
    WeaponSpoilerLevel.noSpoilers =>
      AppLocalizationsSync.instance.weaponsSpoilerNone,
    WeaponSpoilerLevel.showAllSpoilers =>
      AppLocalizationsSync.instance.weaponsSpoilerAll,
  };

  String _spoilerTooltip(WeaponSpoilerLevel e) => switch (e) {
    WeaponSpoilerLevel.noSpoilers =>
      AppLocalizationsSync.instance.weaponsSpoilerNoneTooltip,
    WeaponSpoilerLevel.showAllSpoilers =>
      AppLocalizationsSync.instance.weaponsSpoilerAllTooltip,
  };

  void _persistState(WeaponsPageState newState) {
    try {
      ref.read(appSettings.notifier).update((s) {
        final current = s.weaponsPageState ?? const WeaponsPageStatePersisted();
        return s.copyWith(
          weaponsPageState: current.copyWith(
            splitPane: newState.splitPane,
            useContainFit: newState.useContainFit,
            showFilters: newState.showFilters,
            alwaysShowGlow: newState.alwaysShowGlow,
            advancedFilters: newState.advancedFilters,
          ),
        );
      });
    } catch (_) {}
  }

  SearchIndex _updateSearchIndices(List<Weapon> allWeapons) {
    return updateSearchIndices(
      allWeapons,
      stateOrNull?.weaponSearchIndices ?? {},
      (w) => w.id,
      (w) => w.toMap(),
    );
  }

  WeaponsPageState _processAllFilters(
    WeaponsPageState currentState,
    List<Mod> mods,
  ) {
    var weapons = _applyEnabledAndHidden(currentState.allWeapons.toList());
    weapons = _applySpoilers(weapons);
    weapons = _filters.applyRangeFilters(weapons);

    final weaponsBeforeGridFilter = weapons.toList();

    weapons = _filters.applyChipFilters(weapons);

    weapons = _applyParsedQuery(
      weapons,
      currentState.currentSearchQuery,
      currentState.weaponSearchIndices,
    );

    return currentState.copyWith(
      filteredWeapons: weapons,
      weaponsBeforeGridFilter: weaponsBeforeGridFilter,
    );
  }

  List<Weapon> _applyEnabledAndHidden(List<Weapon> weapons) {
    if (showEnabled) {
      final mods = ref.read(AppState.mods);
      weapons = weapons.where((weapon) {
        return weapon.modVariant == null ||
            weapon.modVariant?.mod(mods)?.hasEnabledVariant == true;
      }).toList();
    }
    if (!showHidden) {
      weapons = weapons.where((weapon) => !weapon.isHidden()).toList();
    }
    return weapons;
  }

  List<Weapon> _applySpoilers(List<Weapon> weapons) {
    final level = weaponSpoilerLevel;
    if (level == WeaponSpoilerLevel.showAllSpoilers) return weapons;
    return weapons.where((w) => _spoilerMatches(w, level)).toList();
  }

  void updateSearchQuery(String query) {
    if (query == state.currentSearchQuery) return;
    final mods = ref.read(AppState.mods);
    state = _processAllFilters(state.copyWith(currentSearchQuery: query), mods);
  }

  void toggleShowEnabled() {
    _showEnabledField.value = !_showEnabledField.value;
    _filters.maybePersist('general', ref.read(filterGroupPersistenceProvider));
    _emitAfterFilterMutation();
  }

  void toggleShowHidden() {
    _showHiddenField.value = !_showHiddenField.value;
    _filters.maybePersist('general', ref.read(filterGroupPersistenceProvider));
    _emitAfterFilterMutation();
  }

  void setWeaponSpoilerLevel(WeaponSpoilerLevel level) {
    _spoilerField.setSelected(level);
    _filters.maybePersist('general', ref.read(filterGroupPersistenceProvider));
    _emitAfterFilterMutation();
  }

  void toggleSplitPane() {
    final updatedState = state.copyWith(
      persisted: state.persisted.copyWith(splitPane: !state.splitPane),
    );
    state = updatedState;
    _persistState(state);
  }

  void toggleShowFilters() {
    final updatedState = state.copyWith(
      persisted: state.persisted.copyWith(showFilters: !state.showFilters),
    );
    state = updatedState;
    _persistState(state);
  }

  /// Turn advanced filters on or off. This only decides whether the per-group
  /// "any" / "all" buttons are on show, so no re-filtering is needed.
  void setAdvancedMode(bool advanced) {
    if (advanced == state.advancedFilters) return;
    state = state.copyWith(
      persisted: state.persisted.copyWith(advancedFilters: advanced),
    );
    _persistState(state);
  }

  void toggleUseContainFit() {
    final updatedState = state.copyWith(
      persisted: state.persisted.copyWith(useContainFit: !state.useContainFit),
    );
    state = updatedState;
    _persistState(state);
  }

  void toggleAlwaysShowGlow() {
    final updatedState = state.copyWith(
      persisted: state.persisted.copyWith(
        alwaysShowGlow: !state.alwaysShowGlow,
      ),
    );
    state = updatedState;
    _persistState(state);
  }

  int get activeFilterCount => _filters.activeCount;

  Directory getGameCoreDir() {
    return Directory(ref.read(AppState.gameCoreFolder).value?.path ?? '');
  }

  void clearAllFilters() {
    _filters.clearAll();
    _emitAfterFilterMutation();
  }

  void onGroupChanged(String groupId) {
    // "Only Enabled Mods" in the panel writes the shared setting, which is
    // what every page reads. The rebuild that follows syncs the field back.
    if (_showEnabledField.value != showEnabled) {
      ref
          .read(appSettings.notifier)
          .update((s) => s.copyWith(onlyEnabledMods: _showEnabledField.value));
      return;
    }
    _filters.maybePersist(groupId, ref.read(filterGroupPersistenceProvider));
    _emitAfterFilterMutation();
  }

  void setChipSelections(String groupId, Map<String, bool?> selections) {
    _filters.setChipSelections(groupId, selections);
    _emitAfterFilterMutation();
  }

  void _emitAfterFilterMutation() {
    final mods = ref.read(AppState.mods);
    state = _processAllFilters(state, mods);
  }

  List<SearchField<Weapon>> _buildSearchFields() {
    final loc = AppLocalizationsSync.instance;
    return [
      SearchField.string(
        'tracking',
        loc.weaponsSearchTrackingQuality,
        (w) => w.trackingStr,
      ),
      SearchField<Weapon>(
        key: 'ammo',
        description: loc.weaponsSearchAmmoCount,
        supportsNumeric: true,
        valueSuggestions: (weapons) => ['none'],
        matches: (weapon, op, value) {
          if (value.toLowerCase() == 'none') {
            if (op != DslOperator.equals) return false;
            return weapon.ammo == null || weapon.ammo == 0;
          }
          final numVal = double.tryParse(value);
          if (numVal == null) return false;
          final ammo = weapon.ammo ?? 0;
          return switch (op) {
            DslOperator.equals => ammo == numVal,
            DslOperator.greaterThan => ammo > numVal,
            DslOperator.lessThan => ammo < numVal,
            DslOperator.greaterThanOrEqual => ammo >= numVal,
            DslOperator.lessThanOrEqual => ammo <= numVal,
          };
        },
      ),
      SearchField.string(
        'type',
        loc.weaponsSearchWeaponType,
        (w) => w.weaponType,
      ),
      SearchField.string(
        'size',
        loc.weaponsSearchMountSize,
        (w) => w.size,
      ),
      SearchField.string(
        'damage',
        loc.weaponsSearchDamageType,
        (w) => w.damageType,
      ),
      SearchField.numeric('range', loc.weaponsSearchWeaponRange, (w) => w.range),
      SearchField.numeric('op', loc.weaponsSearchOpCost, (w) => w.ops),
      SearchField.numeric('dps', loc.weaponsSearchDps, (w) => w.damagePerSecond),
      SearchField<Weapon>(
        key: 'hint',
        description: loc.weaponsSearchHintTag,
        valueSuggestions: (weapons) =>
            weapons
                .expand((w) => w.hintsAsSet)
                .where((v) => v.isNotEmpty)
                .toSet()
                .toList()
              ..sort(),
        matches: (weapon, op, value) {
          if (op != DslOperator.equals) return false;
          return weapon.hintsAsSet.contains(value.toLowerCase());
        },
      ),
      SearchField<Weapon>(
        key: 'tag',
        description: loc.weaponsSearchTag,
        valueSuggestions: (weapons) =>
            weapons
                .expand((w) => w.tagsAsSet)
                .where((v) => v.isNotEmpty)
                .toSet()
                .toList()
              ..sort(),
        matches: (weapon, op, value) {
          if (op != DslOperator.equals) return false;
          return weapon.tagsAsSet.contains(value.toLowerCase());
        },
      ),
      SearchField<Weapon>(
        key: 'mod',
        description: loc.shipsSearchModSubstring,
        valueSuggestions: (weapons) =>
            weapons
                .map((w) => w.modVariant?.modInfo.nameOrId)
                .whereType<String>()
                .toSet()
                .toList()
              ..sort(),
        matches: (weapon, op, value) {
          if (op != DslOperator.equals) return false;
          final modName =
              weapon.modVariant?.modInfo.nameOrId.toLowerCase() ?? '';
          return modName.contains(value.toLowerCase());
        },
      ),
      // Combat stats (numeric)
      SearchField.numeric('dpshot', loc.weaponsSearchDamagePerShot, (w) => w.damagePerShot),
      SearchField.numeric('emp', loc.weaponsSearchEmpDamage, (w) => w.emp),
      SearchField.numeric('energy', loc.weaponsSearchFluxPerShot, (w) => w.energyPerShot),
      SearchField.numeric('eps', loc.weaponsSearchFluxPerSecond, (w) => w.energyPerSecond),
      SearchField.numeric(
        'chargeup',
        loc.weaponsSearchChargeUp,
        (w) => w.chargeup,
      ),
      SearchField.numeric(
        'chargedown',
        loc.weaponsSearchChargeDown,
        (w) => w.chargedown,
      ),
      SearchField.numeric(
        'burst',
        loc.weaponsSearchBurstSize,
        (w) => w.burstSize,
      ),
      SearchField.numeric(
        'burstdelay',
        loc.weaponsSearchBurstDelay,
        (w) => w.burstDelay,
      ),
      SearchField.numeric(
        'barrels',
        loc.weaponsSearchBarrelsTogether,
        (w) => w.barrelCount,
      ),
      SearchField.numeric(
        'turnrate',
        loc.weaponsSearchTurnRate,
        (w) => w.turnRate,
      ),
      SearchField.numeric('speed', loc.weaponsSearchProjectileSpeed, (w) => w.projSpeed),
      SearchField.numeric('beamspeed', loc.weaponsSearchBeamSpeed, (w) => w.beamSpeed),
      SearchField.numeric(
        'launchspeed',
        loc.weaponsSearchLaunchSpeed,
        (w) => w.launchSpeed,
      ),
      SearchField.numeric(
        'flighttime',
        loc.weaponsSearchFlightTime,
        (w) => w.flightTime,
      ),
      SearchField.numeric(
        'projhp',
        loc.weaponsSearchProjectileHitpoints,
        (w) => w.projHitpoints,
      ),
      SearchField.numeric(
        'ammosec',
        loc.weaponsSearchAmmoRegen,
        (w) => w.ammoPerSec,
      ),
      SearchField.numeric('reload', loc.weaponsSearchReloadSize, (w) => w.reloadSize),
      SearchField.numeric('impact', loc.weaponsSearchImpact, (w) => w.impact),
      SearchField.numeric(
        'autofire',
        loc.weaponsSearchAutofireBonus,
        (w) => w.autofireAccBonus,
      ),
      // Spread/accuracy (numeric)
      SearchField.numeric('spread', loc.weaponsSearchMaxSpread, (w) => w.maxSpread),
      SearchField.numeric('minspread', loc.weaponsSearchMinSpread, (w) => w.minSpread),
      SearchField.numeric(
        'spreadshot',
        loc.weaponsSearchSpreadPerShot,
        (w) => w.spreadPerShot,
      ),
      // Stats TriOS works out itself, rather than reading from the CSV.
      // These account for charge-up, burst size and beam behaviour, so they
      // differ from the raw `dps` column for burst beams and multi-shot guns.
      SearchField.numeric(
        'effectivedps',
        loc.weaponsSearchEffectiveDps,
        (w) => w.effectiveDps,
      ),
      SearchField.numeric(
        'sustaineddps',
        loc.weaponsSearchSustainedDps,
        (w) => w.sustainedDps,
      ),
      SearchField.numeric(
        'burstdamage',
        loc.weaponsSearchBurstDamage,
        (w) => w.burstDamage,
      ),
      SearchField.numeric(
        'refire',
        loc.weaponsSearchRefireDelay,
        (w) => w.refireDelay,
      ),
      SearchField.numeric(
        'fluxperdamage',
        loc.weaponsSearchFluxPerDamage,
        (w) => w.fluxPerDamage,
      ),
      SearchField.numeric(
        'fluxpersec',
        loc.weaponsSearchFluxPerSecFiring,
        (w) => w.fluxPerSecond,
      ),
      SearchField.numeric(
        'sustainedflux',
        loc.weaponsSearchSustainedFlux,
        (w) => w.sustainedFluxPerSecond,
      ),
      SearchField.numeric(
        'empburst',
        loc.weaponsSearchEmpPerActivation,
        (w) => w.empPerActivation,
      ),
      // Weapon identity (string, with value suggestions)
      SearchField.string(
        'specclass',
        loc.weaponsSearchSpecClass,
        (w) => w.specClass,
      ),
      SearchField.string(
        'mount',
        loc.weaponsSearchMountType,
        (w) => w.effectiveMountType,
      ),
      SearchField.string(
        'manufacturer',
        loc.shipsSearchTechManufacturer,
        (w) => w.techManufacturer,
      ),
      SearchField.string(
        'role',
        loc.weaponsSearchPrimaryRole,
        (w) => w.primaryRoleStr,
      ),
      SearchField.string('group', loc.weaponsSearchGroupTag, (w) => w.groupTag),
      // Metadata (numeric)
      SearchField.numeric('tier', loc.weaponsSearchTier, (w) => w.tier),
      SearchField.numeric('rarity', loc.weaponsSearchRarityValue, (w) => w.rarity),
      SearchField.numeric('cost', loc.shipsSearchBaseValue, (w) => w.baseValue),
    ];
  }

  List<Weapon> _applyParsedQuery(
    List<Weapon> weapons,
    String query,
    SearchIndex weaponValuesByWeaponId,
  ) {
    return SearchField.applyQuery(
      weapons,
      query,
      _fieldsByKey,
      weaponValuesByWeaponId,
      (w) => w.id,
    );
  }

  void submitSearchQuery() {
    final query = state.currentSearchQuery.trim();
    if (query.isEmpty) return;
    ref.read(appSettings.notifier).update((s) {
      final deduped = [
        query,
        ...s.weaponsSearchHistory.where((h) => h != query),
      ];
      return s.copyWith(weaponsSearchHistory: deduped.take(10).toList());
    });
  }
}
