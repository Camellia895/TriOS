import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/sector_map/finder/finder_catalog.dart';
import 'package:trios/sector_map/finder/finder_criteria.dart';
import 'package:trios/sector_map/models/sector.dart';
import 'package:trios/sector_map/sector_map_controller.dart';
import 'package:trios/widgets/checkbox_with_label.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// The finder's knob panel: presets, resource floors+weights, hard toggles,
/// landmark proximity, soft preferences, and the modded-condition escape hatch.
class FinderPanel extends ConsumerWidget {
  final Sector sector;

  const FinderPanel({super.key, required this.sector});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final criteria = ref.watch(
      sectorMapControllerProvider.select((s) => s.criteria),
    );
    final controller = ref.read(sectorMapControllerProvider.notifier);
    void update(FinderCriteria c) => controller.setCriteria(c);

    final landmarkTypesPresent =
        sector.landmarks.map((l) => l.typeId).toSet();
    final otherIds = otherConditionIds(sector);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _sectionHeader(theme, loc.finderPresets),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final preset in kFinderPresets)
              OutlinedButton(
                onPressed: () => update(preset.criteria),
                child: Text(preset.name),
              ),
            MovingTooltipWidget.text(
              message: loc.finderClearAllKnobs,
              child: TextButton.icon(
                onPressed: () => update(const FinderCriteria()),
                icon: const Icon(Icons.clear, size: 16),
                label: Text(loc.finderReset),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),
        _sectionHeader(theme, loc.finderResources),
        Text(
          loc.finderFloorWeightHint,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: 8),
        for (final family in kResourceFamilies)
          _ResourceRow(
            family: family,
            criterion:
                criteria.resources[family.id] ?? const ResourceCriterion(),
            onChanged: (rc) {
              final next = Map<String, ResourceCriterion>.from(
                criteria.resources,
              )..[family.id] = rc;
              update(criteria.copyWith(resources: next));
            },
          ),

        const SizedBox(height: 16),
        _sectionHeader(theme, loc.finderMustHave),
        CheckboxWithLabel(
          label: loc.finderHabitableWorld,
          value: criteria.mustBeHabitable,
          onChanged: (v) =>
              update(criteria.copyWith(mustBeHabitable: v ?? false)),
        ),
        CheckboxWithLabel(
          label: loc.finderGasGiantForVolatiles,
          value: criteria.mustHaveGasGiant,
          onChanged: (v) =>
              update(criteria.copyWith(mustHaveGasGiant: v ?? false)),
        ),
        MovingTooltipWidget.text(
          message: loc.finderSkipSystemsWithFactionColony,
          child: CheckboxWithLabel(
            label: loc.finderUnclaimedOnly,
            value: criteria.excludeColonized,
            onChanged: (v) =>
                update(criteria.copyWith(excludeColonized: v ?? false)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            spacing: 12,
            children: [
              Expanded(child: Text(loc.finderMinStableLocations)),
              DropdownButton<int>(
                value: criteria.minStableLocations,
                onChanged: (v) =>
                    update(criteria.copyWith(minStableLocations: v ?? 0)),
                items: [
                  for (var i = 0; i <= 4; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(i == 0 ? loc.finderAny : '$i+'),
                    ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),
        _sectionHeader(theme, loc.finderNearALandmark),
        for (final entry in kLandmarkLabels.entries)
          CheckboxWithLabel(
            label: landmarkTypesPresent.contains(entry.key)
                ? entry.value
                : loc.finderLandmarkNoneInSave(entry.value),
            value: criteria.landmarkNearby[entry.key] ?? false,
            onChanged: landmarkTypesPresent.contains(entry.key)
                ? (v) {
                    final next = Map<String, bool>.from(criteria.landmarkNearby)
                      ..[entry.key] = v ?? false;
                    update(criteria.copyWith(landmarkNearby: next));
                  }
                : (_) {},
          ),
        if (criteria.requiredLandmarks.isNotEmpty)
          _LabeledSlider(
            label: loc.finderWithin,
            valueLabel: '${criteria.nearbyRangeLy.round()} LY',
            value: criteria.nearbyRangeLy,
            min: 2,
            max: 30,
            divisions: 28,
            onChanged: (v) => update(criteria.copyWith(nearbyRangeLy: v)),
          ),

        const SizedBox(height: 16),
        _sectionHeader(theme, loc.finderPreferences),
        _LabeledSlider(
          label: loc.finderPreferLowHazard,
          valueLabel: _weightLabel(criteria.lowHazardWeight),
          value: criteria.lowHazardWeight,
          min: 0,
          max: 1,
          onChanged: (v) => update(criteria.copyWith(lowHazardWeight: v)),
        ),
        _LabeledSlider(
          label: loc.finderPreferCloseToCore,
          valueLabel: _weightLabel(criteria.closeToCoreWeight),
          value: criteria.closeToCoreWeight,
          min: 0,
          max: 1,
          onChanged: (v) => update(criteria.copyWith(closeToCoreWeight: v)),
        ),

        if (otherIds.isNotEmpty) ...[
          const SizedBox(height: 8),
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            title: Text(
              loc.finderOtherConditions(otherIds.length),
              style: theme.textTheme.titleSmall,
            ),
            subtitle: Text(
              loc.finderUncuratedConditions,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            children: [
              for (final id in otherIds)
                CheckboxWithLabel(
                  label: id,
                  value: criteria.otherConditionToggles[id] ?? false,
                  onChanged: (v) {
                    final next = Map<String, bool>.from(
                      criteria.otherConditionToggles,
                    )..[id] = v ?? false;
                    update(criteria.copyWith(otherConditionToggles: next));
                  },
                ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _sectionHeader(ThemeData theme, String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(text, style: theme.textTheme.titleSmall),
  );
}

String _weightLabel(double w) => w <= 0 ? 'off' : '${(w * 100).round()}%';

/// Localized display name for a resource family. The English labels live on
/// [ResourceFamily] (a const data structure); resolve them at display time.
String resourceFamilyLabel(AppLocalizations loc, ResourceFamily family) {
  switch (family.id) {
    case 'ore':
      return loc.finderCatalogOre;
    case 'rare_ore':
      return loc.finderCatalogRareOre;
    case 'organics':
      return loc.finderCatalogOrganics;
    case 'volatiles':
      return loc.finderCatalogVolatiles;
    case 'farmland':
      return loc.finderCatalogFarmland;
  }
  return family.label;
}

class _ResourceRow extends StatelessWidget {
  final ResourceFamily family;
  final ResourceCriterion criterion;
  final ValueChanged<ResourceCriterion> onChanged;

  const _ResourceRow({
    required this.family,
    required this.criterion,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        spacing: 8,
        children: [
          SizedBox(width: 80, child: Text(resourceFamilyLabel(loc, family))),
          // Min-tier floor (hard).
          MovingTooltipWidget.text(
            message: loc.finderHardCutoffAtLeast,
            child: DropdownButton<int?>(
              value: criterion.minTier,
              hint: Text(loc.finderAny),
              onChanged: (v) => onChanged(
                ResourceCriterion(minTier: v, weight: criterion.weight),
              ),
              items: [
                DropdownMenuItem(value: null, child: Text(loc.finderAny)),
                for (var t = 1; t <= family.maxTier; t++)
                  DropdownMenuItem(
                    value: t,
                    child: Text(family.tierLabels[t - 1]),
                  ),
              ],
            ),
          ),
          // Weight (soft).
          Expanded(
            child: MovingTooltipWidget.text(
              message: loc.finderWeightLabel(
                _weightLabel(criterion.weight),
              ),
              child: Slider(
                value: criterion.weight,
                onChanged: (v) => onChanged(
                  ResourceCriterion(minTier: criterion.minTier, weight: v),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LabeledSlider extends StatelessWidget {
  final String label;
  final String valueLabel;
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final ValueChanged<double> onChanged;

  const _LabeledSlider({
    required this.label,
    required this.valueLabel,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.divisions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 8,
      children: [
        SizedBox(width: 140, child: Text(label)),
        Expanded(
          child: Slider(
            value: value.clamp(min, max),
            min: min,
            max: max,
            divisions: divisions,
            onChanged: onChanged,
          ),
        ),
        SizedBox(
          width: 48,
          child: Text(
            valueLabel,
            textAlign: TextAlign.end,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
