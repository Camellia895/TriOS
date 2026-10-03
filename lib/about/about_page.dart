import 'package:material_ui/material_ui.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:open_filex/open_filex.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/utils/extensions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final loc = AppLocalizations.of(context);

    return IntrinsicHeight(
      child: SelectionArea(
        child: Column(
          spacing: 16,
          children: [
            Text(loc.aboutTagline(context.appName), textAlign: TextAlign.center),
            const SizedBox(height: 8),
            Column(
              children: [
                _title(loc.aboutForumThread, textTheme),
                _link(Constants.triosForumThread, textTheme),
              ],
            ),
            Column(
              children: [
                _title(loc.aboutSourceCode, textTheme),
                _link("https://github.com/wispborne/TriOS", textTheme),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: 4,
              children: [
                Center(child: _title(loc.aboutPrivacyPolicy, textTheme)),
                _line(
                  loc.aboutPrivacySentry(context.appName),
                  textTheme,
                  linkify: true,
                ),
                _line(loc.aboutPrivacyNoAllow(context.appName), textTheme),
                _line(loc.aboutPrivacyNoPersonal, textTheme),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: 4,
              children: [
                Center(child: _title(loc.aboutAiDisclosure, textTheme)),
                _line(loc.aboutAiCatalog(context.appName), textTheme),
                _subLine(loc.aboutAiDetectMods, textTheme),
                _subLine(loc.aboutAiChangelogs, textTheme),
                _subLine(loc.aboutAiDetectLinks, textTheme),
                _subLine(loc.aboutAiSummaries, textTheme),
                _line(loc.aboutAiWritesApp(context.appName), textTheme),
                _line(loc.aboutAiModContent, textTheme),
                _line(loc.aboutAiNoService(context.appName), textTheme),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String text, TextTheme textTheme) => Text(
    text,
    style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
  );

  Widget _link(String url, TextTheme textTheme) => Linkify(
    text: url,
    style: textTheme.labelLarge,
    linkifiers: const [UrlLinkifier()],
    onOpen: (link) {
      OpenFilex.open(link.url);
    },
  );

  Widget _line(String text, TextTheme textTheme, {bool linkify = false}) =>
      linkify
      ? _link(text, textTheme)
      : Text(text, style: textTheme.labelLarge);

  Widget _subLine(String text, TextTheme textTheme) =>
      Text("\t\t\t\t- $text", style: textTheme.labelMedium);
}
