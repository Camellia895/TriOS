import 'package:material_ui/material_ui.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../chipper_app.dart';

void showChipperAboutDialog(BuildContext context, ThemeData theme) {
  final loc = AppLocalizations.of(context);
  showAboutDialog(
    context: context,
    applicationName: chipperTitleAndVersion,
    applicationVersion: "${loc.chipperSubtitle}\nby Wisp",
    applicationIcon: Image.asset(
      "assets/images/chipper/icon.png",
      width: 72,
      height: 72,
    ),
    children: [
      Column(
        children: [
          Text(loc.chipperWhatsItDo, style: theme.textTheme.titleLarge),
          SizedBox.fromSize(size: const Size.fromHeight(5)),
          Text(
            loc.chipperWhatsItDoBody,
          ),
          SizedBox.fromSize(size: const Size.fromHeight(20)),
          Text(
            loc.chipperWhatDoYouDoWithLogs,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox.fromSize(size: const Size.fromHeight(5)),
          Text(
            loc.chipperLogsPrivacy,
          ),
          SizedBox.fromSize(size: const Size.fromHeight(30)),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: loc.chipperCreatedUsingFlutter),
                TextSpan(
                  text: loc.chipperProbablyDiscontinued,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Linkify(
            text: loc.chipperSourceCode,
            linkifiers: const [UrlLinkifier()],
            onOpen: (link) => launchUrl(Uri.parse(link.url)),
          ),
        ],
      ),
    ],
  );
}
