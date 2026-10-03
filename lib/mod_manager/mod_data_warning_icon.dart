import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/mod_manager/mod_data_issues.dart';
import 'package:trios/thirdparty/flutter_context_menu/flutter_context_menu.dart';
import 'package:trios/trios/constants_theme.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/widgets/moving_tooltip.dart';
import 'package:trios/widgets/snackbar.dart';

/// Small warning icon shown when a mod has data issues.
/// Hover lists the issues; click opens a dialog with details.
/// Right-click offers to turn the warnings off.
class ModDataWarningIcon extends ConsumerWidget {
  final String modName;
  final List<ModDataIssue> issues;

  const ModDataWarningIcon({
    super.key,
    required this.modName,
    required this.issues,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (issues.isEmpty) return const SizedBox.shrink();
    final loc = AppLocalizations.of(context);

    return ContextMenuRegion(
      contextMenu: ContextMenu(
        entries: [
          MenuItem(
            label: loc.modManagerHideModDataWarnings,
            icon: Icons.visibility_off,
            onSelected: () {
              ref
                  .read(appSettings.notifier)
                  .update((s) => s.copyWith(modsGridShowDataWarnings: false));
              showSnackBar(
                context: context,
                content: Text(
                  loc.modDataWarningIconWarningsHidden,
                ),
              );
            },
          ),
        ],
        padding: const .all(8.0),
      ),
      child: MovingTooltipWidget.text(
        message: issues.map((issue) => issue.summary).join("\n"),
        warningLevel: TooltipWarningLevel.warning,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (context) =>
                  _ModDataIssuesDialog(modName: modName, issues: issues),
            ),
            child: const Icon(
              Icons.sim_card_alert_outlined,
              size: 16,
              color: TriOSThemeConstants.vanillaWarningColor,
            ),
          ),
        ),
      ),
    );
  }
}

class _ModDataIssuesDialog extends StatelessWidget {
  final String modName;
  final List<ModDataIssue> issues;

  const _ModDataIssuesDialog({required this.modName, required this.issues});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(loc.modManagerDataIssuesIn(modName)),
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            for (final issue in issues)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4.0,
                children: [
                  Text(
                    issue.summary,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (issue.detail != null)
                    Text(issue.detail!, style: theme.textTheme.bodySmall),
                ],
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(loc.commonClose),
        ),
      ],
    );
  }
}
