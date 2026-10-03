import 'dart:io';

import 'package:material_ui/material_ui.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/weapon_viewer/models/weapon.dart';
import 'package:trios/weapon_viewer/widgets/weapon_codex_card.dart';
import 'package:trios/widgets/dialog_pager.dart';
import 'package:trios/widgets/merge_mod_sources_view.dart';
import 'package:trios/widgets/mod_data_file_menu.dart';
import 'package:trios/widgets/moving_tooltip.dart';
import 'package:trios/widgets/text_trios.dart';

/// Shows the full weapon details dialog — the same dialog opened by clicking a
/// row in the Weapons viewer. Extracted here so the Codex can open it too.
///
/// Pass [siblings] (the weapons in display order) to get Previous/Next paging
/// in the dialog. With no list, the dialog shows just [w] with no paging.
void showWeaponDetailsDialog(
  BuildContext context,
  Weapon w, {
  List<Weapon>? siblings,
}) {
  final items = (siblings != null && siblings.any((other) => other.id == w.id))
      ? siblings
      : [w];
  final startIndex = items.indexWhere((other) => other.id == w.id);

  showDialog(
    context: context,
    builder: (ctx) {
      return Dialog(
        clipBehavior: Clip.antiAlias,
        insetPadding: const EdgeInsets.all(16),
        child: DialogPager<Weapon>(
          items: items,
          startIndex: startIndex,
          itemBuilder: (ctx, weapon, pagerControls) =>
              buildWeaponDetailsDialogBody(
                ctx,
                weapon,
                pagerControls: pagerControls,
              ),
        ),
      );
    },
  );
}

/// The weapon dialog's contents for one weapon. [pagerControls] is the
/// Previous/Next button pair from [DialogPager]; it sits in the top-right
/// corner, left of the Close icon.
Widget buildWeaponDetailsDialogBody(
  BuildContext context,
  Weapon w, {
  Widget pagerControls = const SizedBox.shrink(),
}) {
  final theme = Theme.of(context);
  final loc = AppLocalizations.of(context);

  return SelectionArea(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: SingleChildScrollView(
        child: Padding(
          padding: const .all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildInfoPane(w, theme, context, pagerControls),
              const SizedBox(height: 12),
              Row(
                children: [
                  Wrap(
                    spacing: 4,
                    children: [
                      buildOpenModDataFileButton(
                        context,
                        w.wpnFiles,
                        label: loc.weaponsOpenWpnFile,
                      ),
                      buildOpenModDataFileButton(
                        context,
                        w.csvFiles,
                        label: loc.weaponsOpenWeaponDataCsv,
                        notes: ModDataFileNotes.oneWins,
                      ),
                      if (w.allSpriteFiles.isNotEmpty)
                        MovingTooltipWidget.text(
                          message: loc.weaponsOpenWeaponDataFolder,
                          child: IconButton(
                            icon: const Icon(Icons.folder),
                            onPressed: () {
                              w.csvFile?.parent.path.openAsUriInBrowser();
                              final wpnParent = w.wpnFile?.parent;
                              if (wpnParent != null &&
                                  wpnParent.path != w.csvFile?.parent.path) {
                                wpnParent.path.openAsUriInBrowser();
                              }
                            },
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

Column _buildInfoPane(
  Weapon w,
  ThemeData theme,
  BuildContext context,
  Widget pagerControls,
) {
  final loc = AppLocalizations.of(context);
  final imagePaths = w.allSpriteFiles;

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
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  w.name ?? w.id,
                  style: theme.textTheme.titleLarge?.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(w.id, style: theme.textTheme.labelSmall),
              ],
            ),
          ),
          pagerControls,
          IconButton(
            tooltip: AppLocalizations.of(context).catalogClose,
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Wrap(
        spacing: 8,
        runSpacing: 8,
        // Every path here has already been matched to a real file, so there's
        // nothing to check before drawing it.
        children: imagePaths
            .map(
              (path) => GestureDetector(
                onTap: () => path.toFile().showInExplorer(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MovingTooltipWidget.image(
                      path: path,
                      child: Image.file(
                        File(path),
                        width: 56,
                        height: 56,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: 56,
                      child: TextTriOS(
                        path.split(Platform.pathSeparator).last,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
      const SizedBox(height: 8),
      WeaponCodexCard.create(
        weapon: w,
        showTitle: false,
        useAbbreviations: false,
      ),
      Divider(color: Theme.of(context).colorScheme.outline),
      Padding(
        padding: const .only(bottom: 8),
        child: mergeModSourcesView(
          w.modSources,
          theme,
          fileLabel: AppLocalizations.of(context).weaponsWeaponFile,
          fallbackName:
              w.modVariant?.modInfo.nameOrId ??
              AppLocalizations.of(context).vanillaShareBarVanilla,
        ),
      ),
      _kv(loc.weaponDetailsLabelType, w.weaponType?.toTitleCase(), theme),
      _kv(loc.weaponsColumnSize, w.size?.toTitleCase(), theme),
      _kv(loc.weaponsColumnTechManufacturer, w.techManufacturer, theme),
      _kv(loc.weaponsColumnSpecClass, w.specClass, theme),
      _kv(loc.weaponDetailsRawType, w.type, theme),
      // Combat
      section(loc.weaponDetailsSectionCombat),
      Wrap(
        runSpacing: 6,
        children: [
          _chip(loc.weaponsColumnDmgShot, _fmtNum(w.damagePerShot)),
          _chip(loc.weaponsColumnDmgSec, _fmtNum(w.damagePerSecond)),
          _chip(loc.weaponsColumnEmp, _fmtNum(w.emp)),
          _chip(loc.weaponsColumnImpact, _fmtNum(w.impact)),
          _chip(loc.weaponsColumnRange, _fmtNum(w.range)),
          _chip(loc.weaponsColumnTurnRate, _fmtNum(w.turnRate)),
          _chip(loc.weaponsColumnOp, _fmtNum(w.ops)),
        ],
      ),
      // Fire Mechanics
      section(loc.weaponDetailsSectionFireMechanics),
      Wrap(
        runSpacing: 6,
        children: [
          _chip(loc.weaponsColumnAmmo, _fmtNum(w.ammo)),
          _chip(loc.weaponsColumnAmmoSec, _fmtNum(w.ammoPerSec)),
          _chip(loc.weaponsColumnReloadSize, _fmtNum(w.reloadSize)),
          _chip(loc.weaponDetailsEnergyShot, _fmtNum(w.energyPerShot)),
          _chip(loc.weaponDetailsEnergySec, _fmtNum(w.energyPerSecond)),
          _chip(loc.weaponsColumnChargeup, _fmtNum(w.chargeup)),
          _chip(loc.weaponsColumnChargedown, _fmtNum(w.chargedown)),
          _chip(loc.weaponsColumnBurstSize, _fmtNum(w.burstSize)),
          _chip(loc.weaponsColumnBurstDelay, _fmtNum(w.burstDelay)),
        ],
      ),
      // Accuracy & Spread
      section(loc.weaponDetailsSectionAccuracySpread),
      Wrap(
        runSpacing: 6,
        children: [
          _chip(loc.weaponsColumnMinSpread, _fmtNum(w.minSpread)),
          _chip(loc.weaponsColumnMaxSpread, _fmtNum(w.maxSpread)),
          _chip(loc.weaponsColumnSpreadShot, _fmtNum(w.spreadPerShot)),
          _chip(loc.weaponDetailsSpreadDecaySec, _fmtNum(w.spreadDecayPerSec)),
          _chip(loc.weaponsColumnAfAccBonus, _fmtNum(w.autofireAccBonus)),
          if ((w.extraArcForAI ?? 0) > 0)
            _chip(loc.weaponDetailsExtraArcAi, _fmtNum(w.extraArcForAI)),
        ],
      ),
      // Projectile
      section(loc.weaponDetailsSectionProjectile),
      Wrap(
        runSpacing: 6,
        children: [
          _chip(loc.weaponsColumnBeamSpeed, _fmtNum(w.beamSpeed)),
          _chip(loc.weaponsColumnProjSpeed, _fmtNum(w.projSpeed)),
          _chip(loc.weaponsColumnLaunchSpeed, _fmtNum(w.launchSpeed)),
          _chip(loc.weaponsColumnFlightTime, _fmtNum(w.flightTime)),
          _chip(loc.weaponsColumnProjHp, _fmtNum(w.projHitpoints)),
        ],
      ),
      // Misc
      section(loc.weaponDetailsSectionMisc),
      Wrap(
        runSpacing: 6,
        children: [
          _chip(loc.weaponsColumnTier, _fmtNum(w.tier)),
          _chip(loc.weaponsColumnRarity, _fmtNum(w.rarity)),
          _chip(loc.shipDetailsBaseValue, w.baseValue.asCredits()),
          if (w.noDPSInTooltip == true)
            _chip(loc.weaponDetailsNoDpsInTooltip, loc.weaponDetailsYes),
          if ((w.hints ?? '').isNotEmpty) _chip(loc.weaponDetailsHints, w.hints!),
          if ((w.tags ?? '').isNotEmpty) _chip(loc.weaponDetailsTags, w.tags!),
          if ((w.groupTag ?? '').isNotEmpty)
            _chip(loc.weaponsColumnGroupTag, w.groupTag!),
          if ((w.forWeaponTooltip ?? '').isNotEmpty)
            _chip(loc.weaponDetailsForWeaponTooltip, w.forWeaponTooltip!),
          if ((w.primaryRoleStr ?? '').isNotEmpty)
            _chip(loc.weaponDetailsPrimaryRole, w.primaryRoleStr!),
          if ((w.speedStr ?? '').isNotEmpty)
            _chip(loc.weaponsColumnSpeed, w.speedStr!),
          if ((w.trackingStr ?? '').isNotEmpty)
            _chip(loc.weaponsColumnTracking, w.trackingStr!),
          if ((w.turnRateStr ?? '').isNotEmpty)
            _chip(loc.weaponDetailsTurnRateTxt, w.turnRateStr!),
          if ((w.accuracyStr ?? '').isNotEmpty)
            _chip(loc.weaponsColumnAccuracy, w.accuracyStr!),
        ],
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
