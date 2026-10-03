import 'package:material_ui/material_ui.dart';
import 'package:open_filex/open_filex.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/mod_manager/mod_manager_logic.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/utils/dialogs.dart';

/// Dialog for displaying mod installation errors.
///
/// Shows a list of failed mod installations with:
/// - Error message for each failed mod
/// - Buttons to open the mod file location
/// - Button to open the Starsector mods folder
/// - Instructions to check logs for more details
class ModInstallationErrorDialog extends StatelessWidget {
  final List<InstallModResult> errors;

  const ModInstallationErrorDialog({
    super.key,
    required this.errors,
  });

  /// Shows the error dialog with a list of failed installations.
  static Future<void> show(
    BuildContext context,
    List<InstallModResult> errors,
  ) {
    return showAlertDialog(
      context,
      title: AppLocalizations.of(context).modInstallationErrorDialogError,
      widget: ModInstallationErrorDialog(errors: errors),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: errors.length == 1
                    ? loc.modInstallationErrorDialogThereWasAnError
                    : loc.modInstallationErrorDialogThereWereErrorsWhile,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: loc.modInstallationErrorDialogCheckLogs(Constants.appName),
              ),
            ],
          ),
        ),
        ...errors.map((failedMod) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline),
                  const SizedBox(width: 8),
                  Text(
                    "${failedMod.modInfo.name} ${failedMod.modInfo.version}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        OpenFilex.open(
                          failedMod.sourceFileEntity.parent.path,
                        );
                      },
                      child: Text(loc.modInstallationErrorDialogShowModFile),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      onPressed: () {
                        OpenFilex.open(
                          failedMod.destinationFolder.path,
                        );
                      },
                      child: Text(
                        loc.modInstallationErrorDialogOpenStarsectorModsFolder,
                      ),
                    ),
                  ],
                ),
              ),
              SelectableText(
                "${failedMod.err}\n",
                style: theme.textTheme.bodySmall,
              ),
            ],
          );
        }),
      ],
    );
  }
}
