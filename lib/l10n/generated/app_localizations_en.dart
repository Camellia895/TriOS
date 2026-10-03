// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String aboutTagline(Object appName) {
    return '$appName is a mod manager, launcher, and toolkit.\nIt\'s written in Dart/Flutter.';
  }

  @override
  String get aboutForumThread => 'Forum Thread';

  @override
  String get aboutSourceCode => 'Source Code';

  @override
  String get aboutPrivacyPolicy => 'Privacy Policy';

  @override
  String aboutPrivacySentry(Object appName) {
    return '• If you choose to allow it, device information (e.g. OS and screen resolution), mod list, and $appName errors will be collected and uploaded to servers managed by Sentry.io. The information is associated with a randomly generated id and is used to fix bugs. Example of collected data: https://i.imgur.com/k9E6zxO.png.';
  }

  @override
  String aboutPrivacyNoAllow(Object appName) {
    return '• If you do not choose to allow this, $appName only uses the internet for obvious things like version checker updates, mod updates, downloading the Mod Catalog files, etc.';
  }

  @override
  String get aboutPrivacyNoPersonal =>
      '• No personal information is collected at any time. I don\'t know who you are, where you are, what your username is, etc.';

  @override
  String get aboutAiDisclosure => 'AI Disclosure';

  @override
  String aboutAiCatalog(Object appName) {
    return '• AI is used to help generate the Mod Catalog (which is a text file downloaded and displayed by $appName) by sending the HTML content of forum pages. This is used for processing that would be very difficult without AI, such as:';
  }

  @override
  String get aboutAiDetectMods =>
      'Detecting and extracting multiple mods on a single forum page.';

  @override
  String get aboutAiChangelogs => 'Changelogs on the forum page.';

  @override
  String get aboutAiDetectLinks =>
      'Detecting and categorizing a wider range of download links. Links that don\'t exist on the forum page are ignored (hallucination prevention).';

  @override
  String get aboutAiSummaries => 'Generating summaries of mods.';

  @override
  String aboutAiWritesApp(Object appName) {
    return '• AI is used to help write $appName.';
  }

  @override
  String get aboutAiModContent =>
      '• AI is not sent mod content except that which is sent automatically while using it for coding.';

  @override
  String aboutAiNoService(Object appName) {
    return '• $appName itself does not use or contact any AI service.';
  }
}
