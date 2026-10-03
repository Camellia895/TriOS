import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/models/mod.dart';
import 'package:trios/models/version_checker_info.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/trios/constants_theme.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/widgets/svg_image_icon.dart';
import 'package:trios/widgets/text_with_icon.dart';

import '../mod_manager/version_checker.dart';

class VersionCheckTextReadout extends ConsumerStatefulWidget {
  final int? versionCheckComparison;
  final VersionCheckerInfo? localVersionCheck;
  final RemoteVersionCheckResult? remoteVersionCheck;
  final bool showClickToDownloadIfPossible;
  final bool showRightClickToExpand;
  final Mod mod;

  const VersionCheckTextReadout(
    this.versionCheckComparison,
    this.localVersionCheck,
    this.remoteVersionCheck,
    this.mod,
    this.showClickToDownloadIfPossible,
    this.showRightClickToExpand, {
    super.key,
  });

  @override
  ConsumerState createState() => _VersionCheckTextReadoutState();
}

class _VersionCheckTextReadoutState
    extends ConsumerState<VersionCheckTextReadout> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final versionCheckComparison = widget.versionCheckComparison;
    final localVersionCheck = widget.localVersionCheck;
    final remoteVersionCheck = widget.remoteVersionCheck;
    final bool hasUpdate = versionCheckComparison == -1;
    final hasDirectDownload =
        remoteVersionCheck?.remoteVersion?.directDownloadURL != null;

    return Container(
      child: switch (versionCheckComparison) {
        -1 => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showClickToDownloadIfPossible && hasUpdate)
              Container(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      hasDirectDownload
                          ? loc.versionCheckDownloadInstallUpdate
                          : loc.versionCheckClickToOpenDownloadPage,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),

            Row(
              children: [
                TextWithIcon(
                  leading: const Icon(Icons.upcoming, size: 20),
                  text: '',
                ),
                TextWithIcon(
                  text: '${remoteVersionCheck?.remoteVersion?.modVersion}',
                  style: GoogleFonts.robotoMono().copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                TextWithIcon(
                  leading: SvgImageIcon(
                    "assets/images/icon-not-upcoming.svg",
                    height: 20,
                  ),
                  text: '',
                ),
                TextWithIcon(
                  text: '${localVersionCheck?.modVersion}',
                  style: GoogleFonts.robotoMono().copyWith(fontSize: 13),
                ),
              ],
            ),
            if (hasDirectDownload)
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 8),
                child: TextWithIcon(
                  text:
                      "${remoteVersionCheck?.remoteVersion?.directDownloadURL}",
                  leading: const Icon(Icons.file_download_outlined, size: 20),
                  style: theme.textTheme.labelLarge,
                ),
              ),
            if (!hasDirectDownload)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  widget.showRightClickToExpand
                      ? loc.versionCheckRequiresManualDownloadClick
                      : loc.versionCheckRequiresManualDownload,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Divider(),
            ),

            Text(
              loc.versionCheckSource(
                "${remoteVersionCheck?.uri}",
              ),
              style: theme.textTheme.labelLarge,
            ),

            const SizedBox(height: 16),

            if (widget.showRightClickToExpand)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  loc.versionCheckRightClickToExpand,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            Text(
              loc.versionCheckInfoFromAuthor(context.appName),
              style: theme.textTheme.labelLarge?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        _ => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (localVersionCheck != null &&
                remoteVersionCheck != null &&
                remoteVersionCheck.error == null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.versionCheckUpToDate,
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      loc.versionCheckCurrentVersion(
                        "${localVersionCheck.modVersion}",
                      ),
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Text(
                    loc.versionCheckRemoteVersion(
                      "${remoteVersionCheck.remoteVersion?.modVersion}",
                    ),
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      loc.versionCheckerUrl("${remoteVersionCheck.uri}"),
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontFeatures: [const FontFeature.tabularFigures()],
                      ),
                    ),
                  ),
                ],
              ),
            // Remote error.
            if (localVersionCheck != null && remoteVersionCheck?.error != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.versionCheckErrorCheckingForUpdates,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: TriOSThemeConstants.vanillaErrorColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      loc.versionCheckErrorUsuallyCaused,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: TriOSThemeConstants.vanillaErrorColor,
                      ),
                    ),
                  ),
                  Text(
                    loc.versionCheckReportBug,
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      loc.versionCheckerUrl("${remoteVersionCheck?.uri}"),
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontFeatures: [const FontFeature.tabularFigures()],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      loc.versionCheckMessage,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: TriOSThemeConstants.vanillaErrorColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 120),
                    child: Text(
                      "${remoteVersionCheck?.error}",
                      overflow: TextOverflow.fade,
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontFeatures: [const FontFeature.tabularFigures()],
                      ),
                    ),
                  ),
                ],
              ),
            if (localVersionCheck == null)
              Text(
                loc.versionCheckMayNotSupportVersionChecker,
                style: theme.textTheme.labelLarge,
              ),
          ],
        ),
      },
    );
  }
}
