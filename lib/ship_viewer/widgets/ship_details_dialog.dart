import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/ship_viewer/models/ship.dart';
import 'package:trios/ship_viewer/ships_page_controller.dart';
import 'package:trios/ship_viewer/widgets/ship_blueprint_view.dart';
import 'package:trios/ship_viewer/widgets/ship_codex_card.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/widgets/dialog_pager.dart';
import 'package:trios/widgets/merge_mod_sources_view.dart';
import 'package:trios/widgets/mod_data_file_menu.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// Shows the full ship details dialog — the same dialog opened by clicking a
/// row in the Ships viewer. Extracted here so the Codex can open it too.
///
/// Pass [siblings] (the ships in display order) to get Previous/Next paging
/// in the dialog. With no list, the dialog shows just [s] with no paging.
void showShipDetailsDialog(
  BuildContext context,
  WidgetRef ref,
  Ship s, {
  List<Ship>? siblings,
}) {
  final items = (siblings != null && siblings.any((other) => other.id == s.id))
      ? siblings
      : [s];
  final startIndex = items.indexWhere((other) => other.id == s.id);

  showDialog(
    context: context,
    builder: (ctx) {
      return Dialog(
        clipBehavior: Clip.antiAlias,
        insetPadding: const EdgeInsets.all(32),
        child: DialogPager<Ship>(
          items: items,
          startIndex: startIndex,
          itemBuilder: (ctx, ship, pagerControls) => buildShipDetailsDialogBody(
            ctx,
            ref,
            ship,
            pagerControls: pagerControls,
          ),
        ),
      );
    },
  );
}

/// The ship dialog's contents for one ship. [pagerControls] is the
/// Previous/Next button pair from [DialogPager]; it sits in the top-right
/// corner, left of the Close icon.
Widget buildShipDetailsDialogBody(
  BuildContext context,
  WidgetRef ref,
  Ship s, {
  Widget pagerControls = const SizedBox.shrink(),
}) {
  final theme = Theme.of(context);
  final loc = AppLocalizations.of(context);
  final skinFileType = s.isSkin ? '.skin' : '.ship';

  return SelectionArea(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1050),
      child: SingleChildScrollView(
        child: Padding(
          padding: const .all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildShipInfoPane(
                context,
                s,
                theme,
                ref.read(shipsPageControllerProvider),
                pagerControls,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Wrap(
                    spacing: 4,
                    children: [
                      buildOpenModDataFileButton(
                        context,
                        s.dataFiles,
                        label: loc.shipsOpenShipOrSkinFile(skinFileType),
                      ),
                      buildOpenModDataFileButton(
                        context,
                        s.csvFiles,
                        label: loc.shipsOpenShipDataCsv,
                        notes: ModDataFileNotes.oneWins,
                      ),
                      if (s.spriteFile != null)
                        MovingTooltipWidget.text(
                          message: loc.modInfoDialogOpenFolder,
                          child: IconButton(
                            icon: const Icon(Icons.folder),
                            onPressed: () => s.spriteFile!
                                .toFile()
                                .parent
                                .path
                                .openAsUriInBrowser(),
                          ),
                        ),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(loc.catalogClose),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildShipInfoPane(
  BuildContext context,
  Ship s,
  ThemeData theme,
  ShipsPageState controllerState,
  Widget pagerControls,
) {
  final loc = AppLocalizations.of(context);
  Widget section(String title) => Padding(
    padding: const EdgeInsets.only(top: 12, bottom: 4),
    child: Text(
      title,
      style: theme.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.primary,
      ),
    ),
  );

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  s.hullNameForDisplay(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (s.designation != null &&
                    s.designation != s.hullNameForDisplay())
                  Text(
                    s.designation!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.textTheme.bodySmall?.color?.withValues(
                        alpha: 0.80,
                      ),
                    ),
                  ),
                Text(s.id, style: theme.textTheme.labelSmall),
                if (s.isSkin && s.baseHullId != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Row(
                      spacing: 4,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            loc.shipsSkin,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                        ),
                        Text(
                          loc.shipsSkinOf(
                            controllerState.hullNameById(s.baseHullId!),
                          ),
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          pagerControls,
          IconButton(
            tooltip: loc.catalogClose,
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      const SizedBox(height: 8),
      if (s.weaponSlots != null &&
          s.weaponSlots!.isNotEmpty &&
          s.spriteFile != null)
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 140),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // The blueprint pans and zooms on drag, so keep text
                // selection out of it.
                child: SelectionContainer.disabled(
                  child: ShipBlueprintView(ship: s),
                ),
              ),
            ),
          ),
        ),
      ShipCodexCard.create(
        ship: s,
        shipSystemsMap: controllerState.shipSystemsMap,
        weaponsMap: controllerState.weaponsMap,
        hullmodsMap: controllerState.hullmodsMap,
        showTitle: false,
        showSprite: false,
        useAbbreviations: false,
      ),
      const SizedBox(height: 16),
      Padding(
        padding: const .only(bottom: 8),
        child: mergeModSourcesView(
          s.modSources,
          theme,
          fileLabel: loc.shipsShipFile,
          fallbackName:
              s.modVariant?.modInfo.nameOrId ?? loc.vanillaShareBarVanilla,
        ),
      ),
      _kv(loc.shipsFilterHullSize, s.hullSizeForDisplay(), theme),
      _kv(loc.shipsColumnStyle, s.style?.toTitleCase(), theme),
      _kv(
        loc.shipsColumnSystem,
        controllerState.shipSystemsMap[s.systemId ?? ""]?.name ?? s.systemId,
        theme,
      ),
      _kv(
        loc.shipDetailsLabelDefense,
        controllerState.shipSystemsMap[s.defenseId ?? ""]?.name ?? s.defenseId,
        theme,
      ),
      _kv(loc.shipsFilterTechManufacturer, s.techManufacturer, theme),
      Card.outlined(
        color: Colors.transparent,
        child: Padding(
          padding: const .symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              // Combat
              section(loc.shipDetailsSectionCombat),
              Wrap(
                runSpacing: 6,
                children: [
                  _chip(loc.shipsColumnFleetPts, _fmtNum(s.fleetPts)),
                  _chip(loc.shipsColumnHitpoints, _fmtNum(s.hitpoints)),
                  _chip(loc.shipsColumnArmor, _fmtNum(s.armorRating)),
                  _chip(loc.shipsColumnMaxFlux, _fmtNum(s.maxFlux)),
                  _chip(loc.shipsColumnFluxDiss, _fmtNum(s.fluxDissipation)),
                  _chip(loc.shipDetailsOrdnancePts, _fmtNum(s.ordnancePoints)),
                  _chip(loc.shipsColumnFighterBays, _fmtNum(s.fighterBays)),
                  _chip(
                    loc.shipDetailsWeapons,
                    _fmtNum(s.mountableWeaponSlotCount),
                  ),
                  _chip(
                    loc.shipsColumnBuiltInWpns,
                    _fmtNum(s.builtInWeapons?.length ?? 0),
                  ),
                  _chip(
                    loc.shipsColumnBuiltInMods,
                    _fmtNum(s.builtInMods?.length ?? 0),
                  ),
                  _chip(
                    loc.shipsColumnBuiltInWings,
                    _fmtNum(s.builtInWings?.length ?? 0),
                  ),
                ],
              ),
              // Shields / Phase
              if (s.shieldType != null) ...[
                section(loc.shipDetailsSectionShieldPhase),
                Wrap(
                  runSpacing: 6,
                  children: [
                    _chip(loc.shipsColumnShield, s.shieldType!.toTitleCase()),
                    _chip(loc.shipsColumnShieldArc, _fmtNum(s.shieldArc)),
                    _chip(
                      loc.shipsColumnShieldUpkeep,
                      _fmtNum(s.shieldUpkeep),
                    ),
                    _chip(
                      loc.shipDetailsShieldEfficiency,
                      _fmtNum(s.shieldEfficiency),
                    ),
                    _chip(loc.shipsColumnPhaseCost, _fmtNum(s.phaseCost)),
                    _chip(loc.shipsColumnPhaseUpkeep, _fmtNum(s.phaseUpkeep)),
                  ],
                ),
              ],
              // Mobility
              section(loc.shipDetailsSectionMobility),
              Wrap(
                runSpacing: 6,
                children: [
                  _chip(loc.shipsColumnMaxSpeed, _fmtNum(s.maxSpeed)),
                  _chip(loc.shipsSearchAcceleration, _fmtNum(s.acceleration)),
                  _chip(loc.shipsSearchDeceleration, _fmtNum(s.deceleration)),
                  _chip(loc.shipsColumnTurnRate, _fmtNum(s.maxTurnRate)),
                  _chip(loc.shipsColumnTurnAccel, _fmtNum(s.turnAcceleration)),
                  _chip(loc.shipsColumnMass, _fmtNum(s.mass)),
                ],
              ),
              // Crew & Logistics
              section(loc.shipDetailsSectionCrewLogistics),
              Wrap(
                runSpacing: 6,
                children: [
                  _chip(loc.shipsColumnMinCrew, _fmtNum(s.minCrew)),
                  _chip(loc.shipsColumnMaxCrew, _fmtNum(s.maxCrew)),
                  _chip(loc.shipsColumnCargo, _fmtNum(s.cargo)),
                  _chip(loc.shipsColumnFuel, _fmtNum(s.fuel)),
                  _chip(loc.shipsColumnFuelLy, _fmtNum(s.fuelPerLY)),
                  _chip(loc.shipsColumnRange, _fmtNum(s.range)),
                  _chip(loc.shipsColumnMaxBurn, _fmtNum(s.maxBurn)),
                  _chip(loc.shipsColumnSensorProfile, _fmtNum(s.sensorProfile)),
                  _chip(
                    loc.shipsColumnSensorStrength,
                    _fmtNum(s.sensorStrength),
                  ),
                ],
              ),
              // Economics & CR
              section(loc.shipDetailsSectionEconomicsCr),
              Wrap(
                runSpacing: 6,
                children: [
                  _chip(loc.shipDetailsBaseValue, s.baseValue.asCredits()),
                  _chip(loc.shipsColumnCrPerDay, _fmtNum(s.crPercentPerDay)),
                  _chip(loc.shipsColumnCrToDeploy, _fmtNum(s.crToDeploy)),
                  _chip(loc.shipDetailsPptSec, _fmtNum(s.peakCrSec)),
                  _chip(loc.shipsColumnCrLossSec, _fmtNum(s.crLossPerSec)),
                  _chip(loc.shipDetailsSuppliesMo, _fmtNum(s.suppliesMo)),
                  _chip(loc.shipsColumnDp, _fmtNum(s.deploymentPoints)),
                ],
              ),
              // Misc
              section(loc.shipDetailsSectionMisc),
              Wrap(
                runSpacing: 6,
                children: [
                  _chip(loc.shipsColumnRarity, s.rarity ?? '-'),
                  _chip(loc.shipsColumnBreakProb, s.breakProb ?? '-'),
                  _chip(loc.shipsColumnMinPieces, _fmtNum(s.minPieces)),
                  _chip(loc.shipsColumnMaxPieces, _fmtNum(s.maxPieces)),
                  _chip(loc.shipsColumnTravelDrive, s.travelDrive ?? '-'),
                  _chip(
                    loc.shipDetailsCollisionRadius,
                    _fmtNum(s.collisionRadius),
                  ),
                  if ((s.hints ?? []).isNotEmpty)
                    _chip(loc.shipDetailsHints, s.hints!.join(', ')),
                  if ((s.tags ?? []).isNotEmpty)
                    _chip(loc.shipDetailsTags, s.tags!.join(', ')),
                  if ((s.builtInMods ?? []).isNotEmpty)
                    _chip(loc.shipsColumnBuiltInMods, s.builtInMods!.join(', ')),
                  if ((s.builtInWings ?? []).isNotEmpty)
                    _chip(
                      loc.shipsColumnBuiltInWings,
                      s.builtInWings!.join(', '),
                    ),
                  if ((s.builtInWeapons ?? {}).isNotEmpty)
                    _chip(
                      loc.shipDetailsBuiltInWeapons,
                      s.builtInWeapons!.values.join(', '),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

String _fmtNum(num? n) => switch (n) {
  null => '-',
  double d => d.toStringAsFixed(d % 1 == 0 ? 0 : 2),
  _ => n.toString(),
};

Widget _kv(String? k, String? v, ThemeData theme) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Text.rich(
      TextSpan(
        style: theme.textTheme.bodySmall,
        children: [
          if (k != null) TextSpan(text: '$k: '),
          TextSpan(
            text: (v == null || v.isEmpty) ? '-' : v,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget _chip(String label, String value) {
  return Container(
    margin: const EdgeInsets.only(right: 4),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.05),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 11, color: Colors.white70),
        children: [
          TextSpan(
            text: '$label: ',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          TextSpan(text: value),
        ],
      ),
    ),
  );
}
