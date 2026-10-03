import 'package:material_ui/material_ui.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// Small "Skin" tag shown next to a ship's name when it came from a `.skin`
/// file. Used on the Ships page grid and in the Codex list.
class ShipSkinBadge extends StatelessWidget {
  const ShipSkinBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    return Container(
      padding: const .symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: MovingTooltipWidget.text(
        message: loc.shipsSkinBadgeTooltip,
        child: Text(
          loc.shipsSkin,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
