import 'dart:io';

import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/faction_viewer/models/faction.dart';
import 'package:trios/faction_viewer/spawn_weights/spawn_weight_calculator.dart';
import 'package:trios/faction_viewer/spawn_weights/vanilla_share_bar.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/widgets/moving_tooltip.dart';
import 'package:trios/widgets/text_trios.dart';

class FactionCard extends ConsumerWidget {
  final Faction faction;
  final Directory? gameCoreDir;
  final VoidCallback onTap;

  /// Leave weights added by mods that aren't enabled out of the spawn share.
  final bool onlyEnabledMods;

  const FactionCard({
    super.key,
    required this.faction,
    required this.gameCoreDir,
    required this.onTap,
    this.onlyEnabledMods = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = AppLocalizations.of(context);
    final factionColor = faction.factionColor;
    final theme = Theme.of(context);
    final spawnReady = ref.watch(spawnWeightsReadyProvider(onlyEnabledMods));
    final summary =
        ref.watch(
          factionSpawnSummariesProvider(onlyEnabledMods),
        )[faction.mergeKey] ??
        FactionSpawnSummary.empty;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            // Faction color accent bar at top.
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(height: 4, color: factionColor),
            ),
            Padding(
              padding: .fromLTRB(12, 12, 12, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _buildLogo(gameCoreDir),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              faction.displayName,
                              style: theme.textTheme.titleMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (faction.shipNamePrefix != null)
                              Text(
                                faction.shipNamePrefix!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (faction.doctrine != null) ...[
                    const SizedBox(height: 4),
                    _buildDoctrineRow(theme, loc),
                    const SizedBox(height: 4),
                  ],
                  const Spacer(),
                  _buildStatsRow(theme, loc),
                  Padding(
                    padding: .only(top: 4),
                    child: Row(
                      crossAxisAlignment: .center,
                      spacing: 4,
                      children: [
                        MovingTooltipWidget.text(
                          message: loc.factionCardFleetWeightsTooltip,
                          child: Text(
                            loc.factionCardFleetWeights,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        Expanded(
                          child: spawnReady
                              ? Padding(
                                  padding: const .only(top: 1),
                                  child: VanillaShareBar(
                                    summary: summary,
                                    factionColor: factionColor,
                                    factionName: faction.displayName,
                                  ),
                                )
                              : Text(
                                  loc.factionCardCalculatingFleetWeights,
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: .only(top: 4),
                    child: MovingTooltipWidget.text(
                      message: faction.attributionTooltip,
                      child: TextTriOS(
                        _sourceLine(loc),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        tooltipMaxWidth: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// One-line source summary: who added the faction, plus how many other
  /// mods change it. Full breakdown lives in the tooltip.
  String _sourceLine(AppLocalizations loc) {
    final adder = faction.addedBy;
    if (adder == null) {
      return faction.sources.isEmpty ? '' : loc.factionViewerPatchOnly;
    }
    final modCount = faction.modifiedBy.length;
    if (modCount == 0) return adder.name;
    final name = adder.name;
    return modCount == 1
        ? loc.factionCardModsAddedOne(name, modCount)
        : loc.factionCardModsAddedMany(name, modCount);
  }

  Widget _buildLogo(Directory? gameCoreDir) {
    final logoFile = faction.resolveImageFile(faction.logo, gameCoreDir);
    if (logoFile == null) {
      return const SizedBox(
        width: 40,
        height: 40,
        child: Icon(Icons.flag, size: 24),
      );
    }
    return _logoImage(logoFile);
  }

  Widget _logoImage(File file) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Image.file(
        file,
        fit: BoxFit.contain,
        errorBuilder: (_, _, _) => const Icon(Icons.flag, size: 24),
      ),
    );
  }

  Widget _buildDoctrineRow(ThemeData theme, AppLocalizations loc) {
    final d = faction.doctrine!;
    final factionColor = faction.factionColor;
    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: [
        _doctrineStat(
          loc.factionCardWar,
          loc.factionDoctrineWarships,
          d.warships,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardCarr,
          loc.factionDoctrineCarriers,
          d.carriers,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardPhse,
          loc.factionDoctrinePhaseShips,
          d.phaseShips,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardOffQ,
          loc.factionDoctrineOfficerQuality,
          d.officerQuality,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardShpQ,
          loc.factionDoctrineShipQuality,
          d.shipQuality,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardFleet,
          loc.factionDoctrineFleetSize,
          d.numShips,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardShpNum,
          loc.factionDoctrineShipSize,
          d.shipSize,
          factionColor,
          theme,
          loc,
        ),
        _doctrineStat(
          loc.factionCardAggr,
          loc.factionDoctrineAggression,
          d.aggression,
          factionColor,
          theme,
          loc,
        ),
      ],
    );
  }

  Widget _doctrineStat(
    String label,
    String tooltip,
    int value,
    Color factionColor,
    ThemeData theme,
    AppLocalizations loc,
  ) {
    return MovingTooltipWidget.text(
      message: loc.factionCardDoctrineTooltip(tooltip, value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: .start,
        children: [
          _buildPips(value, 5, factionColor, theme),
          const SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPips(int value, int max, Color color, ThemeData theme) {
    const gap = 1.0;
    final filledColor = color.withValues(alpha: 0.9);
    final emptyColor = theme.colorScheme.onSurface.withValues(alpha: 0.15);

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: gap,
      children: List.generate(max, (i) {
        return Container(
          width: 3,
          height: 4,
          decoration: BoxDecoration(
            color: i < value ? filledColor.withAlpha(200) : emptyColor,
            borderRadius: BorderRadius.circular(1),
          ),
        );
      }),
    );
  }

  Widget _buildStatsRow(ThemeData theme, AppLocalizations loc) {
    return Wrap(
      spacing: 12,
      alignment: WrapAlignment.start,
      children: [
        _stat(loc, loc.factionCardStatShips, faction.knownShipIds.length, theme),
        _stat(loc, loc.factionCardStatWpns, faction.knownWeaponIds.length, theme),
        _stat(loc, loc.factionCardStatMods, faction.knownHullModIds.length, theme),
      ],
    );
  }

  Widget _stat(AppLocalizations loc, String label, int value, ThemeData theme) {
    return Text(
      loc.commonLabelValue(label, value.toString()),
      style: theme.textTheme.labelSmall?.copyWith(
        fontFeatures: [const FontFeature.tabularFigures()],
      ),
    );
  }
}
