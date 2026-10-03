import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh'),
  ];

  /// No description provided for @aboutTagline.
  ///
  /// In en, this message translates to:
  /// **'{appName} is a mod manager, launcher, and toolkit.\nIt\'s written in Dart/Flutter.'**
  String aboutTagline(Object appName);

  /// No description provided for @aboutForumThread.
  ///
  /// In en, this message translates to:
  /// **'Forum Thread'**
  String get aboutForumThread;

  /// No description provided for @aboutSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get aboutSourceCode;

  /// No description provided for @aboutPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get aboutPrivacyPolicy;

  /// No description provided for @aboutPrivacySentry.
  ///
  /// In en, this message translates to:
  /// **'• If you choose to allow it, device information (e.g. OS and screen resolution), mod list, and {appName} errors will be collected and uploaded to servers managed by Sentry.io. The information is associated with a randomly generated id and is used to fix bugs. Example of collected data: https://i.imgur.com/k9E6zxO.png.'**
  String aboutPrivacySentry(Object appName);

  /// No description provided for @aboutPrivacyNoAllow.
  ///
  /// In en, this message translates to:
  /// **'• If you do not choose to allow this, {appName} only uses the internet for obvious things like version checker updates, mod updates, downloading the Mod Catalog files, etc.'**
  String aboutPrivacyNoAllow(Object appName);

  /// No description provided for @aboutPrivacyNoPersonal.
  ///
  /// In en, this message translates to:
  /// **'• No personal information is collected at any time. I don\'t know who you are, where you are, what your username is, etc.'**
  String get aboutPrivacyNoPersonal;

  /// No description provided for @aboutAiDisclosure.
  ///
  /// In en, this message translates to:
  /// **'AI Disclosure'**
  String get aboutAiDisclosure;

  /// No description provided for @aboutAiCatalog.
  ///
  /// In en, this message translates to:
  /// **'• AI is used to help generate the Mod Catalog (which is a text file downloaded and displayed by {appName}) by sending the HTML content of forum pages. This is used for processing that would be very difficult without AI, such as:'**
  String aboutAiCatalog(Object appName);

  /// No description provided for @aboutAiDetectMods.
  ///
  /// In en, this message translates to:
  /// **'Detecting and extracting multiple mods on a single forum page.'**
  String get aboutAiDetectMods;

  /// No description provided for @aboutAiChangelogs.
  ///
  /// In en, this message translates to:
  /// **'Changelogs on the forum page.'**
  String get aboutAiChangelogs;

  /// No description provided for @aboutAiDetectLinks.
  ///
  /// In en, this message translates to:
  /// **'Detecting and categorizing a wider range of download links. Links that don\'t exist on the forum page are ignored (hallucination prevention).'**
  String get aboutAiDetectLinks;

  /// No description provided for @aboutAiSummaries.
  ///
  /// In en, this message translates to:
  /// **'Generating summaries of mods.'**
  String get aboutAiSummaries;

  /// No description provided for @aboutAiWritesApp.
  ///
  /// In en, this message translates to:
  /// **'• AI is used to help write {appName}.'**
  String aboutAiWritesApp(Object appName);

  /// No description provided for @aboutAiModContent.
  ///
  /// In en, this message translates to:
  /// **'• AI is not sent mod content except that which is sent automatically while using it for coding.'**
  String get aboutAiModContent;

  /// No description provided for @aboutAiNoService.
  ///
  /// In en, this message translates to:
  /// **'• {appName} itself does not use or contact any AI service.'**
  String aboutAiNoService(Object appName);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
