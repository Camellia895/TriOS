import 'package:collection/collection.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/mod_manager/homebrew_grid/wisp_grid.dart';
import 'package:trios/mod_manager/homebrew_grid/wisp_grid_state.dart';
import 'package:trios/mod_manager/homebrew_grid/wispgrid_group.dart';
import 'package:trios/models/mod.dart';
import 'package:trios/thirdparty/flutter_context_menu/components/menu_item.dart';
import 'package:trios/thirdparty/flutter_context_menu/core/models/context_menu.dart';
import 'package:trios/thirdparty/flutter_context_menu/core/models/context_menu_entry.dart';
import 'package:trios/thirdparty/flutter_context_menu/widgets/context_menu_region.dart';
import 'package:trios/trios/app_state.dart';
import 'package:trios/trios/context_menu_items.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/trios/settings/settings.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/weapon_viewer/models/weapon.dart';
import 'package:trios/weapon_viewer/weapons_manager.dart';
import 'package:trios/weapon_viewer/weapons_page_controller.dart';
import 'package:trios/weapon_viewer/widgets/weapon_codex_card.dart';
import 'package:trios/weapon_viewer/widgets/weapon_details_dialog.dart';
import 'package:trios/weapon_viewer/widgets/weapon_image_cell.dart';
import 'package:trios/widgets/collapsed_filter_button.dart';
import 'package:trios/widgets/conditional_wrap.dart';
import 'package:trios/widgets/export_to_csv_dialog.dart';
import 'package:trios/widgets/filter_engine/filter_engine.dart';
import 'package:trios/widgets/filter_widget.dart';
import 'package:trios/widgets/mod_data_file_menu.dart';
import 'package:trios/widgets/overflow_menu_button.dart';
import 'package:trios/widgets/text_trios.dart';
import 'package:trios/widgets/smart_search/smart_search_bar.dart';
import 'package:trios/widgets/viewer_split_pane.dart';
import 'package:trios/widgets/viewer_toolbar.dart';

import '../trios/navigation.dart';
import '../widgets/multi_split_mixin_view.dart';

final _nonAlphanumeric = RegExp(r'[^0-9a-zA-Z]');

class WeaponsPage extends ConsumerStatefulWidget {
  const WeaponsPage({super.key});

  @override
  ConsumerState<WeaponsPage> createState() => _WeaponsPageState();
}

class _WeaponsPageState extends ConsumerState<WeaponsPage>
    with AutomaticKeepAliveClientMixin<WeaponsPage>, MultiSplitViewMixin {
  @override
  bool get wantKeepAlive => true;

  final ScrollController _filterScrollController = ScrollController();
  WispGridController<Weapon>? _gridController;
  Widget? _cachedBuild;

  /// The rows in the order shown on screen, for Previous/Next paging in the
  /// details dialog. De-duplicated by id in case a grouping ever lists an item
  /// twice. Falls back to [fallback] before the grid has reported in.
  List<Weapon> _weaponsInDisplayedOrder(List<Weapon> fallback) {
    final displayed = _gridController?.lastDisplayedItemsReadonly ?? fallback;
    final seen = <String>{};
    return displayed.where((weapon) => seen.add(weapon.id)).toList();
  }

  @override
  List<Area> get areas {
    final controllerState = ref.read(weaponsPageControllerProvider);
    return controllerState.splitPane
        ? [Area(id: 'top'), Area(id: 'bottom')]
        : [Area(id: 'top')];
  }

  @override
  void dispose() {
    _filterScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final isActive =
        ref.watch(appSettings.select((s) => s.defaultTool)) ==
        TriOSTools.weapons;
    if (!isActive && _cachedBuild != null) return _cachedBuild!;

    final controller = ref.watch(weaponsPageControllerProvider.notifier);
    final controllerState = ref.watch(weaponsPageControllerProvider);
    final theme = Theme.of(context);
    final mods = ref.watch(AppState.mods);

    // Apply pending mod filter from context menu navigation.
    final filterRequest = ref.watch(AppState.viewerFilterRequest);
    if (filterRequest != null &&
        filterRequest.destination == TriOSTools.weapons) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ref.read(weaponsPageControllerProvider.notifier).setChipSelections(
          'mod',
          {filterRequest.modName: true},
        );
        ref.read(AppState.viewerFilterRequest.notifier).state = null;
      });
    }

    final columns = buildCols(theme, controllerState);
    final total = controllerState.allWeapons.length;
    final visible = controllerState.filteredWeapons.length;

    final result = Column(
      children: [
        _buildToolbar(
          context,
          theme,
          total,
          visible,
          controller,
          controllerState,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFiltersSection(
                theme,
                controllerState,
                controller,
                controllerState.weaponsBeforeGridFilter,
              ),
              Expanded(
                child: _buildGridSection(
                  theme,
                  controllerState,
                  columns,
                  controllerState.filteredWeapons,
                  mods,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    _cachedBuild = result;
    return result;
  }

  Widget _buildToolbar(
    BuildContext context,
    ThemeData theme,
    int total,
    int visible,
    WeaponsPageController controller,
    WeaponsPageState controllerState,
  ) {
    final loc = AppLocalizations.of(context);
    return ViewerToolbar(
      entityName: loc.weaponsEntityName,
      total: total,
      visible: visible,
      isLoading: controllerState.isLoading,
      onRefresh: () {
        // Refresh means "look at every file again", so skip no mods this time.
        ref.read(weaponSourcesProvider.notifier).requestFullParse();
        ref.invalidate(weaponSourcesProvider);
      },
      searchBox: SmartSearchBar(
        fields: controller.searchFieldsMeta,
        recentHistory: ref.watch(
          appSettings.select((s) => s.weaponsSearchHistory),
        ),
        initialValue: controllerState.currentSearchQuery,
        onChanged: (query) => ref
            .read(weaponsPageControllerProvider.notifier)
            .updateSearchQuery(query),
        onSubmitted: () => ref
            .read(weaponsPageControllerProvider.notifier)
            .submitSearchQuery(),
      ),
      splitPane: controllerState.splitPane,
      onToggleSplitPane: () {
        controller.toggleSplitPane();
        multiSplitController.areas = areas;
        setState(() {});
      },
      trailingActions: [
        _buildOverflowButton(
          context: context,
          theme: theme,
          controllerState: controllerState,
        ),
      ],
    );
  }

  Widget _buildFiltersSection(
    ThemeData theme,
    WeaponsPageState controllerState,
    WeaponsPageController controller,
    List<Weapon> weaponsBeforeFilter,
  ) {
    if (!controllerState.showFilters) {
      return Padding(
        padding: const EdgeInsets.only(left: 8, top: 4),
        child: CollapsedFilterButton(
          onTap: controller.toggleShowFilters,
          activeFilterCount: controller.activeFilterCount,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 4, bottom: 8),
      child: buildFilterPanel(
        theme,
        weaponsBeforeFilter,
        controllerState,
        controller,
      ),
    );
  }

  Widget _buildGridSection(
    ThemeData theme,
    WeaponsPageState controllerState,
    List<WispGridColumn<Weapon>> columns,
    List<Weapon> weapons,
    List<Mod> mods,
  ) {
    return ViewerSplitPane(
      controller: multiSplitController,
      gridBuilder: (areaId) {
        switch (areaId) {
          case 'top':
            return buildGrid(columns, weapons, mods, true, theme);
          case 'bottom':
            return buildGrid(columns, weapons, mods, false, theme);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  Widget buildFilterPanel(
    ThemeData theme,
    List<Weapon> displayedWeapons,
    WeaponsPageState controllerState,
    WeaponsPageController controller, {
    bool inDialog = false,
  }) {
    return ConditionalWrap(
      condition: !inDialog,
      wrapper: (child) => Card(child: child),
      child: FiltersPanel(
        onHide: inDialog
            ? () => Navigator.of(context).pop()
            : controller.toggleShowFilters,
        // The dialog gets its own scrolling; the shared controller can only
        // drive one list at a time.
        scrollController: inDialog ? null : _filterScrollController,
        width: inDialog ? 560 : 300,
        showSearch: true,
        isAdvanced: controllerState.advancedFilters,
        onAdvancedChanged: controller.setAdvancedMode,
        onExpand: inDialog ? null : _openFilterDialog,
        activeFilterCount: controller.activeFilterCount,
        showClearAll: controller.filterGroups.any((g) => g.isActive),
        onClearAll: controller.clearAllFilters,
        filterWidgets: [
          for (final g in controller.filterGroups)
            FilterGroupRenderer<Weapon>(
              group: g,
              scope: controller.scope,
              items: displayedWeapons,
              onChanged: () => controller.onGroupChanged(g.id),
            ),
        ],
      ),
    );
  }

  /// Shows the same filters in a bigger window. Changes apply as you make
  /// them, so the grid behind keeps up.
  void _openFilterDialog() {
    showFilterPanelDialog(
      context,
      (_) => Consumer(
        builder: (context, ref, _) {
          final state = ref.watch(weaponsPageControllerProvider);
          final controller = ref.watch(weaponsPageControllerProvider.notifier);
          return buildFilterPanel(
            Theme.of(context),
            state.weaponsBeforeGridFilter,
            state,
            controller,
            inDialog: true,
          );
        },
      ),
    );
  }

  Widget buildGrid(
    List<WispGridColumn<Weapon>> columns,
    List<Weapon> items,
    List<Mod> mods,
    bool isTop,
    ThemeData theme,
  ) {
    final gridState = ref.watch(appSettings.select((s) => s.weaponsGridState));

    return DefaultTextStyle.merge(
      style: theme.textTheme.labelLarge!.copyWith(fontSize: 14),
      child: WispGrid<Weapon>(
        gridState: gridState,
        updateGridState: (updateFunction) {
          ref.read(appSettings.notifier).update((state) {
            return state.copyWith(
              weaponsGridState:
                  updateFunction(state.weaponsGridState) ??
                  Settings().weaponsGridState,
            );
          });
        },
        // Only keep the top grid's controller. The bottom grid is disposed
        // when the split pane turns off, and a controller pointing at a
        // disposed grid hands out a stale row order.
        onLoaded: isTop
            ? (controller) {
                _gridController = controller;
              }
            : null,
        columns: columns,
        items: items,
        itemExtent: 40,
        scrollbarConfig: ScrollbarConfig(
          showLeftScrollbar: ScrollbarVisibility.always,
          showRightScrollbar: ScrollbarVisibility.always,
          showBottomScrollbar: ScrollbarVisibility.always,
        ),
        rowBuilder: ({required item, required modifiers, required child}) =>
            SizedBox(
              height: 40,
              child: InkWell(
                onTap: () => showWeaponDetailsDialog(
                  context,
                  item,
                  siblings: _weaponsInDisplayedOrder(items),
                ),
                child: Container(
                  // Needed to add hit detection for right-clicking.
                  color: Colors.transparent,
                  child: buildRowContextMenu(item, child),
                ),
              ),
            ),
        groups: [UngroupedWeaponGridGroup(), ModNameWeaponGridGroup()],
      ),
    );
  }

  Widget buildRowContextMenu(Weapon weapon, Widget child) {
    final weaponSpritePath = weapon.allSpriteFiles.firstOrNull;
    final loc = AppLocalizations.of(context);
    return ContextMenuRegion(
      contextMenu: ContextMenu(
        entries: <ContextMenuEntry>[
          MenuItem(
            label: loc.factionViewerCopyId,
            icon: Icons.copy,
            onSelected: () => Clipboard.setData(ClipboardData(text: weapon.id)),
          ),
          if (weapon.wpnFiles.isNotEmpty)
            buildOpenModDataFileMenuItem(
              weapon.wpnFiles,
              label: loc.weaponsOpenWpnFile,
            ),
          if (weapon.csvFiles.isNotEmpty)
            buildOpenModDataFileMenuItem(
              weapon.csvFiles,
              label: loc.weaponsOpenWeaponDataCsv,
              notes: ModDataFileNotes.oneWins,
            ),
          if (weaponSpritePath != null && weapon.csvFile != null)
            buildOpenSingleFolderMenuItem(
              weapon.csvFile!.parent,
              secondFolder: weapon.wpnFile?.parent,
              label: loc.weaponsOpenWeaponDataFolder,
            ),
          if (weapon.modVariant != null)
            buildOpenSingleFolderMenuItem(
              weapon.modVariant!.modFolder.absolute,
              label: loc.factionViewerOpenModFolder,
            ),
          if (weapon.modVariant != null)
            buildMenuItemOpenForumPage(weapon.modVariant!, context),
        ],
        padding: const EdgeInsets.all(8.0),
      ),
      // Container needed to add hit detection to the non-Text parts of the row.
      child: Container(color: Colors.transparent, child: child),
    );
  }

  List<WispGridColumn<Weapon>> buildCols(
    ThemeData theme,
    WeaponsPageState controllerState,
  ) {
    final loc = AppLocalizations.of(context);
    int position = 0;

    String wepValueToString(
      Comparable<dynamic>? Function(Weapon) getValue,
      Weapon item,
    ) {
      final value = getValue(item);
      final str = switch (value) {
        double dbl => dbl.toStringMinimizingDigits(2),
        null => "",
        _ => value.toString(),
      };
      return str;
    }

    // Reusable helper
    WispGridColumn<Weapon> col(
      String key,
      String name,
      Comparable<dynamic>? Function(Weapon) getValue, {
      double width = 100,
      bool isVisible = true,
    }) {
      return WispGridColumn<Weapon>(
        key: key,
        isSortable: true,
        name: name,
        getSortValue: getValue,
        itemCellBuilder: (item, _) {
          return TextTriOS(
            wepValueToString(getValue, item),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );
        },
        csvValue: (item) => wepValueToString(getValue, item),
        defaultState: WispGridColumnState(
          position: position++,
          width: width,
          isVisible: isVisible,
        ),
      );
    }

    return [
      WispGridColumn(
        key: 'modVariant',
        isSortable: true,
        name: loc.codexMod,
        getSortValue: (weapon) => weapon.modVariant?.modInfo.nameOrId,
        itemCellBuilder: (item, _) => TextTriOS(
          item.modVariant?.modInfo.nameOrId ?? loc.vanillaShareBarVanilla,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.labelLarge,
        ),
        csvValue: (weapon) => weapon.modVariant?.modInfo.nameOrId ?? "Vanilla",
        defaultState: WispGridColumnState(position: position++, width: 120),
      ),
      WispGridColumn(
        key: 'spritePaths',
        isSortable: false,
        name: '',
        itemCellBuilder: (item, modifiers) => WeaponImageCell(
          weapon: item,
          fit: controllerState.useContainFit
              ? BoxFit.contain
              : BoxFit.scaleDown,
          rowHovered: modifiers.isHovering,
        ),
        csvValue: (weapon) => weapon.allSpriteFiles.join(","),
        defaultState: WispGridColumnState(position: position++, width: 40),
      ),
      WispGridColumn(
        key: 'name',
        isSortable: true,
        name: loc.modsGridName,
        getSortValue: (w) => (w.name ?? w.id).replaceAll(_nonAlphanumeric, ''),
        // Fills the cell so the tooltip shows from anywhere in it, not just
        // over the name text.
        itemCellBuilder: (w, _) => WeaponCodexCard.tooltip(
          weapon: w,
          child: MouseRegion(
            cursor: SystemMouseCursors.none,
            child: SizedBox.expand(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  w.name ?? w.id,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
          ),
        ),
        csvValue: (weapon) => weapon.modVariant?.modInfo.nameOrId ?? "Vanilla",
        defaultState: WispGridColumnState(position: position++, width: 150),
      ),
      col('id', loc.weaponsColumnId, (w) => w.id),
      col(
        'weaponType',
        loc.weaponsColumnWeaponType,
        (w) => w.weaponType?.toTitleCase(),
        width: 100,
      ),
      col('size', loc.weaponsColumnSize, (w) => w.size?.toTitleCase(), width: 80),
      col(
        'damageType',
        loc.weaponsColumnDmgType,
        (w) => w.damageType?.toTitleCase(),
        width: 90,
      ),
      col(
        'techManufacturer',
        loc.weaponsColumnTechManufacturer,
        (w) => w.techManufacturer,
        width: 150,
      ),
      col(
        'specClass',
        loc.weaponsColumnSpecClass,
        (w) => w.specClass,
        width: 100,
        isVisible: false,
      ),
      col(
        'primaryRoleStr',
        loc.weaponsColumnRole,
        (w) => w.primaryRoleStr,
        width: 110,
        isVisible: false,
      ),
      col(
        'accuracyStr',
        loc.weaponsColumnAccuracy,
        (w) => w.accuracyStr,
        width: 100,
        isVisible: false,
      ),
      col(
        'trackingStr',
        loc.weaponsColumnTracking,
        (w) => w.trackingStr,
        width: 100,
        isVisible: false,
      ),
      col(
        'speedStr',
        loc.weaponsColumnSpeed,
        (w) => w.speedStr,
        width: 90,
        isVisible: false,
      ),
      col(
        'turnRateStr',
        loc.weaponsColumnTurnRateText,
        (w) => w.turnRateStr,
        width: 110,
        isVisible: false,
      ),
      col(
        'damagePerShot',
        loc.weaponsColumnDmgShot,
        (w) => w.damagePerShot,
        width: 110,
      ),
      col('impact', loc.weaponsColumnImpact, (w) => w.impact, width: 80, isVisible: false),
      col('op', loc.weaponsColumnOp, (w) => w.ops, width: 110),
      col('baseValue', loc.weaponsColumnCost, (w) => w.baseValue, width: 80),
      col(
        'energyPerShot',
        loc.weaponsColumnFluxShot,
        (w) => w.energyPerShot,
        width: 90,
      ),
      col(
        'energyPerSecond',
        loc.weaponsColumnFluxSec,
        (w) => w.energyPerSecond,
        width: 90,
      ),
      col('range', loc.weaponsColumnRange, (w) => w.range, width: 80),
      col(
        'damagePerSecond',
        loc.weaponsColumnDmgSec,
        (w) => w.damagePerSecond,
        width: 90,
      ),
      col('ammo', loc.weaponsColumnAmmo, (w) => w.ammo, width: 80),
      col(
        'ammoPerSec',
        loc.weaponsColumnAmmoSec,
        (w) => w.ammoPerSec,
        width: 90,
        isVisible: false,
      ),
      col(
        'reloadSize',
        loc.weaponsColumnReloadSize,
        (w) => w.reloadSize,
        width: 100,
        isVisible: false,
      ),
      col('emp', loc.weaponsColumnEmp, (w) => w.emp, width: 80),
      col(
        'chargeup',
        loc.weaponsColumnChargeup,
        (w) => w.chargeup,
        width: 90,
        isVisible: false,
      ),
      col(
        'chargedown',
        loc.weaponsColumnChargedown,
        (w) => w.chargedown,
        width: 100,
        isVisible: false,
      ),
      col(
        'burstSize',
        loc.weaponsColumnBurstSize,
        (w) => w.burstSize,
        width: 90,
        isVisible: false,
      ),
      col(
        'burstDelay',
        loc.weaponsColumnBurstDelay,
        (w) => w.burstDelay,
        width: 100,
        isVisible: false,
      ),
      col(
        'minSpread',
        loc.weaponsColumnMinSpread,
        (w) => w.minSpread,
        width: 100,
        isVisible: false,
      ),
      col(
        'maxSpread',
        loc.weaponsColumnMaxSpread,
        (w) => w.maxSpread,
        width: 100,
        isVisible: false,
      ),
      col(
        'spreadPerShot',
        loc.weaponsColumnSpreadShot,
        (w) => w.spreadPerShot,
        width: 110,
        isVisible: false,
      ),
      col(
        'spreadDecayPerSec',
        loc.weaponsColumnSpreadDecay,
        (w) => w.spreadDecayPerSec,
        width: 110,
        isVisible: false,
      ),
      col(
        'autofireAccBonus',
        loc.weaponsColumnAfAccBonus,
        (w) => w.autofireAccBonus,
        width: 110,
        isVisible: false,
      ),
      col(
        'projSpeed',
        loc.weaponsColumnProjSpeed,
        (w) => w.projSpeed,
        width: 100,
        isVisible: false,
      ),
      col(
        'beamSpeed',
        loc.weaponsColumnBeamSpeed,
        (w) => w.beamSpeed,
        width: 100,
        isVisible: false,
      ),
      col(
        'launchSpeed',
        loc.weaponsColumnLaunchSpeed,
        (w) => w.launchSpeed,
        width: 110,
        isVisible: false,
      ),
      col(
        'flightTime',
        loc.weaponsColumnFlightTime,
        (w) => w.flightTime,
        width: 100,
        isVisible: false,
      ),
      col(
        'projHitpoints',
        loc.weaponsColumnProjHp,
        (w) => w.projHitpoints,
        width: 90,
        isVisible: false,
      ),
      col('turnRate', loc.weaponsColumnTurnRate, (w) => w.turnRate, width: 90),
      col('tier', loc.weaponsColumnTier, (w) => w.tier, width: 60),
      col(
        'rarity',
        loc.weaponsColumnRarity,
        (w) => w.rarity,
        width: 80,
        isVisible: false,
      ),
      col('hints', loc.weaponsColumnHints, (w) => w.hints, width: 150, isVisible: false),
      col('tags', loc.weaponsColumnTags, (w) => w.tags, width: 150, isVisible: false),
      col(
        'groupTag',
        loc.weaponsColumnGroupTag,
        (w) => w.groupTag,
        width: 120,
        isVisible: false,
      ),
    ];
  }

  Widget _buildOverflowButton({
    required BuildContext context,
    required ThemeData theme,
    required WeaponsPageState controllerState,
  }) {
    final controller = ref.read(weaponsPageControllerProvider.notifier);
    final loc = AppLocalizations.of(context);
    return OverflowMenuButton(
      menuItems: [
        OverflowMenuItem(
          title: loc.hullmodsExportToCsv,
          icon: Icons.table_view,
          onTap: () {
            if (_gridController == null) return;

            showExportOrCopyDialog(
              context,
              "weapon",
              () => WispGridCsvExporter.toCsv(
                _gridController!,
                includeHeaders: true,
              ),
              () => weaponsAsCsv(
                ref
                        .read(
                          weaponListNotifierProvider(
                            ref
                                .read(weaponsPageControllerProvider.notifier)
                                .showEnabled,
                          ),
                        )
                        .value ??
                    const [],
              ),
            );
          },
        ).toEntry(0),
        OverflowMenuCheckItem(
          title: loc.hullmodsStretchIconsToFit,
          icon: Icons.fit_screen,
          checked: controllerState.useContainFit,
          onTap: () => controller.toggleUseContainFit(),
        ).toEntry(1),
        OverflowMenuCheckItem(
          title: loc.weaponsAlwaysShowWeaponGlow,
          icon: Icons.auto_awesome,
          checked: controllerState.alwaysShowGlow,
          onTap: () => controller.toggleAlwaysShowGlow(),
        ).toEntry(2),
      ],
    );
  }
}

class UngroupedWeaponGridGroup extends WispGridGroup<Weapon> {
  UngroupedWeaponGridGroup()
    : super('none', AppLocalizationsSync.instance.codexNone);

  @override
  String getGroupName(Weapon mod, {Comparable? groupSortValue}) =>
      AppLocalizationsSync.instance.weaponsGroupAllWeapons;

  @override
  Comparable getGroupSortValue(Weapon mod) => 1;

  @override
  bool get isGroupVisible => false;
}

class ModNameWeaponGridGroup extends WispGridGroup<Weapon> {
  ModNameWeaponGridGroup()
    : super('modId', AppLocalizationsSync.instance.codexMod);

  @override
  String getGroupName(Weapon mod, {Comparable? groupSortValue}) =>
      mod.modVariant?.modInfo.nameOrId ??
      AppLocalizationsSync.instance.vanillaShareBarVanilla;

  @override
  Comparable getGroupSortValue(Weapon mod) =>
      mod.modVariant?.modInfo.nameOrId.toLowerCase() ?? '        ';
}
