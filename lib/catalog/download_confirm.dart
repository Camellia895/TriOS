import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/trios/download_manager/download_manager.dart';

Future<bool> confirmAndDownloadMod(
  BuildContext context, {
  required String modName,
  required String downloadUrl,
  required VoidCallback onConfirm,
  bool skipDialog = false,
}) async {
  if (skipDialog) {
    onConfirm();
    return true;
  }

  final loc = AppLocalizations.of(context);
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(modName),
      content: Text(loc.catalogDownloadConfirmPrompt(modName)),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(loc.catalogCancel),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(loc.catalogDownload),
        ),
      ],
    ),
  );

  if (confirmed == true) {
    onConfirm();
    return true;
  }
  return false;
}

Future<bool> confirmAndDownloadModViaManager(
  BuildContext context,
  WidgetRef ref, {
  required String modName,
  required String downloadUrl,
  bool activateVariantOnComplete = false,
  bool skipDialog = false,
  DownloadSourceHint? sourceHint,
}) {
  return confirmAndDownloadMod(
    context,
    modName: modName,
    downloadUrl: downloadUrl,
    skipDialog: skipDialog,
    onConfirm: () {
      ref
          .read(downloadManager.notifier)
          .downloadAndInstallMod(
            modName,
            downloadUrl,
            activateVariantOnComplete: activateVariantOnComplete,
            sourceHint: sourceHint,
          );
    },
  );
}
