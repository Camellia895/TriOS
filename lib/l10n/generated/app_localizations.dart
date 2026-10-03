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

  /// No description provided for @catalogAlwaysLoad.
  ///
  /// In en, this message translates to:
  /// **'Always Load'**
  String get catalogAlwaysLoad;

  /// No description provided for @catalogAlsoInThisThread.
  ///
  /// In en, this message translates to:
  /// **'Also in this thread'**
  String get catalogAlsoInThisThread;

  /// No description provided for @catalogAlsoNeeds.
  ///
  /// In en, this message translates to:
  /// **'Also needs:'**
  String get catalogAlsoNeeds;

  /// No description provided for @catalogBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get catalogBack;

  /// No description provided for @catalogBrowser.
  ///
  /// In en, this message translates to:
  /// **'Browser'**
  String get catalogBrowser;

  /// No description provided for @catalogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get catalogCancel;

  /// No description provided for @catalogClearCache.
  ///
  /// In en, this message translates to:
  /// **'Clear cache'**
  String get catalogClearCache;

  /// No description provided for @catalogClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get catalogClose;

  /// No description provided for @catalogCopyBestDownloadHint.
  ///
  /// In en, this message translates to:
  /// **'Copy the best download link to the clipboard'**
  String get catalogCopyBestDownloadHint;

  /// No description provided for @catalogCopyDiscordLink.
  ///
  /// In en, this message translates to:
  /// **'Copy Discord link'**
  String get catalogCopyDiscordLink;

  /// No description provided for @catalogCopyDownloadLink.
  ///
  /// In en, this message translates to:
  /// **'Copy download link'**
  String get catalogCopyDownloadLink;

  /// No description provided for @catalogCopyUrl.
  ///
  /// In en, this message translates to:
  /// **'Copy URL'**
  String get catalogCopyUrl;

  /// No description provided for @catalogDataSources.
  ///
  /// In en, this message translates to:
  /// **'Data sources…'**
  String get catalogDataSources;

  /// No description provided for @catalogDataSourcesTitle.
  ///
  /// In en, this message translates to:
  /// **'Catalog Data Sources'**
  String get catalogDataSourcesTitle;

  /// No description provided for @catalogDebugInfo.
  ///
  /// In en, this message translates to:
  /// **'Debug Info'**
  String get catalogDebugInfo;

  /// No description provided for @catalogDirectDownload.
  ///
  /// In en, this message translates to:
  /// **'Direct download'**
  String get catalogDirectDownload;

  /// No description provided for @catalogDisable.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get catalogDisable;

  /// No description provided for @catalogDiscordLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Discord link copied to clipboard'**
  String get catalogDiscordLinkCopied;

  /// No description provided for @catalogDonationLinks.
  ///
  /// In en, this message translates to:
  /// **'Donation links'**
  String get catalogDonationLinks;

  /// No description provided for @catalogDownload.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get catalogDownload;

  /// No description provided for @catalogDownloadConfirmPrompt.
  ///
  /// In en, this message translates to:
  /// **'Do you want to download \'{modName}\'?'**
  String catalogDownloadConfirmPrompt(String modName);

  /// No description provided for @catalogDownloadLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Download link copied to clipboard'**
  String get catalogDownloadLinkCopied;

  /// No description provided for @catalogDownloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get catalogDownloads;

  /// No description provided for @catalogEdited.
  ///
  /// In en, this message translates to:
  /// **'  •  Edited '**
  String get catalogEdited;

  /// No description provided for @catalogEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get catalogEnable;

  /// No description provided for @catalogForward.
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get catalogForward;

  /// No description provided for @catalogForumIndexSubforumsAndDiscord.
  ///
  /// In en, this message translates to:
  /// **'forum index, subforums, and discord'**
  String get catalogForumIndexSubforumsAndDiscord;

  /// No description provided for @catalogFullChangelog.
  ///
  /// In en, this message translates to:
  /// **'Full changelog'**
  String get catalogFullChangelog;

  /// No description provided for @catalogGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game Version'**
  String get catalogGameVersion;

  /// No description provided for @catalogGridItemMinSize.
  ///
  /// In en, this message translates to:
  /// **'Grid item min. size'**
  String get catalogGridItemMinSize;

  /// No description provided for @catalogHasUpdate.
  ///
  /// In en, this message translates to:
  /// **'Has Update'**
  String get catalogHasUpdate;

  /// No description provided for @catalogInCategory.
  ///
  /// In en, this message translates to:
  /// **'in {category}'**
  String catalogInCategory(String category);

  /// No description provided for @catalogIndex.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get catalogIndex;

  /// No description provided for @catalogInstalled.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get catalogInstalled;

  /// No description provided for @catalogInstalledMod.
  ///
  /// In en, this message translates to:
  /// **'Installed Mod'**
  String get catalogInstalledMod;

  /// No description provided for @catalogLicense.
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get catalogLicense;

  /// No description provided for @catalogLinks.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get catalogLinks;

  /// No description provided for @catalogLoadOnce.
  ///
  /// In en, this message translates to:
  /// **'Load Once'**
  String get catalogLoadOnce;

  /// No description provided for @catalogMutedUpdates.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} muted update} other{{count} muted updates}}'**
  String catalogMutedUpdates(num count);

  /// No description provided for @catalogMutedUpdatesBadge.
  ///
  /// In en, this message translates to:
  /// **'+ {count}'**
  String catalogMutedUpdatesBadge(num count);

  /// No description provided for @catalogOk.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get catalogOk;

  /// No description provided for @catalogOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get catalogOpen;

  /// No description provided for @catalogOpenCacheFolder.
  ///
  /// In en, this message translates to:
  /// **'Open cache folder'**
  String get catalogOpenCacheFolder;

  /// No description provided for @catalogOpenCacheFolderTooltip.
  ///
  /// In en, this message translates to:
  /// **'Open the cache folder in your file explorer'**
  String get catalogOpenCacheFolderTooltip;

  /// No description provided for @catalogOpenFile.
  ///
  /// In en, this message translates to:
  /// **'Open File'**
  String get catalogOpenFile;

  /// No description provided for @catalogOpenForumPage.
  ///
  /// In en, this message translates to:
  /// **'Open forum page'**
  String get catalogOpenForumPage;

  /// No description provided for @catalogOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in Browser'**
  String get catalogOpenInBrowser;

  /// No description provided for @catalogOpenInBuiltInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in the built-in browser'**
  String get catalogOpenInBuiltInBrowser;

  /// No description provided for @catalogOpenInDiscord.
  ///
  /// In en, this message translates to:
  /// **'Open in Discord'**
  String get catalogOpenInDiscord;

  /// No description provided for @catalogOpenInWebBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in your web browser'**
  String get catalogOpenInWebBrowser;

  /// No description provided for @catalogOpenNexusModsPage.
  ///
  /// In en, this message translates to:
  /// **'Open NexusMods page'**
  String get catalogOpenNexusModsPage;

  /// No description provided for @catalogOtherDownloadOptions.
  ///
  /// In en, this message translates to:
  /// **'Other download options'**
  String get catalogOtherDownloadOptions;

  /// No description provided for @catalogPosted.
  ///
  /// In en, this message translates to:
  /// **'Posted '**
  String get catalogPosted;

  /// No description provided for @catalogPreparingToInstall.
  ///
  /// In en, this message translates to:
  /// **'Preparing to install {modName}…'**
  String catalogPreparingToInstall(String modName);

  /// No description provided for @catalogQbsForumBundle.
  ///
  /// In en, this message translates to:
  /// **'QB\'s Forum Bundle'**
  String get catalogQbsForumBundle;

  /// No description provided for @catalogReadFullLicense.
  ///
  /// In en, this message translates to:
  /// **'Read full license'**
  String get catalogReadFullLicense;

  /// No description provided for @catalogReadLicense.
  ///
  /// In en, this message translates to:
  /// **'Read the license'**
  String get catalogReadLicense;

  /// No description provided for @catalogRecentUpdates.
  ///
  /// In en, this message translates to:
  /// **'Recent updates'**
  String get catalogRecentUpdates;

  /// No description provided for @catalogRecentUpdatesCount.
  ///
  /// In en, this message translates to:
  /// **'Recent updates ({count})'**
  String catalogRecentUpdatesCount(num count);

  /// No description provided for @catalogRecheck.
  ///
  /// In en, this message translates to:
  /// **'Recheck'**
  String get catalogRecheck;

  /// No description provided for @catalogRefreshNow.
  ///
  /// In en, this message translates to:
  /// **'Refresh now'**
  String get catalogRefreshNow;

  /// No description provided for @catalogReload.
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get catalogReload;

  /// No description provided for @catalogRestart.
  ///
  /// In en, this message translates to:
  /// **'and then restart {appName}.'**
  String catalogRestart(String appName);

  /// No description provided for @catalogSaveCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Save compatibility'**
  String get catalogSaveCompatibility;

  /// No description provided for @catalogSliderValueWithUnit.
  ///
  /// In en, this message translates to:
  /// **'{value} {unit}'**
  String catalogSliderValueWithUnit(num value, String unit);

  /// No description provided for @catalogSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source code'**
  String get catalogSourceCode;

  /// No description provided for @catalogSourceCodeHost.
  ///
  /// In en, this message translates to:
  /// **'{hostName}  '**
  String catalogSourceCodeHost(String hostName);

  /// No description provided for @catalogSpaceBetweenCards.
  ///
  /// In en, this message translates to:
  /// **'Space between cards'**
  String get catalogSpaceBetweenCards;

  /// No description provided for @catalogSummary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get catalogSummary;

  /// No description provided for @catalogViewModDetails.
  ///
  /// In en, this message translates to:
  /// **'View Mod Details...'**
  String get catalogViewModDetails;

  /// No description provided for @catalogWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get catalogWebsite;

  /// No description provided for @catalogWispsModRepo.
  ///
  /// In en, this message translates to:
  /// **'Wisp\'s Mod Repo'**
  String get catalogWispsModRepo;

  /// No description provided for @chatbotAppVersion.
  ///
  /// In en, this message translates to:
  /// **'{appName} v{version}'**
  String chatbotAppVersion(String appName, String version);

  /// No description provided for @chatbotAllEnabledModsAppearCompatible.
  ///
  /// In en, this message translates to:
  /// **'All enabled mods appear compatible!'**
  String get chatbotAllEnabledModsAppearCompatible;

  /// No description provided for @chatbotAllInstalledModsAreCurrentlyEnabled.
  ///
  /// In en, this message translates to:
  /// **'All installed mods are currently enabled.'**
  String get chatbotAllInstalledModsAreCurrentlyEnabled;

  /// No description provided for @chatbotAllModsAreUpToDate.
  ///
  /// In en, this message translates to:
  /// **'All mods are up to date!'**
  String get chatbotAllModsAreUpToDate;

  /// No description provided for @chatbotChangelogFor.
  ///
  /// In en, this message translates to:
  /// **'Changelog for {name}:\n{text}'**
  String chatbotChangelogFor(String name, String text);

  /// No description provided for @chatbotCouldNotDetermineCurrentRam.
  ///
  /// In en, this message translates to:
  /// **'Could not determine current RAM allocation. Make sure your game folder is configured in Settings.'**
  String get chatbotCouldNotDetermineCurrentRam;

  /// No description provided for @chatbotCurrentRamAllocation.
  ///
  /// In en, this message translates to:
  /// **'Current RAM allocation: {ram} MB{ramGb}\n\nTo change this, go to the Dashboard page and adjust the\nRAM slider, or ask \"more ram\" for recommendations.'**
  String chatbotCurrentRamAllocation(String ram, String ramGb);

  /// No description provided for @chatbotSuggestionHelpMeWithMods.
  ///
  /// In en, this message translates to:
  /// **'Help me with mods'**
  String get chatbotSuggestionHelpMeWithMods;

  /// No description provided for @chatbotModMetadataNotAvailableYet.
  ///
  /// In en, this message translates to:
  /// **'Mod metadata is not available yet.'**
  String get chatbotModMetadataNotAvailableYet;

  /// No description provided for @chatbotNoRamInformationAvailable.
  ///
  /// In en, this message translates to:
  /// **'No RAM information available. Make sure your game folder is configured in Settings.'**
  String get chatbotNoRamInformationAvailable;

  /// No description provided for @chatbotNoVramDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No VRAM data available yet.\nOpen the VRAM Estimator page in the sidebar to run a scan.'**
  String get chatbotNoVramDataAvailable;

  /// No description provided for @chatbotNoChangelogsLoadedYet.
  ///
  /// In en, this message translates to:
  /// **'No changelogs loaded yet. Changelogs are fetched when mod updates are checked.'**
  String get chatbotNoChangelogsLoadedYet;

  /// No description provided for @chatbotNoConflictsFound.
  ///
  /// In en, this message translates to:
  /// **'No conflicts found among your enabled mods.'**
  String get chatbotNoConflictsFound;

  /// No description provided for @chatbotNoErrorsFoundInLog.
  ///
  /// In en, this message translates to:
  /// **'No errors found in the log. Looks good!'**
  String get chatbotNoErrorsFoundInLog;

  /// No description provided for @chatbotNoModCategoriesDefinedYet.
  ///
  /// In en, this message translates to:
  /// **'No mod categories defined yet.\nYou can create categories in the Mod Manager by right-clicking a mod.'**
  String get chatbotNoModCategoriesDefinedYet;

  /// No description provided for @chatbotNoModChangeHistory.
  ///
  /// In en, this message translates to:
  /// **'No mod change history recorded yet.'**
  String get chatbotNoModChangeHistory;

  /// No description provided for @chatbotNoModDependenciesFound.
  ///
  /// In en, this message translates to:
  /// **'No mod dependencies found.'**
  String get chatbotNoModDependenciesFound;

  /// No description provided for @chatbotNoModFoundMatching.
  ///
  /// In en, this message translates to:
  /// **'No mod found matching \"{query}\".'**
  String chatbotNoModFoundMatching(String query);

  /// No description provided for @chatbotNoModFoundMatchingHint.
  ///
  /// In en, this message translates to:
  /// **'No mod found matching \"{query}\". Check your spelling, try a shorter name, or use an acronym.'**
  String chatbotNoModFoundMatchingHint(String query);

  /// No description provided for @chatbotNoModMetadataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No mod metadata available.'**
  String get chatbotNoModMetadataAvailable;

  /// No description provided for @chatbotNoModProfileToCompare.
  ///
  /// In en, this message translates to:
  /// **'No mod profile is currently active to compare against.'**
  String get chatbotNoModProfileToCompare;

  /// No description provided for @chatbotNoModProfileActive.
  ///
  /// In en, this message translates to:
  /// **'No mod profile is currently active.\nCreate and activate a profile on the Mod Profiles page.'**
  String get chatbotNoModProfileActive;

  /// No description provided for @chatbotNoModProfilesSaved.
  ///
  /// In en, this message translates to:
  /// **'No mod profiles saved yet.\nCreate profiles on the Mod Profiles page to save different mod configurations.'**
  String get chatbotNoModProfilesSaved;

  /// No description provided for @chatbotNoModsCurrentlyEnabled.
  ///
  /// In en, this message translates to:
  /// **'No mods are currently enabled.'**
  String get chatbotNoModsCurrentlyEnabled;

  /// No description provided for @chatbotNoModsInstalled.
  ///
  /// In en, this message translates to:
  /// **'No mods are installed.'**
  String get chatbotNoModsInstalled;

  /// No description provided for @chatbotNoModsFoundByAuthor.
  ///
  /// In en, this message translates to:
  /// **'No mods found by author \"{authorQuery}\".'**
  String chatbotNoModsFoundByAuthor(String authorQuery);

  /// No description provided for @chatbotNoModsDetectedInLog.
  ///
  /// In en, this message translates to:
  /// **'No mods were detected in the log file.'**
  String get chatbotNoModsDetectedInLog;

  /// No description provided for @chatbotNoTipsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No tips available. Tips come from your installed mods\' mod_info.json files.'**
  String get chatbotNoTipsAvailable;

  /// No description provided for @chatbotNoTotalConversionMods.
  ///
  /// In en, this message translates to:
  /// **'No total conversion mods are installed.'**
  String get chatbotNoTotalConversionMods;

  /// No description provided for @chatbotNoUtilityLibraryMods.
  ///
  /// In en, this message translates to:
  /// **'No utility/library mods are installed.'**
  String get chatbotNoUtilityLibraryMods;

  /// No description provided for @chatbotStarsectorNotRunning.
  ///
  /// In en, this message translates to:
  /// **'Starsector does not appear to be running.'**
  String get chatbotStarsectorNotRunning;

  /// No description provided for @chatbotStarsectorCurrentlyRunning.
  ///
  /// In en, this message translates to:
  /// **'Starsector is currently running.\nNote: Mod changes won\'t take effect until you restart the game.'**
  String get chatbotStarsectorCurrentlyRunning;

  /// No description provided for @chatbotSuggestionTroubleshoot.
  ///
  /// In en, this message translates to:
  /// **'Troubleshoot'**
  String get chatbotSuggestionTroubleshoot;

  /// No description provided for @chatbotVersionCheckDataNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Version check data is not available yet. Try again in a moment.'**
  String get chatbotVersionCheckDataNotAvailable;

  /// No description provided for @chatbotSuggestionWhatCanYouDo.
  ///
  /// In en, this message translates to:
  /// **'What can you do?'**
  String get chatbotSuggestionWhatCanYouDo;

  /// No description provided for @chatbotYouAreRunningNoUpdateInfo.
  ///
  /// In en, this message translates to:
  /// **'You are running {appName} v{version}.\nNo update information available at this time.'**
  String chatbotYouAreRunningNoUpdateInfo(String appName, String version);

  /// No description provided for @chatbotYouAreRunningUpdating.
  ///
  /// In en, this message translates to:
  /// **'You are running {appName} v{version}.\nAn update is being downloaded. Check the Settings page for details.'**
  String chatbotYouAreRunningUpdating(String appName, String version);

  /// No description provided for @chatbotFindItInSidebar.
  ///
  /// In en, this message translates to:
  /// **'You can find it in the sidebar:\n  {page}'**
  String chatbotFindItInSidebar(String page);

  /// No description provided for @chatbotYouHaveZeroMods.
  ///
  /// In en, this message translates to:
  /// **'You have zero mods enabled. That\'s not a modlist.'**
  String get chatbotYouHaveZeroMods;

  /// No description provided for @chatbotYourLogFileIsAt.
  ///
  /// In en, this message translates to:
  /// **'Your log file is at:\n{path}'**
  String chatbotYourLogFileIsAt(String path);

  /// No description provided for @modManagerModsSelected.
  ///
  /// In en, this message translates to:
  /// **'{count} mods selected'**
  String modManagerModsSelected(num count);

  /// No description provided for @modManagerModsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} mods'**
  String modManagerModsCount(num count);

  /// No description provided for @wispgridGroupReEstimateVramUsage.
  ///
  /// In en, this message translates to:
  /// **'(Re)estimate VRAM Usage'**
  String get wispgridGroupReEstimateVramUsage;

  /// No description provided for @modsGridNoneActive.
  ///
  /// In en, this message translates to:
  /// **'(none active)'**
  String get modsGridNoneActive;

  /// No description provided for @modsGridAboutVramVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'About VRAM & VRAM Estimator'**
  String get modsGridAboutVramVramEstimator;

  /// No description provided for @createCategoryDialogAddCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get createCategoryDialogAddCategory;

  /// No description provided for @categoryContextMenuAddCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category...'**
  String get categoryContextMenuAddCategory;

  /// No description provided for @modsGridAddMods.
  ///
  /// In en, this message translates to:
  /// **'Add Mod(s)'**
  String get modsGridAddMods;

  /// No description provided for @modsGridAddSecondGroupingLevel.
  ///
  /// In en, this message translates to:
  /// **'Add a second level of grouping under the primary group.'**
  String get modsGridAddSecondGroupingLevel;

  /// No description provided for @categoryContextMenuAllIcons.
  ///
  /// In en, this message translates to:
  /// **'All icons…'**
  String get categoryContextMenuAllIcons;

  /// No description provided for @modSummaryAuthor.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get modSummaryAuthor;

  /// No description provided for @modContextMenuCategories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get modContextMenuCategories;

  /// No description provided for @modsGridCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get modsGridCategory;

  /// No description provided for @categoryContextMenuCategoryColor.
  ///
  /// In en, this message translates to:
  /// **'Category Color'**
  String get categoryContextMenuCategoryColor;

  /// No description provided for @categoryContextMenuCategoryIcon.
  ///
  /// In en, this message translates to:
  /// **'Category Icon'**
  String get categoryContextMenuCategoryIcon;

  /// No description provided for @modContextMenuChangeCategory.
  ///
  /// In en, this message translates to:
  /// **'Change Category'**
  String get modContextMenuChangeCategory;

  /// No description provided for @categoryManagementPopupChangeColor.
  ///
  /// In en, this message translates to:
  /// **'Change color'**
  String get categoryManagementPopupChangeColor;

  /// No description provided for @modsGridChangeGrouping.
  ///
  /// In en, this message translates to:
  /// **'Change how mods are grouped in the grid.'**
  String get modsGridChangeGrouping;

  /// No description provided for @categoryManagementPopupChangeIcon.
  ///
  /// In en, this message translates to:
  /// **'Change icon'**
  String get categoryManagementPopupChangeIcon;

  /// No description provided for @modContextMenuCheckVramOfSelected.
  ///
  /// In en, this message translates to:
  /// **'Check VRAM of selected'**
  String get modContextMenuCheckVramOfSelected;

  /// No description provided for @modContextMenuCheckForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get modContextMenuCheckForUpdates;

  /// No description provided for @categoryContextMenuChooseCategories.
  ///
  /// In en, this message translates to:
  /// **'Choose Categories'**
  String get categoryContextMenuChooseCategories;

  /// No description provided for @modManagerClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get modManagerClear;

  /// No description provided for @createCategoryDialogColor.
  ///
  /// In en, this message translates to:
  /// **'Color:'**
  String get createCategoryDialogColor;

  /// No description provided for @modListExporterCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied mod list to clipboard.'**
  String get modListExporterCopiedToClipboard;

  /// No description provided for @modsGridCopyAllModsToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy All Mods to Clipboard'**
  String get modsGridCopyAllModsToClipboard;

  /// No description provided for @modsGridCopyEnabledModsToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy Enabled Mods to Clipboard'**
  String get modsGridCopyEnabledModsToClipboard;

  /// No description provided for @modContextMenuCopyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get modContextMenuCopyToClipboard;

  /// No description provided for @createCategoryDialogCreate.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get createCategoryDialogCreate;

  /// No description provided for @categoryManagementPopupCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get categoryManagementPopupCustom;

  /// No description provided for @modManagerDataIssuesIn.
  ///
  /// In en, this message translates to:
  /// **'Data issues in {modName}'**
  String modManagerDataIssuesIn(String modName);

  /// No description provided for @categoryManagementPopupDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get categoryManagementPopupDelete;

  /// No description provided for @categoryManagementPopupDeleteCategory.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{categoryName}\"?'**
  String categoryManagementPopupDeleteCategory(String categoryName);

  /// No description provided for @modInfoDialogDependencies.
  ///
  /// In en, this message translates to:
  /// **'Dependencies'**
  String get modInfoDialogDependencies;

  /// No description provided for @modInfoDialogDependents.
  ///
  /// In en, this message translates to:
  /// **'Dependents'**
  String get modInfoDialogDependents;

  /// No description provided for @modInfoDialogDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get modInfoDialogDescription;

  /// No description provided for @modsGridDisableAll.
  ///
  /// In en, this message translates to:
  /// **'Disable All'**
  String get modsGridDisableAll;

  /// No description provided for @modsGridDisableAllMods.
  ///
  /// In en, this message translates to:
  /// **'Disable All Mods'**
  String get modsGridDisableAllMods;

  /// No description provided for @modsGridDontShowUpdates.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show updates'**
  String get modsGridDontShowUpdates;

  /// No description provided for @categoryManagementPopupDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get categoryManagementPopupDone;

  /// No description provided for @modsGridEnableAll.
  ///
  /// In en, this message translates to:
  /// **'Enable All'**
  String get modsGridEnableAll;

  /// No description provided for @modsGridEnableAllMods.
  ///
  /// In en, this message translates to:
  /// **'Enable All Mods'**
  String get modsGridEnableAllMods;

  /// No description provided for @modInstallationErrorDialogError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get modInstallationErrorDialogError;

  /// No description provided for @modsGridEstimate.
  ///
  /// In en, this message translates to:
  /// **'Estimate'**
  String get modsGridEstimate;

  /// No description provided for @modsGridEstimateVram.
  ///
  /// In en, this message translates to:
  /// **'Estimate VRAM'**
  String get modsGridEstimateVram;

  /// No description provided for @modInfoDialogEstimateVramUsage.
  ///
  /// In en, this message translates to:
  /// **'Estimate VRAM usage'**
  String get modInfoDialogEstimateVramUsage;

  /// No description provided for @modsGridFirstSeen.
  ///
  /// In en, this message translates to:
  /// **'First Seen'**
  String get modsGridFirstSeen;

  /// No description provided for @modSummaryFirstSeenByTrios.
  ///
  /// In en, this message translates to:
  /// **'First seen by TriOS'**
  String get modSummaryFirstSeenByTrios;

  /// No description provided for @modContextMenuForceToVersion.
  ///
  /// In en, this message translates to:
  /// **'Force to {version}'**
  String modContextMenuForceToVersion(String version);

  /// No description provided for @wispgridGroupRowGroupBy.
  ///
  /// In en, this message translates to:
  /// **'Group By'**
  String get wispgridGroupRowGroupBy;

  /// No description provided for @wispgridGroupRowHeaderStyle.
  ///
  /// In en, this message translates to:
  /// **'Header Style'**
  String get wispgridGroupRowHeaderStyle;

  /// No description provided for @wispgridHeaderRowHideAll.
  ///
  /// In en, this message translates to:
  /// **'Hide All'**
  String get wispgridHeaderRowHideAll;

  /// No description provided for @modManagerHideModDataWarnings.
  ///
  /// In en, this message translates to:
  /// **'Hide mod data warnings'**
  String get modManagerHideModDataWarnings;

  /// No description provided for @wispgridHeaderRowHideShowColumns.
  ///
  /// In en, this message translates to:
  /// **'Hide/Show Columns'**
  String get wispgridHeaderRowHideShowColumns;

  /// No description provided for @categoryIconPickerDialogIconFor.
  ///
  /// In en, this message translates to:
  /// **'Icon for {modName}'**
  String categoryIconPickerDialogIconFor(String modName);

  /// No description provided for @createCategoryDialogIcon.
  ///
  /// In en, this message translates to:
  /// **'Icon:'**
  String get createCategoryDialogIcon;

  /// No description provided for @wispGridIncoherentScreaming.
  ///
  /// In en, this message translates to:
  /// **'Incoherent screaming'**
  String get wispGridIncoherentScreaming;

  /// No description provided for @modsGridItDoesntMeanOld.
  ///
  /// In en, this message translates to:
  /// **'It doesn\'t mean you\'re old.'**
  String get modsGridItDoesntMeanOld;

  /// No description provided for @modSummaryLastEnabledByTrios.
  ///
  /// In en, this message translates to:
  /// **'Last enabled by TriOS'**
  String get modSummaryLastEnabledByTrios;

  /// No description provided for @wispgridGroupRowLine.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get wispgridGroupRowLine;

  /// No description provided for @modsGridLoad.
  ///
  /// In en, this message translates to:
  /// **'Load #'**
  String get modsGridLoad;

  /// No description provided for @categoryManagementPopupManageCategories.
  ///
  /// In en, this message translates to:
  /// **'Manage Categories'**
  String get categoryManagementPopupManageCategories;

  /// No description provided for @wispgridGroupManageCategories.
  ///
  /// In en, this message translates to:
  /// **'Manage Categories...'**
  String get wispgridGroupManageCategories;

  /// No description provided for @categoryManagementPopupMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get categoryManagementPopupMaterial;

  /// No description provided for @auditModAuditLog.
  ///
  /// In en, this message translates to:
  /// **'Mod Audit Log'**
  String get auditModAuditLog;

  /// No description provided for @modsGridModButtonsHighContrast.
  ///
  /// In en, this message translates to:
  /// **'Mod Buttons: High Contrast'**
  String get modsGridModButtonsHighContrast;

  /// No description provided for @modContextMenuModColor.
  ///
  /// In en, this message translates to:
  /// **'Mod Color'**
  String get modContextMenuModColor;

  /// No description provided for @modInfoDialogModIndex.
  ///
  /// In en, this message translates to:
  /// **'Mod Index'**
  String get modInfoDialogModIndex;

  /// No description provided for @modInfoDialogModInfo.
  ///
  /// In en, this message translates to:
  /// **'Mod Info'**
  String get modInfoDialogModInfo;

  /// No description provided for @modInfoDialogModRepo.
  ///
  /// In en, this message translates to:
  /// **'Mod Repo'**
  String get modInfoDialogModRepo;

  /// No description provided for @modsGridMoreOptions.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get modsGridMoreOptions;

  /// No description provided for @modsGridName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get modsGridName;

  /// No description provided for @categoryIconPickerDialogNoIcon.
  ///
  /// In en, this message translates to:
  /// **'No Icon'**
  String get categoryIconPickerDialogNoIcon;

  /// No description provided for @categoryIconPickerDialogNoIconsFound.
  ///
  /// In en, this message translates to:
  /// **'No icons found'**
  String get categoryIconPickerDialogNoIconsFound;

  /// No description provided for @categoryIconPickerDialogNoMaterialIconsFound.
  ///
  /// In en, this message translates to:
  /// **'No material icons found'**
  String get categoryIconPickerDialogNoMaterialIconsFound;

  /// No description provided for @modsGridOnlyShowEnabledMods.
  ///
  /// In en, this message translates to:
  /// **'Only show enabled mods'**
  String get modsGridOnlyShowEnabledMods;

  /// No description provided for @modInfoDialogOpenFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder'**
  String get modInfoDialogOpenFolder;

  /// No description provided for @modInfoDialogOpenPage.
  ///
  /// In en, this message translates to:
  /// **'Open Page'**
  String get modInfoDialogOpenPage;

  /// No description provided for @modInstallationErrorDialogOpenStarsectorModsFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Starsector mods folder'**
  String get modInstallationErrorDialogOpenStarsectorModsFolder;

  /// No description provided for @modInfoDialogOpenModFolder.
  ///
  /// In en, this message translates to:
  /// **'Open mod folder'**
  String get modInfoDialogOpenModFolder;

  /// No description provided for @modsGridOpenSidePanel.
  ///
  /// In en, this message translates to:
  /// **'Open side panel'**
  String get modsGridOpenSidePanel;

  /// No description provided for @createCategoryDialogPickAColor.
  ///
  /// In en, this message translates to:
  /// **'Pick a color'**
  String get createCategoryDialogPickAColor;

  /// No description provided for @modsGridPinFavoritedModsToTop.
  ///
  /// In en, this message translates to:
  /// **'Pin Favorited Mods to Top'**
  String get modsGridPinFavoritedModsToTop;

  /// No description provided for @modsGridProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile:'**
  String get modsGridProfile;

  /// No description provided for @categoryContextMenuRename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get categoryContextMenuRename;

  /// No description provided for @categoryContextMenuRenameCategory.
  ///
  /// In en, this message translates to:
  /// **'Rename \"{categoryName}\"'**
  String categoryContextMenuRenameCategory(String categoryName);

  /// No description provided for @wispgridGroupRepeatModsInEachCategory.
  ///
  /// In en, this message translates to:
  /// **'Repeat Mods In Each Category'**
  String get wispgridGroupRepeatModsInEachCategory;

  /// No description provided for @modInstallSelectionDialogReplaceAllAlreadyPresent.
  ///
  /// In en, this message translates to:
  /// **'Replace all already-present mods'**
  String get modInstallSelectionDialogReplaceAllAlreadyPresent;

  /// No description provided for @wispgridHeaderRowResetGridLayout.
  ///
  /// In en, this message translates to:
  /// **'Reset grid layout'**
  String get wispgridHeaderRowResetGridLayout;

  /// No description provided for @modVersionSelectionDropdownSelectADifferentVersion.
  ///
  /// In en, this message translates to:
  /// **'Select a different version'**
  String get modVersionSelectionDropdownSelectADifferentVersion;

  /// No description provided for @categoryContextMenuSetPrimaryCategory.
  ///
  /// In en, this message translates to:
  /// **'Set Primary Category'**
  String get categoryContextMenuSetPrimaryCategory;

  /// No description provided for @wispgridGroupRowShortCard.
  ///
  /// In en, this message translates to:
  /// **'Short Card'**
  String get wispgridGroupRowShortCard;

  /// No description provided for @wispgridHeaderRowShowAll.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get wispgridHeaderRowShowAll;

  /// No description provided for @modsGridShowModDataWarnings.
  ///
  /// In en, this message translates to:
  /// **'Show Mod Data Warnings'**
  String get modsGridShowModDataWarnings;

  /// No description provided for @modsGridShowAllUpdates.
  ///
  /// In en, this message translates to:
  /// **'Show all updates'**
  String get modsGridShowAllUpdates;

  /// No description provided for @modInstallationErrorDialogShowModFile.
  ///
  /// In en, this message translates to:
  /// **'Show mod file'**
  String get modInstallationErrorDialogShowModFile;

  /// No description provided for @modsGridShowUnmutedUpdates.
  ///
  /// In en, this message translates to:
  /// **'Show unmuted updates'**
  String get modsGridShowUnmutedUpdates;

  /// No description provided for @modInfoDialogSources.
  ///
  /// In en, this message translates to:
  /// **'Sources'**
  String get modInfoDialogSources;

  /// No description provided for @wispgridGroupRowTallCard.
  ///
  /// In en, this message translates to:
  /// **'Tall Card'**
  String get wispgridGroupRowTallCard;

  /// No description provided for @wispgridGroupRowThenBy.
  ///
  /// In en, this message translates to:
  /// **'Then By'**
  String get wispgridGroupRowThenBy;

  /// No description provided for @modInfoDialogTrios.
  ///
  /// In en, this message translates to:
  /// **'TriOS'**
  String get modInfoDialogTrios;

  /// No description provided for @modInfoDialogUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get modInfoDialogUpdate;

  /// No description provided for @modsGridUpdatesVisibility.
  ///
  /// In en, this message translates to:
  /// **'Updates Visibility'**
  String get modsGridUpdatesVisibility;

  /// No description provided for @modInfoDialogUpdatesStatus.
  ///
  /// In en, this message translates to:
  /// **'Updates: {updatesStatus}'**
  String modInfoDialogUpdatesStatus(String updatesStatus);

  /// No description provided for @modInfoDialogVram.
  ///
  /// In en, this message translates to:
  /// **'VRAM'**
  String get modInfoDialogVram;

  /// No description provided for @modsGridVramEst.
  ///
  /// In en, this message translates to:
  /// **'VRAM Est.'**
  String get modsGridVramEst;

  /// No description provided for @modsGridVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get modsGridVersion;

  /// No description provided for @modSummaryVersions.
  ///
  /// In en, this message translates to:
  /// **'Version(s)'**
  String get modSummaryVersions;

  /// No description provided for @modInfoDialogByAuthor.
  ///
  /// In en, this message translates to:
  /// **'by {author}'**
  String modInfoDialogByAuthor(String author);

  /// No description provided for @modManagerVersionShort.
  ///
  /// In en, this message translates to:
  /// **'v{version}'**
  String modManagerVersionShort(String version);

  /// No description provided for @profileModsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} mods'**
  String profileModsCount(num count);

  /// No description provided for @profileTheyMayClick.
  ///
  /// In en, this message translates to:
  /// **'3. They may click'**
  String get profileTheyMayClick;

  /// No description provided for @profileActivateConfirm.
  ///
  /// In en, this message translates to:
  /// **'Activate \'{profileName}\'?'**
  String profileActivateConfirm(String profileName);

  /// No description provided for @profileBackupAndActivate.
  ///
  /// In en, this message translates to:
  /// **'Back up Profile & Activate'**
  String get profileBackupAndActivate;

  /// No description provided for @profileBothIdentical.
  ///
  /// In en, this message translates to:
  /// **'Both profiles are identical.'**
  String get profileBothIdentical;

  /// No description provided for @profileClipboardEmpty.
  ///
  /// In en, this message translates to:
  /// **'Clipboard is empty'**
  String get profileClipboardEmpty;

  /// No description provided for @profileCopyButtonOnA.
  ///
  /// In en, this message translates to:
  /// **'Copy button on a Mod Profile.'**
  String get profileCopyButtonOnA;

  /// No description provided for @profileCopyMissingToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy missing to clipboard'**
  String get profileCopyMissingToClipboard;

  /// No description provided for @profileCopyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy mod profile to clipboard'**
  String get profileCopyToClipboard;

  /// No description provided for @profileCreateProfile.
  ///
  /// In en, this message translates to:
  /// **'Create Profile'**
  String get profileCreateProfile;

  /// No description provided for @profileDeleteProfile.
  ///
  /// In en, this message translates to:
  /// **'Delete profile'**
  String get profileDeleteProfile;

  /// No description provided for @profileDeleteProfileConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete profile?'**
  String get profileDeleteProfileConfirm;

  /// No description provided for @profileDuplicateProfile.
  ///
  /// In en, this message translates to:
  /// **'Duplicate profile'**
  String get profileDuplicateProfile;

  /// No description provided for @profileFailedToImport.
  ///
  /// In en, this message translates to:
  /// **'Failed to import profile: {error}'**
  String profileFailedToImport(String error);

  /// No description provided for @profileImport.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get profileImport;

  /// No description provided for @profileImportASharedProfile.
  ///
  /// In en, this message translates to:
  /// **'Import a shared mod Profile from clipboard'**
  String get profileImportASharedProfile;

  /// No description provided for @profileImportAsCopy.
  ///
  /// In en, this message translates to:
  /// **'Import as Copy'**
  String get profileImportAsCopy;

  /// No description provided for @profileImported.
  ///
  /// In en, this message translates to:
  /// **'Successfully imported profile: {name}'**
  String profileImported(String name);

  /// No description provided for @profileImportUnable.
  ///
  /// In en, this message translates to:
  /// **'Unable to import profile \'{name}\'.'**
  String profileImportUnable(String name);

  /// No description provided for @profileMissingMods.
  ///
  /// In en, this message translates to:
  /// **'Missing Mods'**
  String get profileMissingMods;

  /// No description provided for @profileMissingVersions.
  ///
  /// In en, this message translates to:
  /// **'Missing Versions'**
  String get profileMissingVersions;

  /// No description provided for @profileModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Mod Profiles'**
  String get profileModProfiles;

  /// No description provided for @profileModListCopied.
  ///
  /// In en, this message translates to:
  /// **'Mod list copied to clipboard'**
  String get profileModListCopied;

  /// No description provided for @profileNewProfile.
  ///
  /// In en, this message translates to:
  /// **'New Profile'**
  String get profileNewProfile;

  /// No description provided for @profileOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get profileOk;

  /// No description provided for @profileOpenSaveFolder.
  ///
  /// In en, this message translates to:
  /// **'Open save folder'**
  String get profileOpenSaveFolder;

  /// No description provided for @profileAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'Profile Already Exists'**
  String get profileAlreadyExists;

  /// No description provided for @profileRereadFromSavesFolder.
  ///
  /// In en, this message translates to:
  /// **'Reread from Saves folder'**
  String get profileRereadFromSavesFolder;

  /// No description provided for @profileSearchCatalog.
  ///
  /// In en, this message translates to:
  /// **'Search Catalog'**
  String get profileSearchCatalog;

  /// No description provided for @profileSharingModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Sharing Mod Profiles'**
  String get profileSharingModProfiles;

  /// No description provided for @profileOverwriteExisting.
  ///
  /// In en, this message translates to:
  /// **'Overwrite Existing'**
  String get profileOverwriteExisting;

  /// No description provided for @profileWip.
  ///
  /// In en, this message translates to:
  /// **'WIP'**
  String get profileWip;

  /// No description provided for @recordAuthorLabel.
  ///
  /// In en, this message translates to:
  /// **'Author: '**
  String get recordAuthorLabel;

  /// No description provided for @recordAuthorsLabel.
  ///
  /// In en, this message translates to:
  /// **'Authors: '**
  String get recordAuthorsLabel;

  /// No description provided for @recordCatalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get recordCatalog;

  /// No description provided for @recordCatalogNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Catalog Name: '**
  String get recordCatalogNameLabel;

  /// No description provided for @recordCategoriesLabel.
  ///
  /// In en, this message translates to:
  /// **'Categories: '**
  String get recordCategoriesLabel;

  /// No description provided for @recordChangelogUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Changelog URL: '**
  String get recordChangelogUrlLabel;

  /// No description provided for @recordDirectDownloadUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Direct Download URL: '**
  String get recordDirectDownloadUrlLabel;

  /// No description provided for @recordDiscordUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Discord URL: '**
  String get recordDiscordUrlLabel;

  /// No description provided for @recordDownloadHistory.
  ///
  /// In en, this message translates to:
  /// **'Download History'**
  String get recordDownloadHistory;

  /// No description provided for @recordDownloadPageUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Download Page URL: '**
  String get recordDownloadPageUrlLabel;

  /// No description provided for @recordDownloadedAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Downloaded At: '**
  String get recordDownloadedAtLabel;

  /// No description provided for @recordDownloadedFromLabel.
  ///
  /// In en, this message translates to:
  /// **'Downloaded From: '**
  String get recordDownloadedFromLabel;

  /// No description provided for @recordFirstSeenLabel.
  ///
  /// In en, this message translates to:
  /// **'First Seen: '**
  String get recordFirstSeenLabel;

  /// No description provided for @recordForumThreadIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Forum Thread ID: '**
  String get recordForumThreadIdLabel;

  /// No description provided for @recordForumUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Forum URL: '**
  String get recordForumUrlLabel;

  /// No description provided for @recordIdentity.
  ///
  /// In en, this message translates to:
  /// **'Identity'**
  String get recordIdentity;

  /// No description provided for @recordLastSeenLabel.
  ///
  /// In en, this message translates to:
  /// **'Last Seen: '**
  String get recordLastSeenLabel;

  /// No description provided for @recordMasterVersionFileUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Master Version File URL: '**
  String get recordMasterVersionFileUrlLabel;

  /// No description provided for @recordModIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Mod ID: '**
  String get recordModIdLabel;

  /// No description provided for @recordModSourcesTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Sources: {name}'**
  String recordModSourcesTitle(String name);

  /// No description provided for @recordNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name: '**
  String get recordNameLabel;

  /// No description provided for @recordNamesLabel.
  ///
  /// In en, this message translates to:
  /// **'Names: '**
  String get recordNamesLabel;

  /// No description provided for @recordNexusModsIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Nexus Mods ID: '**
  String get recordNexusModsIdLabel;

  /// No description provided for @recordNexusUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Nexus URL: '**
  String get recordNexusUrlLabel;

  /// No description provided for @recordPathLabel.
  ///
  /// In en, this message translates to:
  /// **'Path: '**
  String get recordPathLabel;

  /// No description provided for @recordKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Record Key: '**
  String get recordKeyLabel;

  /// No description provided for @recordSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get recordSave;

  /// No description provided for @recordVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'Version Checker'**
  String get recordVersionChecker;

  /// No description provided for @recordVersionLabel.
  ///
  /// In en, this message translates to:
  /// **'Version: '**
  String get recordVersionLabel;

  /// No description provided for @portraitConfirmedPortraits.
  ///
  /// In en, this message translates to:
  /// **'Confirmed Portraits'**
  String get portraitConfirmedPortraits;

  /// No description provided for @portraitOnlyYourChanges.
  ///
  /// In en, this message translates to:
  /// **'Only Your Changes'**
  String get portraitOnlyYourChanges;

  /// No description provided for @portraitErrorAddingReplacement.
  ///
  /// In en, this message translates to:
  /// **'Error adding replacement: {error}'**
  String portraitErrorAddingReplacement(String error);

  /// No description provided for @portraitErrorImporting.
  ///
  /// In en, this message translates to:
  /// **'Error importing portraits: {error}'**
  String portraitErrorImporting(String error);

  /// No description provided for @portraitFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get portraitFemale;

  /// No description provided for @portraitIdLabel.
  ///
  /// In en, this message translates to:
  /// **'ID: {id}'**
  String portraitIdLabel(String id);

  /// No description provided for @portraitImportPortraits.
  ///
  /// In en, this message translates to:
  /// **'Import Portrait(s)'**
  String get portraitImportPortraits;

  /// No description provided for @portraitImportResults.
  ///
  /// In en, this message translates to:
  /// **'Import Results'**
  String get portraitImportResults;

  /// No description provided for @portraitLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading portraits...'**
  String get portraitLoading;

  /// No description provided for @portraitMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get portraitMale;

  /// No description provided for @portraitNoOthersAvailable.
  ///
  /// In en, this message translates to:
  /// **'No other portraits available for replacement'**
  String get portraitNoOthersAvailable;

  /// No description provided for @portraitNoneFound.
  ///
  /// In en, this message translates to:
  /// **'No portrait replacements found.'**
  String get portraitNoneFound;

  /// No description provided for @portraitOpenOriginalFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder Of Original'**
  String get portraitOpenOriginalFolder;

  /// No description provided for @portraitOpenReplacementFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder of Replacement'**
  String get portraitOpenReplacementFolder;

  /// No description provided for @portraitOpenOriginal.
  ///
  /// In en, this message translates to:
  /// **'Open Original'**
  String get portraitOpenOriginal;

  /// No description provided for @portraitOpenReplacement.
  ///
  /// In en, this message translates to:
  /// **'Open Replacement'**
  String get portraitOpenReplacement;

  /// No description provided for @portraitOriginal.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get portraitOriginal;

  /// No description provided for @portraitOriginalNotFound.
  ///
  /// In en, this message translates to:
  /// **'Original portrait not found'**
  String get portraitOriginalNotFound;

  /// No description provided for @portraitPathLabel.
  ///
  /// In en, this message translates to:
  /// **'Path: {path}'**
  String portraitPathLabel(String path);

  /// No description provided for @portraitPickReplacement.
  ///
  /// In en, this message translates to:
  /// **'Pick Replacement'**
  String get portraitPickReplacement;

  /// No description provided for @portraitReplacement.
  ///
  /// In en, this message translates to:
  /// **'Portrait Replacement'**
  String get portraitReplacement;

  /// No description provided for @portraitReplacements.
  ///
  /// In en, this message translates to:
  /// **'Portrait Replacements'**
  String get portraitReplacements;

  /// No description provided for @portraitRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get portraitRetry;

  /// No description provided for @portraitRevertToOriginal.
  ///
  /// In en, this message translates to:
  /// **'Revert to Original'**
  String get portraitRevertToOriginal;

  /// No description provided for @portraitShowFilters.
  ///
  /// In en, this message translates to:
  /// **'Show filters'**
  String get portraitShowFilters;

  /// No description provided for @portraitSizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Size: {size}'**
  String portraitSizeLabel(String size);

  /// No description provided for @portraitUnderTheHood.
  ///
  /// In en, this message translates to:
  /// **'Under the Hood'**
  String get portraitUnderTheHood;

  /// No description provided for @portraitViewReplacements.
  ///
  /// In en, this message translates to:
  /// **'View Replacements'**
  String get portraitViewReplacements;

  /// No description provided for @shipsAlwaysShowEngineGlow.
  ///
  /// In en, this message translates to:
  /// **'Always show engine glow'**
  String get shipsAlwaysShowEngineGlow;

  /// No description provided for @shipsCopiedSpriteToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied sprite to clipboard.'**
  String get shipsCopiedSpriteToClipboard;

  /// No description provided for @shipsCopySpriteToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy sprite to clipboard'**
  String get shipsCopySpriteToClipboard;

  /// No description provided for @shipsOpenShipDataCsv.
  ///
  /// In en, this message translates to:
  /// **'Open ship_data.csv'**
  String get shipsOpenShipDataCsv;

  /// No description provided for @shipsOpenSpriteFolder.
  ///
  /// In en, this message translates to:
  /// **'Open sprite folder'**
  String get shipsOpenSpriteFolder;

  /// No description provided for @shipsHasBuiltInWeapons.
  ///
  /// In en, this message translates to:
  /// **'Has Built-in Weapons'**
  String get shipsHasBuiltInWeapons;

  /// No description provided for @shipsHasModules.
  ///
  /// In en, this message translates to:
  /// **'Has Modules'**
  String get shipsHasModules;

  /// No description provided for @shipsShowShipsThatAreModules.
  ///
  /// In en, this message translates to:
  /// **'Show Ships That Are Modules'**
  String get shipsShowShipsThatAreModules;

  /// No description provided for @hullmodsSpoilers.
  ///
  /// In en, this message translates to:
  /// **'Spoilers'**
  String get hullmodsSpoilers;

  /// No description provided for @weaponsAlwaysShowWeaponGlow.
  ///
  /// In en, this message translates to:
  /// **'Always show weapon glow'**
  String get weaponsAlwaysShowWeaponGlow;

  /// No description provided for @weaponsOpenWpnFile.
  ///
  /// In en, this message translates to:
  /// **'Open .wpn file'**
  String get weaponsOpenWpnFile;

  /// No description provided for @weaponsOpenWeaponDataFolder.
  ///
  /// In en, this message translates to:
  /// **'Open weapon data folder(s)'**
  String get weaponsOpenWeaponDataFolder;

  /// No description provided for @weaponsOpenWeaponDataCsv.
  ///
  /// In en, this message translates to:
  /// **'Open weapon_data.csv'**
  String get weaponsOpenWeaponDataCsv;

  /// No description provided for @weaponsShowHiddenWeapons.
  ///
  /// In en, this message translates to:
  /// **'Show Hidden Weapons'**
  String get weaponsShowHiddenWeapons;

  /// No description provided for @hullmodsExportToCsv.
  ///
  /// In en, this message translates to:
  /// **'Export to CSV'**
  String get hullmodsExportToCsv;

  /// No description provided for @hullmodsOpenHullmodDataFolder.
  ///
  /// In en, this message translates to:
  /// **'Open hullmod data folder'**
  String get hullmodsOpenHullmodDataFolder;

  /// No description provided for @hullmodsStretchIconsToFit.
  ///
  /// In en, this message translates to:
  /// **'Stretch icons to fit'**
  String get hullmodsStretchIconsToFit;

  /// No description provided for @hullmodsShowHiddenHullmods.
  ///
  /// In en, this message translates to:
  /// **'Show Hidden Hullmods'**
  String get hullmodsShowHiddenHullmods;

  /// No description provided for @factionViewerCopyId.
  ///
  /// In en, this message translates to:
  /// **'Copy ID'**
  String get factionViewerCopyId;

  /// No description provided for @factionViewerOpenModFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Mod Folder'**
  String get factionViewerOpenModFolder;

  /// No description provided for @factionViewerOpenFactionFile.
  ///
  /// In en, this message translates to:
  /// **'Open .faction file'**
  String get factionViewerOpenFactionFile;

  /// No description provided for @factionViewerOpenFactionFolder.
  ///
  /// In en, this message translates to:
  /// **'Open faction folder'**
  String get factionViewerOpenFactionFolder;

  /// No description provided for @factionViewerNoFactionsFound.
  ///
  /// In en, this message translates to:
  /// **'No factions found.'**
  String get factionViewerNoFactionsFound;

  /// No description provided for @factionViewerOnlyEnabledMods.
  ///
  /// In en, this message translates to:
  /// **'Only Enabled Mods'**
  String get factionViewerOnlyEnabledMods;

  /// No description provided for @factionViewerHideHiddenFactions.
  ///
  /// In en, this message translates to:
  /// **'Hide hidden factions'**
  String get factionViewerHideHiddenFactions;

  /// No description provided for @factionViewerHideModOnlyFactions.
  ///
  /// In en, this message translates to:
  /// **'Hide mod-only factions'**
  String get factionViewerHideModOnlyFactions;

  /// No description provided for @shipBlueprintAnimateEngines.
  ///
  /// In en, this message translates to:
  /// **'Animate engines'**
  String get shipBlueprintAnimateEngines;

  /// No description provided for @shipBlueprintAnimateShields.
  ///
  /// In en, this message translates to:
  /// **'Animate shields'**
  String get shipBlueprintAnimateShields;

  /// No description provided for @shipBlueprintStationModule.
  ///
  /// In en, this message translates to:
  /// **'Station Module'**
  String get shipBlueprintStationModule;

  /// No description provided for @shipCodexCardFighterBay.
  ///
  /// In en, this message translates to:
  /// **' Fighter bay'**
  String get shipCodexCardFighterBay;

  /// No description provided for @weaponCodexCardBaseValue.
  ///
  /// In en, this message translates to:
  /// **'Base value: '**
  String get weaponCodexCardBaseValue;

  /// No description provided for @weaponImageCellCopySpriteWithGlow.
  ///
  /// In en, this message translates to:
  /// **'Copy sprite (with glow)'**
  String get weaponImageCellCopySpriteWithGlow;

  /// No description provided for @spawnWeightsCalculatingSpawnWeights.
  ///
  /// In en, this message translates to:
  /// **'Calculating spawn weights…'**
  String get spawnWeightsCalculatingSpawnWeights;

  /// No description provided for @spawnWeightsFaction.
  ///
  /// In en, this message translates to:
  /// **'Faction'**
  String get spawnWeightsFaction;

  /// No description provided for @spawnWeightsRole.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get spawnWeightsRole;

  /// No description provided for @vanillaShareBarStillReadingMods.
  ///
  /// In en, this message translates to:
  /// **'Still reading mods'**
  String get vanillaShareBarStillReadingMods;

  /// No description provided for @vanillaShareBarVanilla.
  ///
  /// In en, this message translates to:
  /// **'Vanilla'**
  String get vanillaShareBarVanilla;

  /// No description provided for @launcherExecutable.
  ///
  /// In en, this message translates to:
  /// **'Executable: '**
  String get launcherExecutable;

  /// No description provided for @launcherGameIsRunning.
  ///
  /// In en, this message translates to:
  /// **'Game is running'**
  String get launcherGameIsRunning;

  /// No description provided for @launcherLaunchPrecheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Launch Precheck Failed'**
  String get launcherLaunchPrecheckFailed;

  /// No description provided for @launcherLaunchAnyway.
  ///
  /// In en, this message translates to:
  /// **'Launch anyway'**
  String get launcherLaunchAnyway;

  /// No description provided for @launcherRam.
  ///
  /// In en, this message translates to:
  /// **'RAM: '**
  String get launcherRam;

  /// No description provided for @ramChangerApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get ramChangerApply;

  /// No description provided for @vmparamsFileSelectorDialogMoreInformation.
  ///
  /// In en, this message translates to:
  /// **'More information'**
  String get vmparamsFileSelectorDialogMoreInformation;

  /// No description provided for @vmparamsFileSelectorDialogNoVmparamsTypeFiles.
  ///
  /// In en, this message translates to:
  /// **'No vmparams-type files found in the game directory.'**
  String get vmparamsFileSelectorDialogNoVmparamsTypeFiles;

  /// No description provided for @vmparamsFileSelectorDialogRescan.
  ///
  /// In en, this message translates to:
  /// **'Rescan'**
  String get vmparamsFileSelectorDialogRescan;

  /// No description provided for @vmparamsFileSelectorDialogVmparamsFiles.
  ///
  /// In en, this message translates to:
  /// **'vmparams Files'**
  String get vmparamsFileSelectorDialogVmparamsFiles;

  /// No description provided for @factionCardDoctrineTooltip.
  ///
  /// In en, this message translates to:
  /// **'{tooltip}: {value}/5\nNote: May be changed by mods.'**
  String factionCardDoctrineTooltip(String tooltip, num value);

  /// No description provided for @ramChangerRamGb.
  ///
  /// In en, this message translates to:
  /// **'{ram} GB'**
  String ramChangerRamGb(num ram);

  /// No description provided for @factionProfileDialogDoctrineTooltip.
  ///
  /// In en, this message translates to:
  /// **'{label}: {value}/{max}\nNote: May be changed by mods.'**
  String factionProfileDialogDoctrineTooltip(String label, num value, num max);

  /// No description provided for @factionProfileDialogModifiedBy.
  ///
  /// In en, this message translates to:
  /// **'Modified by: {modifiers}'**
  String factionProfileDialogModifiedBy(String modifiers);

  /// No description provided for @factionProfileDialogOpenFactionFile.
  ///
  /// In en, this message translates to:
  /// **'Open .faction file{suffix}'**
  String factionProfileDialogOpenFactionFile(String suffix);

  /// No description provided for @factionProfileDialogOpenFactionFolder.
  ///
  /// In en, this message translates to:
  /// **'Open faction folder{suffix}'**
  String factionProfileDialogOpenFactionFolder(String suffix);

  /// No description provided for @spawnWeightsOpenWeightFile.
  ///
  /// In en, this message translates to:
  /// **'Open the file that set this weight\n{path}'**
  String spawnWeightsOpenWeightFile(String path);

  /// No description provided for @shipsFailedToCopySprite.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy sprite: {error}'**
  String shipsFailedToCopySprite(String error);

  /// No description provided for @shipsOpenShipOrSkinFile.
  ///
  /// In en, this message translates to:
  /// **'Open {fileType} file'**
  String shipsOpenShipOrSkinFile(String fileType);

  /// No description provided for @shipBlueprintBackground.
  ///
  /// In en, this message translates to:
  /// **'Background: {label}'**
  String shipBlueprintBackground(String label);

  /// No description provided for @shipBlueprintModule.
  ///
  /// In en, this message translates to:
  /// **'Module: {moduleName}'**
  String shipBlueprintModule(String moduleName);

  /// No description provided for @shipBlueprintSlotType.
  ///
  /// In en, this message translates to:
  /// **'Type: {type}'**
  String shipBlueprintSlotType(String type);

  /// No description provided for @viewerCopyingImagesNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Copying images is not supported on this platform.'**
  String get viewerCopyingImagesNotSupported;

  /// No description provided for @shipsSkin.
  ///
  /// In en, this message translates to:
  /// **'Skin'**
  String get shipsSkin;

  /// No description provided for @shipsSkinOf.
  ///
  /// In en, this message translates to:
  /// **'of {hullName}'**
  String shipsSkinOf(String hullName);

  /// No description provided for @shipsShipFile.
  ///
  /// In en, this message translates to:
  /// **'Ship file'**
  String get shipsShipFile;

  /// No description provided for @weaponsWeaponFile.
  ///
  /// In en, this message translates to:
  /// **'Weapon file'**
  String get weaponsWeaponFile;

  /// No description provided for @weaponImageCellCopySpriteNoGlow.
  ///
  /// In en, this message translates to:
  /// **'Copy sprite (no glow)'**
  String get weaponImageCellCopySpriteNoGlow;

  /// No description provided for @weaponImageCellCopiedSpriteWithGlow.
  ///
  /// In en, this message translates to:
  /// **'Copied sprite (with glow) to clipboard.'**
  String get weaponImageCellCopiedSpriteWithGlow;

  /// No description provided for @shipsFilterOnlyEnabledModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show ships from enabled mods.\nShared with the weapons, factions and codex pages.'**
  String get shipsFilterOnlyEnabledModsTooltip;

  /// No description provided for @shipsFilterHasModulesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show ships that have modules.'**
  String get shipsFilterHasModulesTooltip;

  /// No description provided for @shipsFilterHasBuiltInWeaponsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show ships that have built-in weapons.'**
  String get shipsFilterHasBuiltInWeaponsTooltip;

  /// No description provided for @shipsFilterShowModuleShipsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show ships that are used as modules on other ships.'**
  String get shipsFilterShowModuleShipsTooltip;

  /// No description provided for @shipsSpoilerNone.
  ///
  /// In en, this message translates to:
  /// **'No Spoilers'**
  String get shipsSpoilerNone;

  /// No description provided for @shipsSpoilerSlight.
  ///
  /// In en, this message translates to:
  /// **'Show slight spoilers'**
  String get shipsSpoilerSlight;

  /// No description provided for @shipsSpoilerAll.
  ///
  /// In en, this message translates to:
  /// **'Show all spoilers'**
  String get shipsSpoilerAll;

  /// No description provided for @shipsSpoilerNoneTooltip.
  ///
  /// In en, this message translates to:
  /// **'No spoilers shown at all.'**
  String get shipsSpoilerNoneTooltip;

  /// No description provided for @shipsSpoilerSlightTooltip.
  ///
  /// In en, this message translates to:
  /// **'Shows CODEX_UNLOCKABLE ships.'**
  String get shipsSpoilerSlightTooltip;

  /// No description provided for @shipsSpoilerAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show all spoilers, including HIDE_IN_CODEX and certain ultra-redacted vanilla tagged ships'**
  String get shipsSpoilerAllTooltip;

  /// No description provided for @weaponsFilterOnlyEnabledModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show weapons from enabled mods.\nShared with the ships, factions and codex pages.'**
  String get weaponsFilterOnlyEnabledModsTooltip;

  /// No description provided for @weaponsFilterShowHiddenTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show hidden weapons (built-in, internal).'**
  String get weaponsFilterShowHiddenTooltip;

  /// No description provided for @weaponsSpoilerNone.
  ///
  /// In en, this message translates to:
  /// **'No spoilers'**
  String get weaponsSpoilerNone;

  /// No description provided for @weaponsSpoilerAll.
  ///
  /// In en, this message translates to:
  /// **'Show all spoilers'**
  String get weaponsSpoilerAll;

  /// No description provided for @weaponsSpoilerNoneTooltip.
  ///
  /// In en, this message translates to:
  /// **'Hides weapons tagged CODEX_UNLOCKABLE.'**
  String get weaponsSpoilerNoneTooltip;

  /// No description provided for @weaponsSpoilerAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'Shows weapons tagged CODEX_UNLOCKABLE.'**
  String get weaponsSpoilerAllTooltip;

  /// No description provided for @hullmodsFilterOnlyEnabledModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only hullmods from enabled mods.'**
  String get hullmodsFilterOnlyEnabledModsTooltip;

  /// No description provided for @hullmodsFilterShowHiddenTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show hidden hullmods (built-in, internal).'**
  String get hullmodsFilterShowHiddenTooltip;

  /// No description provided for @hullmodsSpoilerNone.
  ///
  /// In en, this message translates to:
  /// **'No spoilers'**
  String get hullmodsSpoilerNone;

  /// No description provided for @hullmodsSpoilerAll.
  ///
  /// In en, this message translates to:
  /// **'Show all spoilers'**
  String get hullmodsSpoilerAll;

  /// No description provided for @hullmodsSpoilerNoneTooltip.
  ///
  /// In en, this message translates to:
  /// **'Hides hullmods tagged CODEX_UNLOCKABLE or CODEX_REQUIRE_RELATED.'**
  String get hullmodsSpoilerNoneTooltip;

  /// No description provided for @hullmodsSpoilerAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'Shows hullmods tagged CODEX_UNLOCKABLE or CODEX_REQUIRE_RELATED.'**
  String get hullmodsSpoilerAllTooltip;

  /// No description provided for @factionViewerHideHiddenFactionsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Hide factions with showInIntelTab: false (Remnants, Omega, etc.)'**
  String get factionViewerHideHiddenFactionsTooltip;

  /// No description provided for @factionViewerSearchShips.
  ///
  /// In en, this message translates to:
  /// **'Search ships...'**
  String get factionViewerSearchShips;

  /// No description provided for @factionViewerSearchFactions.
  ///
  /// In en, this message translates to:
  /// **'Search factions...'**
  String get factionViewerSearchFactions;

  /// No description provided for @factionViewerOnlyEnabledModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Show faction data from enabled mods only.\nShips, weapons, and spawn weights added by disabled mods are hidden.'**
  String get factionViewerOnlyEnabledModsTooltip;

  /// No description provided for @factionViewerAscending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get factionViewerAscending;

  /// No description provided for @factionViewerDescending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get factionViewerDescending;

  /// No description provided for @factionViewerViewModeCards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get factionViewerViewModeCards;

  /// No description provided for @factionViewerViewModeGrid.
  ///
  /// In en, this message translates to:
  /// **'Grid'**
  String get factionViewerViewModeGrid;

  /// No description provided for @factionViewerSpawnWeights.
  ///
  /// In en, this message translates to:
  /// **'Spawn weights'**
  String get factionViewerSpawnWeights;

  /// No description provided for @factionViewerPatchOnly.
  ///
  /// In en, this message translates to:
  /// **'Patch only'**
  String get factionViewerPatchOnly;

  /// No description provided for @factionViewerNoWarshipsToSpawn.
  ///
  /// In en, this message translates to:
  /// **'This faction has no warships to spawn.'**
  String get factionViewerNoWarshipsToSpawn;

  /// No description provided for @factionCardFleetWeights.
  ///
  /// In en, this message translates to:
  /// **'Fleet Wgts:'**
  String get factionCardFleetWeights;

  /// No description provided for @factionCardFleetWeightsTooltip.
  ///
  /// In en, this message translates to:
  /// **'How much of the fleet weight is contributed by vanilla/mods'**
  String get factionCardFleetWeightsTooltip;

  /// No description provided for @factionCardCalculatingFleetWeights.
  ///
  /// In en, this message translates to:
  /// **'Calculating fleet weights…'**
  String get factionCardCalculatingFleetWeights;

  /// No description provided for @factionCardModsAddedOne.
  ///
  /// In en, this message translates to:
  /// **'{name} +{count} mod'**
  String factionCardModsAddedOne(String name, num count);

  /// No description provided for @factionCardModsAddedMany.
  ///
  /// In en, this message translates to:
  /// **'{name} +{count} mods'**
  String factionCardModsAddedMany(String name, num count);

  /// No description provided for @factionCardWar.
  ///
  /// In en, this message translates to:
  /// **'War'**
  String get factionCardWar;

  /// No description provided for @factionCardCarr.
  ///
  /// In en, this message translates to:
  /// **'Carr'**
  String get factionCardCarr;

  /// No description provided for @factionCardPhse.
  ///
  /// In en, this message translates to:
  /// **'Phse'**
  String get factionCardPhse;

  /// No description provided for @factionCardOffQ.
  ///
  /// In en, this message translates to:
  /// **'OffQ'**
  String get factionCardOffQ;

  /// No description provided for @factionCardShpQ.
  ///
  /// In en, this message translates to:
  /// **'ShpQ'**
  String get factionCardShpQ;

  /// No description provided for @factionCardFleet.
  ///
  /// In en, this message translates to:
  /// **'Fleet'**
  String get factionCardFleet;

  /// No description provided for @factionCardShpNum.
  ///
  /// In en, this message translates to:
  /// **'Shp#'**
  String get factionCardShpNum;

  /// No description provided for @factionCardAggr.
  ///
  /// In en, this message translates to:
  /// **'Aggr'**
  String get factionCardAggr;

  /// No description provided for @factionCardStatShips.
  ///
  /// In en, this message translates to:
  /// **'Ships'**
  String get factionCardStatShips;

  /// No description provided for @factionCardStatWpns.
  ///
  /// In en, this message translates to:
  /// **'Wpns'**
  String get factionCardStatWpns;

  /// No description provided for @factionCardStatMods.
  ///
  /// In en, this message translates to:
  /// **'Mods'**
  String get factionCardStatMods;

  /// No description provided for @factionDoctrineWarships.
  ///
  /// In en, this message translates to:
  /// **'Warships'**
  String get factionDoctrineWarships;

  /// No description provided for @factionDoctrineCarriers.
  ///
  /// In en, this message translates to:
  /// **'Carriers'**
  String get factionDoctrineCarriers;

  /// No description provided for @factionDoctrinePhaseShips.
  ///
  /// In en, this message translates to:
  /// **'Phase Ships'**
  String get factionDoctrinePhaseShips;

  /// No description provided for @factionDoctrineOfficerQuality.
  ///
  /// In en, this message translates to:
  /// **'Officer Quality'**
  String get factionDoctrineOfficerQuality;

  /// No description provided for @factionDoctrineShipQuality.
  ///
  /// In en, this message translates to:
  /// **'Ship Quality'**
  String get factionDoctrineShipQuality;

  /// No description provided for @factionDoctrineFleetSize.
  ///
  /// In en, this message translates to:
  /// **'Fleet Size'**
  String get factionDoctrineFleetSize;

  /// No description provided for @factionDoctrineShipSize.
  ///
  /// In en, this message translates to:
  /// **'Ship Size'**
  String get factionDoctrineShipSize;

  /// No description provided for @factionDoctrineAggression.
  ///
  /// In en, this message translates to:
  /// **'Aggression'**
  String get factionDoctrineAggression;

  /// No description provided for @factionDoctrinePhase.
  ///
  /// In en, this message translates to:
  /// **'Phase'**
  String get factionDoctrinePhase;

  /// No description provided for @factionProfileDialogDoctrine.
  ///
  /// In en, this message translates to:
  /// **'Doctrine'**
  String get factionProfileDialogDoctrine;

  /// No description provided for @factionProfileDialogFleet.
  ///
  /// In en, this message translates to:
  /// **'Fleet'**
  String get factionProfileDialogFleet;

  /// No description provided for @factionProfileDialogPortraits.
  ///
  /// In en, this message translates to:
  /// **'Portraits'**
  String get factionProfileDialogPortraits;

  /// No description provided for @factionProfileDialogBehavior.
  ///
  /// In en, this message translates to:
  /// **'Behavior'**
  String get factionProfileDialogBehavior;

  /// No description provided for @factionProfileDialogModsAddingFaction.
  ///
  /// In en, this message translates to:
  /// **'Mods that add/modify this faction'**
  String get factionProfileDialogModsAddingFaction;

  /// No description provided for @factionProfileDialogShipPrefix.
  ///
  /// In en, this message translates to:
  /// **'Ship prefix: {prefix}'**
  String factionProfileDialogShipPrefix(String prefix);

  /// No description provided for @factionProfileDialogPortraitsCount.
  ///
  /// In en, this message translates to:
  /// **'{maleCount} male, {femaleCount} female'**
  String factionProfileDialogPortraitsCount(num maleCount, num femaleCount);

  /// No description provided for @factionProfileDialogMoreCount.
  ///
  /// In en, this message translates to:
  /// **'+{count} more'**
  String factionProfileDialogMoreCount(num count);

  /// No description provided for @factionProfileDialogIllegalCommodities.
  ///
  /// In en, this message translates to:
  /// **'Illegal commodities: {commodities}'**
  String factionProfileDialogIllegalCommodities(String commodities);

  /// No description provided for @factionProfileDialogAddedBy.
  ///
  /// In en, this message translates to:
  /// **'Added by: {name}'**
  String factionProfileDialogAddedBy(String name);

  /// No description provided for @factionProfileDialogNotAddedByEnabledMod.
  ///
  /// In en, this message translates to:
  /// **'Not added by any enabled mod. It may belong to a disabled mod.'**
  String get factionProfileDialogNotAddedByEnabledMod;

  /// No description provided for @factionProfileDialogSeeAllShips.
  ///
  /// In en, this message translates to:
  /// **'See all ships'**
  String get factionProfileDialogSeeAllShips;

  /// No description provided for @factionProfileDialogShipSpoilers.
  ///
  /// In en, this message translates to:
  /// **'Ship spoilers'**
  String get factionProfileDialogShipSpoilers;

  /// No description provided for @factionProfileDialogWeaponSpoilers.
  ///
  /// In en, this message translates to:
  /// **'Weapon spoilers'**
  String get factionProfileDialogWeaponSpoilers;

  /// No description provided for @factionProfileDialogNoSpoilers.
  ///
  /// In en, this message translates to:
  /// **'No spoilers'**
  String get factionProfileDialogNoSpoilers;

  /// No description provided for @factionProfileDialogSlightSpoilers.
  ///
  /// In en, this message translates to:
  /// **'Slight spoilers'**
  String get factionProfileDialogSlightSpoilers;

  /// No description provided for @factionProfileDialogAllSpoilers.
  ///
  /// In en, this message translates to:
  /// **'All spoilers'**
  String get factionProfileDialogAllSpoilers;

  /// No description provided for @factionProfileDialogSectionCount.
  ///
  /// In en, this message translates to:
  /// **'{label}: {total}'**
  String factionProfileDialogSectionCount(String label, num total);

  /// No description provided for @factionProfileDialogSectionCountShown.
  ///
  /// In en, this message translates to:
  /// **'{label}: {total} ({shown} shown)'**
  String factionProfileDialogSectionCountShown(
    String label,
    num total,
    num shown,
  );

  /// No description provided for @factionProfileDialogSectionCountZero.
  ///
  /// In en, this message translates to:
  /// **'{label}: 0'**
  String factionProfileDialogSectionCountZero(String label);

  /// No description provided for @factionProfileDialogSectionCountNoneShown.
  ///
  /// In en, this message translates to:
  /// **'{label}: {total} (0 shown)'**
  String factionProfileDialogSectionCountNoneShown(String label, num total);

  /// No description provided for @spawnWeightsFallbackRole.
  ///
  /// In en, this message translates to:
  /// **'Nothing spawns in \"{selectedRole}\" here, so the game uses \"{fallbackRole}\" instead.'**
  String spawnWeightsFallbackRole(String selectedRole, String fallbackRole);

  /// No description provided for @spawnWeightsNothingToSpawn.
  ///
  /// In en, this message translates to:
  /// **'Nothing to spawn in \"{role}\" for this faction.'**
  String spawnWeightsNothingToSpawn(String role);

  /// No description provided for @spawnWeightsNothingToSpawnFallback.
  ///
  /// In en, this message translates to:
  /// **'Nothing to spawn in \"{role}\" for this faction, so the game picks from \"{fallbackRole}\" instead.'**
  String spawnWeightsNothingToSpawnFallback(String role, String fallbackRole);

  /// No description provided for @spawnWeightsFooterTooltip.
  ///
  /// In en, this message translates to:
  /// **'These numbers miss a few things:\n• ships that mods add in code\n• the game trimming ships that cost too many fleet points\n• combat freighters being mixed in\n• mods that fully replace a file instead of adding to it'**
  String get spawnWeightsFooterTooltip;

  /// No description provided for @spawnWeightsFooterNote.
  ///
  /// In en, this message translates to:
  /// **'These numbers are close but not exact. Hover for details.'**
  String get spawnWeightsFooterNote;

  /// No description provided for @spawnWeightsSkippedEntries.
  ///
  /// In en, this message translates to:
  /// **' {count} entries were left out because their ship is not installed.'**
  String spawnWeightsSkippedEntries(num count);

  /// No description provided for @spawnWeightsNoShipsMatchSearch.
  ///
  /// In en, this message translates to:
  /// **'No ships match your search.'**
  String get spawnWeightsNoShipsMatchSearch;

  /// No description provided for @spawnWeightsPriorityLegend.
  ///
  /// In en, this message translates to:
  /// **'Priority ship. The faction favors these, so they spawn more than their weight alone suggests.'**
  String get spawnWeightsPriorityLegend;

  /// No description provided for @spawnWeightsPriorityTooltip.
  ///
  /// In en, this message translates to:
  /// **'Priority ship: this faction favors it, so it spawns more often than its weight alone suggests.'**
  String get spawnWeightsPriorityTooltip;

  /// No description provided for @spawnWeightsHeaderShip.
  ///
  /// In en, this message translates to:
  /// **'Ship'**
  String get spawnWeightsHeaderShip;

  /// No description provided for @spawnWeightsHeaderSize.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get spawnWeightsHeaderSize;

  /// No description provided for @spawnWeightsHeaderWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get spawnWeightsHeaderWeight;

  /// No description provided for @spawnWeightsHeaderWeightTooltip.
  ///
  /// In en, this message translates to:
  /// **'The number the game files give this ship.\nHigher means it gets picked more often.'**
  String get spawnWeightsHeaderWeightTooltip;

  /// No description provided for @spawnWeightsHeaderShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get spawnWeightsHeaderShare;

  /// No description provided for @spawnWeightsHeaderShareTooltip.
  ///
  /// In en, this message translates to:
  /// **'This ship\'s slice of the total weight for this role.'**
  String get spawnWeightsHeaderShareTooltip;

  /// No description provided for @spawnWeightsHeaderSetBy.
  ///
  /// In en, this message translates to:
  /// **'Set by'**
  String get spawnWeightsHeaderSetBy;

  /// No description provided for @spawnWeightsHeaderSetByTooltip.
  ///
  /// In en, this message translates to:
  /// **'The mod (or the base game) whose file set this weight.'**
  String get spawnWeightsHeaderSetByTooltip;

  /// No description provided for @vanillaShareStillReading.
  ///
  /// In en, this message translates to:
  /// **'Still reading the mods. The split will show once that finishes.'**
  String get vanillaShareStillReading;

  /// No description provided for @vanillaShareTooltipOne.
  ///
  /// In en, this message translates to:
  /// **'When the game builds a fleet for this faction, {share} of the chance to pick each ship comes from the base game. The rest comes from 1 mod.\n\nThis is a share of spawn chance, not a share of ships.'**
  String vanillaShareTooltipOne(String share);

  /// No description provided for @vanillaShareTooltipMany.
  ///
  /// In en, this message translates to:
  /// **'When the game builds a fleet for this faction, {share} of the chance to pick each ship comes from the base game. The rest comes from {modCount} mods.\n\nThis is a share of spawn chance, not a share of ships.'**
  String vanillaShareTooltipMany(String share, num modCount);

  /// No description provided for @vanillaShareSegmentTooltip.
  ///
  /// In en, this message translates to:
  /// **'{name}: {share}'**
  String vanillaShareSegmentTooltip(String name, String share);

  /// No description provided for @vanillaShareSegmentTooltipOfFaction.
  ///
  /// In en, this message translates to:
  /// **'{name}: {share} of {faction}\'s spawn weight'**
  String vanillaShareSegmentTooltipOfFaction(
    String name,
    String share,
    String faction,
  );

  /// No description provided for @vanillaShareStillReadingUnsorted.
  ///
  /// In en, this message translates to:
  /// **'Still reading mods. This part isn\'t sorted yet.'**
  String get vanillaShareStillReadingUnsorted;

  /// No description provided for @vanillaShareBarVanillaShare.
  ///
  /// In en, this message translates to:
  /// **'Vanilla: {share}'**
  String vanillaShareBarVanillaShare(String share);

  /// No description provided for @vanillaShareBarVanillaDash.
  ///
  /// In en, this message translates to:
  /// **'Vanilla: —'**
  String get vanillaShareBarVanillaDash;

  /// No description provided for @shipBlueprintHardpoint.
  ///
  /// In en, this message translates to:
  /// **'Hardpoint'**
  String get shipBlueprintHardpoint;

  /// No description provided for @shipBlueprintTurret.
  ///
  /// In en, this message translates to:
  /// **'Turret'**
  String get shipBlueprintTurret;

  /// No description provided for @shipBlueprintBuiltIn.
  ///
  /// In en, this message translates to:
  /// **'Built-in: {name}'**
  String shipBlueprintBuiltIn(String name);

  /// No description provided for @shipBlueprintSizeMount.
  ///
  /// In en, this message translates to:
  /// **'{size} {mount}'**
  String shipBlueprintSizeMount(String size, String mount);

  /// No description provided for @shipBlueprintArc.
  ///
  /// In en, this message translates to:
  /// **'Arc: {arc}°'**
  String shipBlueprintArc(String arc);

  /// No description provided for @shipBlueprintAngle.
  ///
  /// In en, this message translates to:
  /// **'Angle: {angle}°'**
  String shipBlueprintAngle(String angle);

  /// No description provided for @ramChangerCannotWrite.
  ///
  /// In en, this message translates to:
  /// **'Cannot write to vmparams file:\n{files}.\n\nMake sure it exists or try running {appName} as an administrator.'**
  String ramChangerCannotWrite(String files, String appName);

  /// No description provided for @ramChangerMbSetIn.
  ///
  /// In en, this message translates to:
  /// **'{ram} MB set in {path}'**
  String ramChangerMbSetIn(String ram, String path);

  /// No description provided for @ramChangerOrCustomRam.
  ///
  /// In en, this message translates to:
  /// **'or set a custom RAM assignment'**
  String get ramChangerOrCustomRam;

  /// No description provided for @vmparamsFileSelectorDialogIntro.
  ///
  /// In en, this message translates to:
  /// **'Select which files TriOS should use for reading and writing RAM allocation.'**
  String get vmparamsFileSelectorDialogIntro;

  /// No description provided for @vmparamsFileSelectorDialogMoreInfoBody.
  ///
  /// In en, this message translates to:
  /// **'Different game launchers use different configuration files.\n\nFor example, if you launch the game using Fast Rendering, it will use the amount of RAM specified in the `starsector-core/fr.vmparams` file (as of March 2026).\n\n{appName} scanned your game folder for files containing a pattern for Java RAM allocation arguments `(?<=xmx).*?(?=\\s)`.\n\nFor each of these files checked below, when you pick a RAM value, it will surgically modify just the RAM allocation part of those files without changing the rest of the file.'**
  String vmparamsFileSelectorDialogMoreInfoBody(String appName);

  /// No description provided for @vmparamsFileSelectorDialogRamNotDetected.
  ///
  /// In en, this message translates to:
  /// **'RAM not detected'**
  String get vmparamsFileSelectorDialogRamNotDetected;

  /// No description provided for @vmparamsFileSelectorDialogSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get vmparamsFileSelectorDialogSave;

  /// No description provided for @launcherLaunch.
  ///
  /// In en, this message translates to:
  /// **'Launch {version}'**
  String launcherLaunch(String version);

  /// No description provided for @launcherRunning.
  ///
  /// In en, this message translates to:
  /// **'RUNNING...'**
  String get launcherRunning;

  /// No description provided for @launcherLaunchButton.
  ///
  /// In en, this message translates to:
  /// **'LAUNCH'**
  String get launcherLaunchButton;

  /// No description provided for @launcherTipNeverRequired.
  ///
  /// In en, this message translates to:
  /// **'\nTip: {appName} is never required to launch the game.'**
  String launcherTipNeverRequired(String appName);

  /// No description provided for @launcherDirectLaunchWarning.
  ///
  /// In en, this message translates to:
  /// **'Direct Launch is on.\nInvisible ships, zoomed-in combat,\nand more may result.'**
  String get launcherDirectLaunchWarning;

  /// No description provided for @launcherUnknownRam.
  ///
  /// In en, this message translates to:
  /// **'(unknown RAM)'**
  String get launcherUnknownRam;

  /// No description provided for @launcherPrecheckModIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Mod {modName} requires game version {modVersion} and is not compatible with {gameVersion}.'**
  String launcherPrecheckModIncompatible(
    String modName,
    String modVersion,
    String gameVersion,
  );

  /// No description provided for @launcherPrecheckDependencyMissing.
  ///
  /// In en, this message translates to:
  /// **'Dependency {dependency} is missing'**
  String launcherPrecheckDependencyMissing(String dependency);

  /// No description provided for @launcherPrecheckDependencyDisabled.
  ///
  /// In en, this message translates to:
  /// **'Dependency {dependency} is disabled'**
  String launcherPrecheckDependencyDisabled(String dependency);

  /// No description provided for @launcherPrecheckDependencyWrongVersion.
  ///
  /// In en, this message translates to:
  /// **'Dependency {dependency} has wrong version'**
  String launcherPrecheckDependencyWrongVersion(String dependency);

  /// No description provided for @launcherPrecheckForceCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Force compatibility (not recommended)'**
  String get launcherPrecheckForceCompatibility;

  /// No description provided for @factionProfileDialogFactionColor.
  ///
  /// In en, this message translates to:
  /// **'Faction color'**
  String get factionProfileDialogFactionColor;

  /// No description provided for @factionProfileDialogKnownShips.
  ///
  /// In en, this message translates to:
  /// **'Known Ships'**
  String get factionProfileDialogKnownShips;

  /// No description provided for @factionProfileDialogKnownWeapons.
  ///
  /// In en, this message translates to:
  /// **'Known Weapons'**
  String get factionProfileDialogKnownWeapons;

  /// No description provided for @factionProfileDialogKnownFighters.
  ///
  /// In en, this message translates to:
  /// **'Known Fighters'**
  String get factionProfileDialogKnownFighters;

  /// No description provided for @factionProfileDialogKnownHullmods.
  ///
  /// In en, this message translates to:
  /// **'Known Hullmods'**
  String get factionProfileDialogKnownHullmods;

  /// No description provided for @onboardingUpTo.
  ///
  /// In en, this message translates to:
  /// **' (up to '**
  String get onboardingUpTo;

  /// No description provided for @onboarding2.
  ///
  /// In en, this message translates to:
  /// **'ಠ_ಠ'**
  String get onboarding2;

  /// No description provided for @onboardingAllowReporting.
  ///
  /// In en, this message translates to:
  /// **'Allow Reporting'**
  String get onboardingAllowReporting;

  /// No description provided for @onboardingEnableOneClickMod.
  ///
  /// In en, this message translates to:
  /// **'Enable one-click mod install'**
  String get onboardingEnableOneClickMod;

  /// No description provided for @onboardingKeepReportingDisabled.
  ///
  /// In en, this message translates to:
  /// **'Keep Reporting Disabled'**
  String get onboardingKeepReportingDisabled;

  /// No description provided for @onboardingKeepAllModVersions.
  ///
  /// In en, this message translates to:
  /// **'Keep all mod versions'**
  String get onboardingKeepAllModVersions;

  /// No description provided for @onboardingKeepOnlyOneMod.
  ///
  /// In en, this message translates to:
  /// **'Keep only one mod version'**
  String get onboardingKeepOnlyOneMod;

  /// No description provided for @toolbarChangelog.
  ///
  /// In en, this message translates to:
  /// **'{appName} Changelog'**
  String toolbarChangelog(String appName);

  /// No description provided for @toolbarChatWith.
  ///
  /// In en, this message translates to:
  /// **'Chat with {name}'**
  String toolbarChatWith(String name);

  /// No description provided for @toolbarOpenAppLogFileFolder.
  ///
  /// In en, this message translates to:
  /// **'Open {appName} log file folder'**
  String toolbarOpenAppLogFileFolder(String appName);

  /// No description provided for @toolbarRearrangeIcons.
  ///
  /// In en, this message translates to:
  /// **'Rearrange icons'**
  String get toolbarRearrangeIcons;

  /// No description provided for @app_action_buttonsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get app_action_buttonsAbout;

  /// No description provided for @app_action_buttonsDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get app_action_buttonsDisabled;

  /// No description provided for @app_action_buttonsDonations.
  ///
  /// In en, this message translates to:
  /// **'Donations'**
  String get app_action_buttonsDonations;

  /// No description provided for @app_action_buttonsHideDonationButton.
  ///
  /// In en, this message translates to:
  /// **'Hide donation button'**
  String get app_action_buttonsHideDonationButton;

  /// No description provided for @app_action_buttonsHideLayoutToggle.
  ///
  /// In en, this message translates to:
  /// **'Hide layout toggle'**
  String get app_action_buttonsHideLayoutToggle;

  /// No description provided for @app_action_buttonsNotYetDetecting.
  ///
  /// In en, this message translates to:
  /// **'Not yet detecting'**
  String get app_action_buttonsNotYetDetecting;

  /// No description provided for @app_action_buttonsOpenStarsectorFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Starsector folder'**
  String get app_action_buttonsOpenStarsectorFolder;

  /// No description provided for @app_action_buttonsSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get app_action_buttonsSettings;

  /// No description provided for @app_action_buttonsShowDonationPopup.
  ///
  /// In en, this message translates to:
  /// **'Show donation popup'**
  String get app_action_buttonsShowDonationPopup;

  /// No description provided for @activity_icon_buttonDismissNotification.
  ///
  /// In en, this message translates to:
  /// **'Dismiss notification'**
  String get activity_icon_buttonDismissNotification;

  /// No description provided for @activity_icon_buttonEnableAllNewlyInstalled.
  ///
  /// In en, this message translates to:
  /// **'Enable all newly installed mods'**
  String get activity_icon_buttonEnableAllNewlyInstalled;

  /// No description provided for @activity_icon_buttonHideThisPopup.
  ///
  /// In en, this message translates to:
  /// **'Hide this popup'**
  String get activity_icon_buttonHideThisPopup;

  /// No description provided for @activity_icon_buttonInstallationActivity.
  ///
  /// In en, this message translates to:
  /// **'Installation Activity'**
  String get activity_icon_buttonInstallationActivity;

  /// No description provided for @app_sidebarExitRearrangeMode.
  ///
  /// In en, this message translates to:
  /// **'Exit rearrange mode'**
  String get app_sidebarExitRearrangeMode;

  /// No description provided for @app_sidebarSwitchLayout.
  ///
  /// In en, this message translates to:
  /// **'Switch layout'**
  String get app_sidebarSwitchLayout;

  /// No description provided for @app_sidebarTabRearrangeModeIs.
  ///
  /// In en, this message translates to:
  /// **'Tab rearrange mode is on'**
  String get app_sidebarTabRearrangeModeIs;

  /// No description provided for @app_right_toolbarKoFi.
  ///
  /// In en, this message translates to:
  /// **'Ko-Fi'**
  String get app_right_toolbarKoFi;

  /// No description provided for @app_right_toolbarPatreon.
  ///
  /// In en, this message translates to:
  /// **'Patreon'**
  String get app_right_toolbarPatreon;

  /// No description provided for @nav_reorder_menuResetNavOrder.
  ///
  /// In en, this message translates to:
  /// **'Reset nav order?'**
  String get nav_reorder_menuResetNavOrder;

  /// No description provided for @nav_reorder_menuResetToDefaultOrder.
  ///
  /// In en, this message translates to:
  /// **'Reset to default order'**
  String get nav_reorder_menuResetToDefaultOrder;

  /// No description provided for @dashboardError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String dashboardError(String error);

  /// No description provided for @dashboardNoLogLoaded.
  ///
  /// In en, this message translates to:
  /// **'No log loaded'**
  String get dashboardNoLogLoaded;

  /// No description provided for @dashboardRamAndGameSettings.
  ///
  /// In en, this message translates to:
  /// **'RAM and Game Settings'**
  String get dashboardRamAndGameSettings;

  /// No description provided for @launch_with_settingsChangeWhichFileLaunches.
  ///
  /// In en, this message translates to:
  /// **'Change which file launches the game'**
  String get launch_with_settingsChangeWhichFileLaunches;

  /// No description provided for @launch_with_settingsClearCustomLaunchSettings.
  ///
  /// In en, this message translates to:
  /// **'Clear Custom Launch Settings'**
  String get launch_with_settingsClearCustomLaunchSettings;

  /// No description provided for @launch_with_settingsFullscreen.
  ///
  /// In en, this message translates to:
  /// **'Fullscreen'**
  String get launch_with_settingsFullscreen;

  /// No description provided for @launch_with_settingsSound.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get launch_with_settingsSound;

  /// No description provided for @game_performanceChooseWhichVmparamsFiles.
  ///
  /// In en, this message translates to:
  /// **'Choose which vmparams files to manage'**
  String get game_performanceChooseWhichVmparamsFiles;

  /// No description provided for @game_performanceGameDirectoryNotSet.
  ///
  /// In en, this message translates to:
  /// **'Game directory not set.'**
  String get game_performanceGameDirectoryNotSet;

  /// No description provided for @game_performanceResetToFps.
  ///
  /// In en, this message translates to:
  /// **'Reset to 60 FPS'**
  String get game_performanceResetToFps;

  /// No description provided for @game_performanceUseVsync.
  ///
  /// In en, this message translates to:
  /// **'Use Vsync'**
  String get game_performanceUseVsync;

  /// No description provided for @mod_dependenciesRequiredMods.
  ///
  /// In en, this message translates to:
  /// **'Required Mods:'**
  String get mod_dependenciesRequiredMods;

  /// No description provided for @mod_list_basicAreYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get mod_list_basicAreYouSure;

  /// No description provided for @mod_list_basicColorful.
  ///
  /// In en, this message translates to:
  /// **'Colorful'**
  String get mod_list_basicColorful;

  /// No description provided for @mod_list_basicMoreSettings.
  ///
  /// In en, this message translates to:
  /// **'More Settings'**
  String get mod_list_basicMoreSettings;

  /// No description provided for @mod_list_basicMutedUpdates.
  ///
  /// In en, this message translates to:
  /// **'Muted updates'**
  String get mod_list_basicMutedUpdates;

  /// No description provided for @mod_list_basicSortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get mod_list_basicSortBy;

  /// No description provided for @mod_list_basicSwapOnUpdate.
  ///
  /// In en, this message translates to:
  /// **'Swap on Update'**
  String get mod_list_basicSwapOnUpdate;

  /// No description provided for @tipsAboutTipsHider.
  ///
  /// In en, this message translates to:
  /// **'About Tips Hider'**
  String get tipsAboutTipsHider;

  /// No description provided for @tipsEnabledModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Enabled Mods Only'**
  String get tipsEnabledModsOnly;

  /// No description provided for @tipsError.
  ///
  /// In en, this message translates to:
  /// **'Error: {errorMessage}'**
  String tipsError(String errorMessage);

  /// No description provided for @tipsGroupByMod.
  ///
  /// In en, this message translates to:
  /// **'Group By Mod'**
  String get tipsGroupByMod;

  /// No description provided for @tipsNoGrouping.
  ///
  /// In en, this message translates to:
  /// **'No Grouping'**
  String get tipsNoGrouping;

  /// No description provided for @tipsNoTipsOrMods.
  ///
  /// In en, this message translates to:
  /// **'No tips (or mods) found.'**
  String get tipsNoTipsOrMods;

  /// No description provided for @tipsSelect.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get tipsSelect;

  /// No description provided for @tipsSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get tipsSelectAll;

  /// No description provided for @tipsShowHidden.
  ///
  /// In en, this message translates to:
  /// **'Show Hidden'**
  String get tipsShowHidden;

  /// No description provided for @tipsTipsHider.
  ///
  /// In en, this message translates to:
  /// **'Tips Hider'**
  String get tipsTipsHider;

  /// No description provided for @triosCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get triosCancel;

  /// No description provided for @triosOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get triosOk;

  /// No description provided for @triosAreYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get triosAreYouSure;

  /// No description provided for @triosClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get triosClear;

  /// No description provided for @triosClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get triosClearAll;

  /// No description provided for @triosEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get triosEnable;

  /// No description provided for @triosDisable.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get triosDisable;

  /// No description provided for @triosUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get triosUpdate;

  /// No description provided for @triosReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get triosReset;

  /// No description provided for @triosSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get triosSettings;

  /// No description provided for @triosNoThanks.
  ///
  /// In en, this message translates to:
  /// **'No thanks'**
  String get triosNoThanks;

  /// No description provided for @triosModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Mod Profiles'**
  String get triosModProfiles;

  /// No description provided for @triosOpenModFolder.
  ///
  /// In en, this message translates to:
  /// **'Open mod folder'**
  String get triosOpenModFolder;

  /// No description provided for @triosViewChangelog.
  ///
  /// In en, this message translates to:
  /// **'View Changelog'**
  String get triosViewChangelog;

  /// No description provided for @triosEnableThisMod.
  ///
  /// In en, this message translates to:
  /// **'Enable this mod'**
  String get triosEnableThisMod;

  /// No description provided for @contextMenuForceToVersion.
  ///
  /// In en, this message translates to:
  /// **'Force to {version}'**
  String contextMenuForceToVersion(String version);

  /// No description provided for @contextMenuInstallLinkCopiedTo.
  ///
  /// In en, this message translates to:
  /// **'Install link copied to clipboard.'**
  String get contextMenuInstallLinkCopiedTo;

  /// No description provided for @contextMenuModSources.
  ///
  /// In en, this message translates to:
  /// **'Mod Sources...'**
  String get contextMenuModSources;

  /// No description provided for @contextMenuOpenFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder...'**
  String get contextMenuOpenFolder;

  /// No description provided for @contextMenuChangeTo.
  ///
  /// In en, this message translates to:
  /// **'Change to...'**
  String get contextMenuChangeTo;

  /// No description provided for @contextMenuOpenModInfoJson.
  ///
  /// In en, this message translates to:
  /// **'Open mod_info.json'**
  String get contextMenuOpenModInfoJson;

  /// No description provided for @contextMenuDeleteMod.
  ///
  /// In en, this message translates to:
  /// **'Delete Mod...'**
  String get contextMenuDeleteMod;

  /// No description provided for @contextMenuAllButVersion.
  ///
  /// In en, this message translates to:
  /// **'All but {version}'**
  String contextMenuAllButVersion(String version);

  /// No description provided for @contextMenuAllVersions.
  ///
  /// In en, this message translates to:
  /// **'All versions'**
  String get contextMenuAllVersions;

  /// No description provided for @contextMenuDeleteMods.
  ///
  /// In en, this message translates to:
  /// **'Delete Mods...'**
  String get contextMenuDeleteMods;

  /// No description provided for @contextMenuAllButEnabledHighest.
  ///
  /// In en, this message translates to:
  /// **'All but enabled/highest version of each'**
  String get contextMenuAllButEnabledHighest;

  /// No description provided for @contextMenuAllSelectedMods.
  ///
  /// In en, this message translates to:
  /// **'All selected mods'**
  String get contextMenuAllSelectedMods;

  /// No description provided for @contextMenuTroubleshoot.
  ///
  /// In en, this message translates to:
  /// **'Troubleshoot...'**
  String get contextMenuTroubleshoot;

  /// No description provided for @contextMenuShowRawInfo.
  ///
  /// In en, this message translates to:
  /// **'Show Raw Info'**
  String get contextMenuShowRawInfo;

  /// No description provided for @contextMenuEstimateVramUsage.
  ///
  /// In en, this message translates to:
  /// **'Estimate VRAM Usage'**
  String get contextMenuEstimateVramUsage;

  /// No description provided for @contextMenuOpenInSidePanel.
  ///
  /// In en, this message translates to:
  /// **'Open in side panel'**
  String get contextMenuOpenInSidePanel;

  /// No description provided for @contextMenuUnmuteUpdates.
  ///
  /// In en, this message translates to:
  /// **'Unmute updates'**
  String get contextMenuUnmuteUpdates;

  /// No description provided for @contextMenuMuteUpdates.
  ///
  /// In en, this message translates to:
  /// **'Mute updates'**
  String get contextMenuMuteUpdates;

  /// No description provided for @contextMenuMuteAllUpdates.
  ///
  /// In en, this message translates to:
  /// **'Mute all updates'**
  String get contextMenuMuteAllUpdates;

  /// No description provided for @contextMenuView.
  ///
  /// In en, this message translates to:
  /// **'View...'**
  String get contextMenuView;

  /// No description provided for @contextMenuShips.
  ///
  /// In en, this message translates to:
  /// **'Ships'**
  String get contextMenuShips;

  /// No description provided for @contextMenuWeapons.
  ///
  /// In en, this message translates to:
  /// **'Weapons'**
  String get contextMenuWeapons;

  /// No description provided for @contextMenuHullmods.
  ///
  /// In en, this message translates to:
  /// **'Hullmods'**
  String get contextMenuHullmods;

  /// No description provided for @contextMenuFactionsCount.
  ///
  /// In en, this message translates to:
  /// **'Factions ({count})'**
  String contextMenuFactionsCount(num count);

  /// No description provided for @contextMenuViewAllInFaction.
  ///
  /// In en, this message translates to:
  /// **'View all in Faction Viewer'**
  String get contextMenuViewAllInFaction;

  /// No description provided for @contextMenuFactions.
  ///
  /// In en, this message translates to:
  /// **'Factions'**
  String get contextMenuFactions;

  /// No description provided for @contextMenuPortraits.
  ///
  /// In en, this message translates to:
  /// **'Portraits'**
  String get contextMenuPortraits;

  /// No description provided for @debugSectionDebugMode.
  ///
  /// In en, this message translates to:
  /// **'Debug mode'**
  String get debugSectionDebugMode;

  /// No description provided for @debugSectionIfModsAreFailing.
  ///
  /// In en, this message translates to:
  /// **'If mods are failing to download or update, disabling verification of SSL certificates may help.'**
  String get debugSectionIfModsAreFailing;

  /// No description provided for @debugSectionAllowInsecureHttpsConnections.
  ///
  /// In en, this message translates to:
  /// **'Allow insecure HTTPS connections'**
  String get debugSectionAllowInsecureHttpsConnections;

  /// No description provided for @debugSectionShowEngineTrails.
  ///
  /// In en, this message translates to:
  /// **'Show engine trails'**
  String get debugSectionShowEngineTrails;

  /// No description provided for @debugSectionIncludePreReleases.
  ///
  /// In en, this message translates to:
  /// **'Include pre-releases'**
  String get debugSectionIncludePreReleases;

  /// No description provided for @debugSectionCheckForUpdateAllow.
  ///
  /// In en, this message translates to:
  /// **'Check for update (allow older versions)'**
  String get debugSectionCheckForUpdateAllow;

  /// No description provided for @debugSectionOpenSettingsFolder.
  ///
  /// In en, this message translates to:
  /// **'Open {appName} Settings Folder'**
  String debugSectionOpenSettingsFolder(String appName);

  /// No description provided for @debugSectionForceEnableAprilFools.
  ///
  /// In en, this message translates to:
  /// **'Force Enable April Fools 2026 ({chatbotName})'**
  String debugSectionForceEnableAprilFools(String chatbotName);

  /// No description provided for @debugSectionReOpenOnboardingDialog.
  ///
  /// In en, this message translates to:
  /// **'Re-open Onboarding dialog'**
  String get debugSectionReOpenOnboardingDialog;

  /// No description provided for @debugSectionErrorRunningSelfUpdateScript.
  ///
  /// In en, this message translates to:
  /// **'Error running self-update script: {error}'**
  String debugSectionErrorRunningSelfUpdateScript(String error);

  /// No description provided for @debugSectionRunExistingSelfUpdate.
  ///
  /// In en, this message translates to:
  /// **'Run existing self-update script if exists'**
  String get debugSectionRunExistingSelfUpdate;

  /// No description provided for @debugSectionRedownloadMagiclibShowsToast.
  ///
  /// In en, this message translates to:
  /// **'Redownload MagicLib (shows toast)'**
  String get debugSectionRedownloadMagiclibShowsToast;

  /// No description provided for @debugSectionNoModsWithDownload.
  ///
  /// In en, this message translates to:
  /// **'No mods with download URLs found for testing'**
  String get debugSectionNoModsWithDownload;

  /// No description provided for @debugSectionStartedTestDownloads.
  ///
  /// In en, this message translates to:
  /// **'Started {count} test downloads - check grouped toast!'**
  String debugSectionStartedTestDownloads(num count);

  /// No description provided for @debugSectionTestNotificationGroupingDownload.
  ///
  /// In en, this message translates to:
  /// **'Test Notification Grouping (download 5 mods)'**
  String get debugSectionTestNotificationGroupingDownload;

  /// No description provided for @debugSectionShowModAddedToast.
  ///
  /// In en, this message translates to:
  /// **'Show Mod Added Toast for MagicLib'**
  String get debugSectionShowModAddedToast;

  /// No description provided for @debugSectionThisWillWipeTrios.
  ///
  /// In en, this message translates to:
  /// **'This will wipe TriOS\'s settings.'**
  String get debugSectionThisWillWipeTrios;

  /// No description provided for @debugSectionWipeSettings.
  ///
  /// In en, this message translates to:
  /// **'Wipe Settings'**
  String get debugSectionWipeSettings;

  /// No description provided for @debugSectionResetCategories.
  ///
  /// In en, this message translates to:
  /// **'Reset Categories?'**
  String get debugSectionResetCategories;

  /// No description provided for @debugSectionResetCategoriesToDefaults.
  ///
  /// In en, this message translates to:
  /// **'Reset Categories to Defaults'**
  String get debugSectionResetCategoriesToDefaults;

  /// No description provided for @debugSectionThrowError.
  ///
  /// In en, this message translates to:
  /// **'Throw error'**
  String get debugSectionThrowError;

  /// No description provided for @debugSectionForceUpdate.
  ///
  /// In en, this message translates to:
  /// **'Force Update'**
  String get debugSectionForceUpdate;

  /// No description provided for @debugSectionGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game version: {version}'**
  String debugSectionGameVersion(String version);

  /// No description provided for @debugSectionReadGameVersionFrom.
  ///
  /// In en, this message translates to:
  /// **'Read game version from starfarer_obf.jar.'**
  String get debugSectionReadGameVersionFrom;

  /// No description provided for @debugSectionReadWeapons.
  ///
  /// In en, this message translates to:
  /// **'Read weapons'**
  String get debugSectionReadWeapons;

  /// No description provided for @debugSectionReadShipsFromCsv.
  ///
  /// In en, this message translates to:
  /// **'Read ships from csv and json files'**
  String get debugSectionReadShipsFromCsv;

  /// No description provided for @debugSectionReadShips.
  ///
  /// In en, this message translates to:
  /// **'Read ships'**
  String get debugSectionReadShips;

  /// No description provided for @debugSectionTriesToReadFrom.
  ///
  /// In en, this message translates to:
  /// **'Tries to read from \'{path}\''**
  String debugSectionTriesToReadFrom(String path);

  /// No description provided for @debugSectionReadStarsectorInstaller.
  ///
  /// In en, this message translates to:
  /// **'Read Starsector installer'**
  String get debugSectionReadStarsectorInstaller;

  /// No description provided for @debugSectionForceReplaceTriosCompanion.
  ///
  /// In en, this message translates to:
  /// **'Force Replace TriOS Companion Mod'**
  String get debugSectionForceReplaceTriosCompanion;

  /// No description provided for @debugSectionShowDetectedVmparamsFiles.
  ///
  /// In en, this message translates to:
  /// **'Show detected vmparams files'**
  String get debugSectionShowDetectedVmparamsFiles;

  /// No description provided for @debugSectionForumData.
  ///
  /// In en, this message translates to:
  /// **'Forum Data'**
  String get debugSectionForumData;

  /// No description provided for @debugSectionForceRefresh.
  ///
  /// In en, this message translates to:
  /// **'Force Refresh'**
  String get debugSectionForceRefresh;

  /// No description provided for @debugSectionRefreshFailed.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed: {error}'**
  String debugSectionRefreshFailed(String error);

  /// No description provided for @debugSectionClearCache.
  ///
  /// In en, this message translates to:
  /// **'Clear Cache'**
  String get debugSectionClearCache;

  /// No description provided for @debugSectionForumDataCacheCleared.
  ///
  /// In en, this message translates to:
  /// **'Forum data cache cleared.'**
  String get debugSectionForumDataCacheCleared;

  /// No description provided for @debugSectionShowForumData.
  ///
  /// In en, this message translates to:
  /// **'Show Forum Data'**
  String get debugSectionShowForumData;

  /// No description provided for @debugSectionNoForumDataLoaded.
  ///
  /// In en, this message translates to:
  /// **'No forum data loaded.'**
  String get debugSectionNoForumDataLoaded;

  /// No description provided for @debugSectionCurrentExecutable.
  ///
  /// In en, this message translates to:
  /// **'Current executable: {path}'**
  String debugSectionCurrentExecutable(String path);

  /// No description provided for @debugSectionTempFolder.
  ///
  /// In en, this message translates to:
  /// **'Temp folder: {path}'**
  String debugSectionTempFolder(String path);

  /// No description provided for @debugSectionLocale.
  ///
  /// In en, this message translates to:
  /// **'Locale: {locale}'**
  String debugSectionLocale(String locale);

  /// No description provided for @debugSectionShowCurrentAppSettings.
  ///
  /// In en, this message translates to:
  /// **'Show Current App Settings'**
  String get debugSectionShowCurrentAppSettings;

  /// No description provided for @debugSectionShowLoadedModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Show Loaded Mod Profiles'**
  String get debugSectionShowLoadedModProfiles;

  /// No description provided for @debugSectionShowEnvironmentVariables.
  ///
  /// In en, this message translates to:
  /// **'Show Environment Variables'**
  String get debugSectionShowEnvironmentVariables;

  /// No description provided for @debugSectionEnvironmentVariables.
  ///
  /// In en, this message translates to:
  /// **'Environment Variables'**
  String get debugSectionEnvironmentVariables;

  /// No description provided for @debugSectionShowModCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Show Mod Compatibility'**
  String get debugSectionShowModCompatibility;

  /// No description provided for @debugSectionModCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Mod Compatibility'**
  String get debugSectionModCompatibility;

  /// No description provided for @debugSectionShowLoadedVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'Show Loaded Version Checker Cache'**
  String get debugSectionShowLoadedVersionChecker;

  /// No description provided for @debugSectionVersionCheckerCache.
  ///
  /// In en, this message translates to:
  /// **'Version Checker Cache'**
  String get debugSectionVersionCheckerCache;

  /// No description provided for @dragDropCannotModifyModsFolder.
  ///
  /// In en, this message translates to:
  /// **'Cannot modify mods folder'**
  String get dragDropCannotModifyModsFolder;

  /// No description provided for @dragDropTryRunningTriosAs.
  ///
  /// In en, this message translates to:
  /// **'Try running TriOS as administrator.'**
  String get dragDropTryRunningTriosAs;

  /// No description provided for @activityClearAllActivity.
  ///
  /// In en, this message translates to:
  /// **'Clear All Activity?'**
  String get activityClearAllActivity;

  /// No description provided for @activityPermanentlyClearsHistory.
  ///
  /// In en, this message translates to:
  /// **'Permanently clears history'**
  String get activityPermanentlyClearsHistory;

  /// No description provided for @deepLinkAlwaysInstallNewMods.
  ///
  /// In en, this message translates to:
  /// **'Always install new mods without confirming'**
  String get deepLinkAlwaysInstallNewMods;

  /// No description provided for @deepLinkIdTooltip.
  ///
  /// In en, this message translates to:
  /// **'Id: {id}'**
  String deepLinkIdTooltip(String id);

  /// No description provided for @deepLinkVersionTooltip.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String deepLinkVersionTooltip(String version);

  /// No description provided for @deepLinkDownloadLink.
  ///
  /// In en, this message translates to:
  /// **'Download link'**
  String get deepLinkDownloadLink;

  /// No description provided for @toastNewAppVersion.
  ///
  /// In en, this message translates to:
  /// **'New {appName} version'**
  String toastNewAppVersion(String appName);

  /// No description provided for @aprilFoolsStillNo.
  ///
  /// In en, this message translates to:
  /// **'Still no'**
  String get aprilFoolsStillNo;

  /// No description provided for @aprilFoolsOkFine.
  ///
  /// In en, this message translates to:
  /// **'Ok fine'**
  String get aprilFoolsOkFine;

  /// No description provided for @companionModUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Update {appName} Companion Mod'**
  String companionModUpdateTitle(String appName);

  /// No description provided for @catalog_data_sources_dialogClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get catalog_data_sources_dialogClose;

  /// No description provided for @codexAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get codexAll;

  /// No description provided for @settingsAffectsHowQuicklyVersion.
  ///
  /// In en, this message translates to:
  /// **'Affects how quickly Version Checker searches. If version checker is showing timeout errors, reduce this number.'**
  String get settingsAffectsHowQuicklyVersion;

  /// No description provided for @settingsAllRightThenKeep.
  ///
  /// In en, this message translates to:
  /// **'All right then, keep your secrets.'**
  String get settingsAllRightThenKeep;

  /// No description provided for @settingsAllowErrorReporting.
  ///
  /// In en, this message translates to:
  /// **'Allow error reporting'**
  String get settingsAllowErrorReporting;

  /// No description provided for @settingsAlwaysInstallModsFrom.
  ///
  /// In en, this message translates to:
  /// **'Always install mods from \'Open with TriOS\' links without confirming'**
  String get settingsAlwaysInstallModsFrom;

  /// No description provided for @settingsAnimatedBackgrounds.
  ///
  /// In en, this message translates to:
  /// **'Animated backgrounds'**
  String get settingsAnimatedBackgrounds;

  /// No description provided for @settingsAppIcon.
  ///
  /// In en, this message translates to:
  /// **'App icon'**
  String get settingsAppIcon;

  /// No description provided for @settingsAppName.
  ///
  /// In en, this message translates to:
  /// **'App name'**
  String get settingsAppName;

  /// No description provided for @settingsApplyUiScaling.
  ///
  /// In en, this message translates to:
  /// **'Apply UI Scaling'**
  String get settingsApplyUiScaling;

  /// No description provided for @settingsAutoSwapOnMod.
  ///
  /// In en, this message translates to:
  /// **'Auto-swap on mod update'**
  String get settingsAutoSwapOnMod;

  /// No description provided for @settingsBackgroundStyle.
  ///
  /// In en, this message translates to:
  /// **'Background style'**
  String get settingsBackgroundStyle;

  /// No description provided for @settingsCheckForUpdate.
  ///
  /// In en, this message translates to:
  /// **'Check for update'**
  String get settingsCheckForUpdate;

  /// No description provided for @settingsCheckIfGameIs.
  ///
  /// In en, this message translates to:
  /// **'Check if game is running'**
  String get settingsCheckIfGameIs;

  /// No description provided for @settingsCleanUp.
  ///
  /// In en, this message translates to:
  /// **'Clean up...'**
  String get settingsCleanUp;

  /// No description provided for @settingsColor.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get settingsColor;

  /// No description provided for @settingsConcurrentExtractions.
  ///
  /// In en, this message translates to:
  /// **'Concurrent extractions'**
  String get settingsConcurrentExtractions;

  /// No description provided for @settingsDebugging.
  ///
  /// In en, this message translates to:
  /// **'Debugging'**
  String get settingsDebugging;

  /// No description provided for @settingsDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get settingsDefault;

  /// No description provided for @settingsDisableAllAiRelated.
  ///
  /// In en, this message translates to:
  /// **'Disable all AI-related features'**
  String get settingsDisableAllAiRelated;

  /// No description provided for @settingsEnableAccessibilitySemanticsMay.
  ///
  /// In en, this message translates to:
  /// **'Enable Accessibility Semantics (may cause freezes)'**
  String get settingsEnableAccessibilitySemanticsMay;

  /// No description provided for @settingsEnableLaunchPrecheck.
  ///
  /// In en, this message translates to:
  /// **'Enable Launch Precheck'**
  String get settingsEnableLaunchPrecheck;

  /// No description provided for @settingsErrorReporting.
  ///
  /// In en, this message translates to:
  /// **'Error Reporting'**
  String get settingsErrorReporting;

  /// No description provided for @settingsFollowTheme.
  ///
  /// In en, this message translates to:
  /// **'Follow theme'**
  String get settingsFollowTheme;

  /// No description provided for @settingsFont.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get settingsFont;

  /// No description provided for @settingsHowLongNotificationsE.
  ///
  /// In en, this message translates to:
  /// **'How long notifications (e.g. \'Downloading\') should appear for.'**
  String get settingsHowLongNotificationsE;

  /// No description provided for @settingsIDonTBelieve.
  ///
  /// In en, this message translates to:
  /// **'I don\'t believe you (show update prompt)'**
  String get settingsIDonTBelieve;

  /// No description provided for @settingsIMFeelingLucky.
  ///
  /// In en, this message translates to:
  /// **'I\'m feeling lucky'**
  String get settingsIMFeelingLucky;

  /// No description provided for @settingsInstallingOrUpdatingA.
  ///
  /// In en, this message translates to:
  /// **'Installing or updating a mod will replace the previous version of it.'**
  String get settingsInstallingOrUpdatingA;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsLanguageTooltip.
  ///
  /// In en, this message translates to:
  /// **'The language the interface is shown in.\nSystem follows your operating system\'s language.'**
  String get settingsLanguageTooltip;

  /// No description provided for @settingsLaunchButton.
  ///
  /// In en, this message translates to:
  /// **'Launch button'**
  String get settingsLaunchButton;

  /// No description provided for @settingsLoadedThemes.
  ///
  /// In en, this message translates to:
  /// **'Loaded {count} of your themes.'**
  String settingsLoadedThemes(num count);

  /// No description provided for @settingsManualFolderNaming.
  ///
  /// In en, this message translates to:
  /// **'Manual folder naming'**
  String get settingsManualFolderNaming;

  /// No description provided for @settingsNevermind.
  ///
  /// In en, this message translates to:
  /// **'Nevermind'**
  String get settingsNevermind;

  /// No description provided for @settingsNoNewReleaseFound.
  ///
  /// In en, this message translates to:
  /// **'No new release found'**
  String get settingsNoNewReleaseFound;

  /// No description provided for @settingsNoSolicitors.
  ///
  /// In en, this message translates to:
  /// **'No solicitors!'**
  String get settingsNoSolicitors;

  /// No description provided for @settingsOpenReleasesPage.
  ///
  /// In en, this message translates to:
  /// **'Open Releases Page'**
  String get settingsOpenReleasesPage;

  /// No description provided for @settingsOverridePartsOfThe.
  ///
  /// In en, this message translates to:
  /// **'Override parts of the active theme'**
  String get settingsOverridePartsOfThe;

  /// No description provided for @settingsOverrideTheAppIcon.
  ///
  /// In en, this message translates to:
  /// **'Override the app icon regardless of the active theme.'**
  String get settingsOverrideTheAppIcon;

  /// No description provided for @settingsOverrideTheAppName.
  ///
  /// In en, this message translates to:
  /// **'Override the app name regardless of the active theme.'**
  String get settingsOverrideTheAppName;

  /// No description provided for @settingsOverrideTheLaunchButton.
  ///
  /// In en, this message translates to:
  /// **'Override the launch button style regardless of the active theme.'**
  String get settingsOverrideTheLaunchButton;

  /// No description provided for @settingsPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get settingsPlayer;

  /// No description provided for @settingsRainbow.
  ///
  /// In en, this message translates to:
  /// **'Rainbow'**
  String get settingsRainbow;

  /// No description provided for @settingsReloadThemes.
  ///
  /// In en, this message translates to:
  /// **'Reload themes'**
  String get settingsReloadThemes;

  /// No description provided for @settingsRenameAllModFolders.
  ///
  /// In en, this message translates to:
  /// **'Rename all mod folders'**
  String get settingsRenameAllModFolders;

  /// No description provided for @settingsRestartNow.
  ///
  /// In en, this message translates to:
  /// **'Restart Now'**
  String get settingsRestartNow;

  /// No description provided for @settingsRestartRequired.
  ///
  /// In en, this message translates to:
  /// **'Restart Required'**
  String get settingsRestartRequired;

  /// No description provided for @settingsShowChangelog.
  ///
  /// In en, this message translates to:
  /// **'Show Changelog'**
  String get settingsShowChangelog;

  /// No description provided for @settingsShowDonationButton.
  ///
  /// In en, this message translates to:
  /// **'Show Donation Button'**
  String get settingsShowDonationButton;

  /// No description provided for @settingsShowForceUpdateWarning.
  ///
  /// In en, this message translates to:
  /// **'Show \'Force Update\' Warning'**
  String get settingsShowForceUpdateWarning;

  /// No description provided for @settingsShowLayoutToggleButton.
  ///
  /// In en, this message translates to:
  /// **'Show Layout Toggle Button'**
  String get settingsShowLayoutToggleButton;

  /// No description provided for @settingsShowReportBugButton.
  ///
  /// In en, this message translates to:
  /// **'Show Report Bug Button'**
  String get settingsShowReportBugButton;

  /// No description provided for @settingsShowDriftingMotesWhen.
  ///
  /// In en, this message translates to:
  /// **'Show drifting motes when app is in foreground.'**
  String get settingsShowDriftingMotesWhen;

  /// No description provided for @settingsThemeModifiers.
  ///
  /// In en, this message translates to:
  /// **'Theme Modifiers'**
  String get settingsThemeModifiers;

  /// No description provided for @settingsUseTopToolbarInstead.
  ///
  /// In en, this message translates to:
  /// **'Use top toolbar instead of sidebar'**
  String get settingsUseTopToolbarInstead;

  /// No description provided for @settingsWhenCheckedUpdatingAn.
  ///
  /// In en, this message translates to:
  /// **'When checked, updating an enabled mod switches to the new version.'**
  String get settingsWhenCheckedUpdatingAn;

  /// No description provided for @settingsWhenEnabledModsOpened.
  ///
  /// In en, this message translates to:
  /// **'When enabled, mods opened via a \'Open with TriOS\' link install immediately, skipping the confirmation dialog.'**
  String get settingsWhenEnabledModsOpened;

  /// No description provided for @settingsWhetherToShowThe.
  ///
  /// In en, this message translates to:
  /// **'Whether to show the warning when forcing a mod to run on the current game version.'**
  String get settingsWhetherToShowThe;

  /// No description provided for @settingsWhichAnimationPlaysIn.
  ///
  /// In en, this message translates to:
  /// **'Which animation plays in the background.'**
  String get settingsWhichAnimationPlaysIn;

  /// No description provided for @settingsWhichThemeSColors.
  ///
  /// In en, this message translates to:
  /// **'Which theme\'s colors the motes use. Default follows the active theme.'**
  String get settingsWhichThemeSColors;

  /// No description provided for @sectorMapSelectASave.
  ///
  /// In en, this message translates to:
  /// **'Select a save'**
  String get sectorMapSelectASave;

  /// No description provided for @sectorMapSavePickerLabel.
  ///
  /// In en, this message translates to:
  /// **'{name} (lvl {level})'**
  String sectorMapSavePickerLabel(String name, num level);

  /// No description provided for @sectorMapFindSystem.
  ///
  /// In en, this message translates to:
  /// **'Find system…'**
  String get sectorMapFindSystem;

  /// No description provided for @sectorMapSystemFinder.
  ///
  /// In en, this message translates to:
  /// **'System Finder'**
  String get sectorMapSystemFinder;

  /// No description provided for @sectorMapSystemsSummary.
  ///
  /// In en, this message translates to:
  /// **'{count} systems  •  {inhabited} inhabited'**
  String sectorMapSystemsSummary(num count, num inhabited);

  /// No description provided for @sectorMapBackToTheSystem.
  ///
  /// In en, this message translates to:
  /// **'Back to the System Finder'**
  String get sectorMapBackToTheSystem;

  /// No description provided for @sectorMapFinder.
  ///
  /// In en, this message translates to:
  /// **'Finder'**
  String get sectorMapFinder;

  /// No description provided for @sectorMapRevealTheWholeSector.
  ///
  /// In en, this message translates to:
  /// **'Reveal the whole sector now'**
  String get sectorMapRevealTheWholeSector;

  /// No description provided for @sectorMapShowEverythingSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Show everything (spoiler)'**
  String get sectorMapShowEverythingSpoiler;

  /// No description provided for @sectorMapFilterSystemsByFaction.
  ///
  /// In en, this message translates to:
  /// **'Filter systems by faction'**
  String get sectorMapFilterSystemsByFaction;

  /// No description provided for @sectorMapShowAll.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get sectorMapShowAll;

  /// No description provided for @sectorMapSelectASaveTo.
  ///
  /// In en, this message translates to:
  /// **'Select a save to view its sector.'**
  String get sectorMapSelectASaveTo;

  /// No description provided for @sectorMapCouldNotReadSector.
  ///
  /// In en, this message translates to:
  /// **'Could not read this sector.\n\n{error}'**
  String sectorMapCouldNotReadSector(String error);

  /// No description provided for @sectorMapClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get sectorMapClose;

  /// No description provided for @sectorMapMarkets.
  ///
  /// In en, this message translates to:
  /// **'Markets ({count})'**
  String sectorMapMarkets(num count);

  /// No description provided for @sectorMapNoMarkets.
  ///
  /// In en, this message translates to:
  /// **'No markets'**
  String get sectorMapNoMarkets;

  /// No description provided for @sectorMapSystemUninhabited.
  ///
  /// In en, this message translates to:
  /// **'This system is uninhabited.'**
  String get sectorMapSystemUninhabited;

  /// No description provided for @sectorMapMarketSize.
  ///
  /// In en, this message translates to:
  /// **'{faction} • size {size}'**
  String sectorMapMarketSize(String faction, num size);

  /// No description provided for @sectorMapCenter.
  ///
  /// In en, this message translates to:
  /// **'Center'**
  String get sectorMapCenter;

  /// No description provided for @finderClearAllKnobs.
  ///
  /// In en, this message translates to:
  /// **'Clear all knobs'**
  String get finderClearAllKnobs;

  /// No description provided for @finderReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get finderReset;

  /// No description provided for @finderPresets.
  ///
  /// In en, this message translates to:
  /// **'Presets'**
  String get finderPresets;

  /// No description provided for @finderResources.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get finderResources;

  /// No description provided for @finderFloorWeightHint.
  ///
  /// In en, this message translates to:
  /// **'Floor is a hard cutoff; weight ranks how much you care.'**
  String get finderFloorWeightHint;

  /// No description provided for @finderMustHave.
  ///
  /// In en, this message translates to:
  /// **'Must have'**
  String get finderMustHave;

  /// No description provided for @finderHabitableWorld.
  ///
  /// In en, this message translates to:
  /// **'Habitable world'**
  String get finderHabitableWorld;

  /// No description provided for @finderGasGiantForVolatiles.
  ///
  /// In en, this message translates to:
  /// **'Gas giant (for volatiles / fuel)'**
  String get finderGasGiantForVolatiles;

  /// No description provided for @finderSkipSystemsWithFactionColony.
  ///
  /// In en, this message translates to:
  /// **'Skip systems that already have a faction colony'**
  String get finderSkipSystemsWithFactionColony;

  /// No description provided for @finderUnclaimedOnly.
  ///
  /// In en, this message translates to:
  /// **'Unclaimed only (no existing colony)'**
  String get finderUnclaimedOnly;

  /// No description provided for @finderMinStableLocations.
  ///
  /// In en, this message translates to:
  /// **'Min. stable locations'**
  String get finderMinStableLocations;

  /// No description provided for @finderAny.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get finderAny;

  /// No description provided for @finderNearALandmark.
  ///
  /// In en, this message translates to:
  /// **'Near a landmark'**
  String get finderNearALandmark;

  /// No description provided for @finderLandmarkNoneInSave.
  ///
  /// In en, this message translates to:
  /// **'{name} (none in this save)'**
  String finderLandmarkNoneInSave(String name);

  /// No description provided for @finderWithin.
  ///
  /// In en, this message translates to:
  /// **'Within'**
  String get finderWithin;

  /// No description provided for @finderPreferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get finderPreferences;

  /// No description provided for @finderPreferLowHazard.
  ///
  /// In en, this message translates to:
  /// **'Prefer low hazard'**
  String get finderPreferLowHazard;

  /// No description provided for @finderPreferCloseToCore.
  ///
  /// In en, this message translates to:
  /// **'Prefer close to core'**
  String get finderPreferCloseToCore;

  /// No description provided for @finderOtherConditions.
  ///
  /// In en, this message translates to:
  /// **'Other conditions ({count})'**
  String finderOtherConditions(num count);

  /// No description provided for @finderUncuratedConditions.
  ///
  /// In en, this message translates to:
  /// **'Uncurated / modded conditions in this save'**
  String get finderUncuratedConditions;

  /// No description provided for @finderHardCutoffAtLeast.
  ///
  /// In en, this message translates to:
  /// **'Hard cutoff: at least this tier on some planet'**
  String get finderHardCutoffAtLeast;

  /// No description provided for @finderWeightLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight: {weight}'**
  String finderWeightLabel(String weight);

  /// No description provided for @finderCatalogOre.
  ///
  /// In en, this message translates to:
  /// **'Ore'**
  String get finderCatalogOre;

  /// No description provided for @finderCatalogRareOre.
  ///
  /// In en, this message translates to:
  /// **'Rare ore'**
  String get finderCatalogRareOre;

  /// No description provided for @finderCatalogOrganics.
  ///
  /// In en, this message translates to:
  /// **'Organics'**
  String get finderCatalogOrganics;

  /// No description provided for @finderCatalogVolatiles.
  ///
  /// In en, this message translates to:
  /// **'Volatiles'**
  String get finderCatalogVolatiles;

  /// No description provided for @finderCatalogFarmland.
  ///
  /// In en, this message translates to:
  /// **'Farmland'**
  String get finderCatalogFarmland;

  /// No description provided for @finderHintTuneKnobs.
  ///
  /// In en, this message translates to:
  /// **'Tune the knobs until the count is small, then reveal a hint to your best match.'**
  String get finderHintTuneKnobs;

  /// No description provided for @finderHintSomewhereInConstellations.
  ///
  /// In en, this message translates to:
  /// **'Somewhere in one of these {count} constellations.'**
  String finderHintSomewhereInConstellations(num count);

  /// No description provided for @finderHintNarrowedToConstellations.
  ///
  /// In en, this message translates to:
  /// **'Narrowed to these {count} constellations.'**
  String finderHintNarrowedToConstellations(num count);

  /// No description provided for @finderHintUnnamedRegion.
  ///
  /// In en, this message translates to:
  /// **'In an unnamed region of deep space.'**
  String get finderHintUnnamedRegion;

  /// No description provided for @finderHintInConstellation.
  ///
  /// In en, this message translates to:
  /// **'In the {name} constellation.'**
  String finderHintInConstellation(String name);

  /// No description provided for @finderHintExactSystem.
  ///
  /// In en, this message translates to:
  /// **'{system}{constellation} (hazard from {hazard}%).'**
  String finderHintExactSystem(String system, String constellation, num hazard);

  /// No description provided for @finderSystemsFit.
  ///
  /// In en, this message translates to:
  /// **'{count} systems fit'**
  String finderSystemsFit(num count);

  /// No description provided for @finderBestMatchSummary.
  ///
  /// In en, this message translates to:
  /// **'{count} systems fit  •  best match {ordinal} of {total}'**
  String finderBestMatchSummary(num count, num ordinal, num total);

  /// No description provided for @finderRevealAHint.
  ///
  /// In en, this message translates to:
  /// **'Reveal a hint'**
  String get finderRevealAHint;

  /// No description provided for @finderShowOnTheMap.
  ///
  /// In en, this message translates to:
  /// **'Show on the map'**
  String get finderShowOnTheMap;

  /// No description provided for @finderNarrowItDown.
  ///
  /// In en, this message translates to:
  /// **'Narrow it down'**
  String get finderNarrowItDown;

  /// No description provided for @finderRevealTheNextBestMatch.
  ///
  /// In en, this message translates to:
  /// **'Reveal the next-best match instead'**
  String get finderRevealTheNextBestMatch;

  /// No description provided for @finderDifferentMatch.
  ///
  /// In en, this message translates to:
  /// **'Different match'**
  String get finderDifferentMatch;

  /// No description provided for @finderNoSystemsFit.
  ///
  /// In en, this message translates to:
  /// **'No systems fit'**
  String get finderNoSystemsFit;

  /// No description provided for @finderLoosenTheKnobs.
  ///
  /// In en, this message translates to:
  /// **'Loosen the knobs to find some matches.'**
  String get finderLoosenTheKnobs;

  /// No description provided for @finderRelaxingOneOfThese.
  ///
  /// In en, this message translates to:
  /// **'Relaxing one of these would help:'**
  String get finderRelaxingOneOfThese;

  /// No description provided for @finderHintTurnOff.
  ///
  /// In en, this message translates to:
  /// **'• Turn off {constraint} → {count} fit'**
  String finderHintTurnOff(String constraint, num count);

  /// No description provided for @codexFilters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get codexFilters;

  /// No description provided for @codexBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get codexBack;

  /// No description provided for @codexForward.
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get codexForward;

  /// No description provided for @codexUpALevel.
  ///
  /// In en, this message translates to:
  /// **'Up a level'**
  String get codexUpALevel;

  /// No description provided for @codexRandomEntry.
  ///
  /// In en, this message translates to:
  /// **'Random entry'**
  String get codexRandomEntry;

  /// No description provided for @codexSearchTheCodex.
  ///
  /// In en, this message translates to:
  /// **'Search the Codex…'**
  String get codexSearchTheCodex;

  /// No description provided for @codexLoadingCategory.
  ///
  /// In en, this message translates to:
  /// **'Loading {name}…'**
  String codexLoadingCategory(String name);

  /// No description provided for @codexPickACategory.
  ///
  /// In en, this message translates to:
  /// **'Pick a category, or search across everything.'**
  String get codexPickACategory;

  /// No description provided for @codexAllCategories.
  ///
  /// In en, this message translates to:
  /// **'All categories'**
  String get codexAllCategories;

  /// No description provided for @codexGroupBy.
  ///
  /// In en, this message translates to:
  /// **'Group by'**
  String get codexGroupBy;

  /// No description provided for @codexLockedEntry.
  ///
  /// In en, this message translates to:
  /// **'Locked entry'**
  String get codexLockedEntry;

  /// No description provided for @codexHiddenBySpoilerFilter.
  ///
  /// In en, this message translates to:
  /// **'(hidden by spoiler filter)'**
  String get codexHiddenBySpoilerFilter;

  /// No description provided for @codexSearchResults.
  ///
  /// In en, this message translates to:
  /// **'Search results ({count})'**
  String codexSearchResults(num count);

  /// No description provided for @codexRelatedEntries.
  ///
  /// In en, this message translates to:
  /// **'Related entries'**
  String get codexRelatedEntries;

  /// No description provided for @codexNothingRelated.
  ///
  /// In en, this message translates to:
  /// **'Nothing related'**
  String get codexNothingRelated;

  /// No description provided for @codexGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get codexGeneral;

  /// No description provided for @codexSpoilers.
  ///
  /// In en, this message translates to:
  /// **'Spoilers'**
  String get codexSpoilers;

  /// No description provided for @codexNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get codexNone;

  /// No description provided for @codexSlight.
  ///
  /// In en, this message translates to:
  /// **'Slight'**
  String get codexSlight;

  /// No description provided for @codexMod.
  ///
  /// In en, this message translates to:
  /// **'Mod'**
  String get codexMod;

  /// No description provided for @codexVanillaOnly.
  ///
  /// In en, this message translates to:
  /// **'Vanilla only'**
  String get codexVanillaOnly;

  /// No description provided for @codexOnlyEnabledMods.
  ///
  /// In en, this message translates to:
  /// **'Only enabled mods'**
  String get codexOnlyEnabledMods;

  /// No description provided for @codexShowHiddenWeapons.
  ///
  /// In en, this message translates to:
  /// **'Show hidden weapons'**
  String get codexShowHiddenWeapons;

  /// No description provided for @codexShowHiddenHullmods.
  ///
  /// In en, this message translates to:
  /// **'Show hidden hullmods'**
  String get codexShowHiddenHullmods;

  /// No description provided for @codexShowHiddenShipSystems.
  ///
  /// In en, this message translates to:
  /// **'Show hidden ship systems'**
  String get codexShowHiddenShipSystems;

  /// No description provided for @codexShowModulesAsShipsTooltip.
  ///
  /// In en, this message translates to:
  /// **'List a station\'s modules (its docked parts) as their own ship entries. They always show as related entries on the station either way.'**
  String get codexShowModulesAsShipsTooltip;

  /// No description provided for @codexShowModulesAsShips.
  ///
  /// In en, this message translates to:
  /// **'Show modules as ships'**
  String get codexShowModulesAsShips;

  /// No description provided for @codexSelectAnEntryToSeeDetails.
  ///
  /// In en, this message translates to:
  /// **'Select an entry to see its details.'**
  String get codexSelectAnEntryToSeeDetails;

  /// No description provided for @codexEntryNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'This entry is not available.'**
  String get codexEntryNotAvailable;

  /// No description provided for @codexOpenTheFullDetails.
  ///
  /// In en, this message translates to:
  /// **'Open the full details window for this entry.'**
  String get codexOpenTheFullDetails;

  /// No description provided for @codexOpenDetails.
  ///
  /// In en, this message translates to:
  /// **'Open details'**
  String get codexOpenDetails;

  /// No description provided for @codexThirdPartyDataProvidedBy.
  ///
  /// In en, this message translates to:
  /// **'Third party data provided by '**
  String get codexThirdPartyDataProvidedBy;

  /// No description provided for @codexTriTachyonDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'. The Tri-Tachyon corporation is not responsible for the accuracy or reliability of information supplied by external sources. By accessing this Codex adjunct, you acknowledge and agree to relieve Tri-Tachyon of any liability and responsibility for any damages resulting from use or cognition of third party data.'**
  String get codexTriTachyonDisclaimer;

  /// No description provided for @codexShipUsedByFactionTooltip.
  ///
  /// In en, this message translates to:
  /// **'This ship is used by this faction, and may sometimes be found for sale at their colonies.'**
  String get codexShipUsedByFactionTooltip;

  /// No description provided for @vramScansActive.
  ///
  /// In en, this message translates to:
  /// **'Progress  •  {count, plural, one{{count} scan} other{{count} scans}} active'**
  String vramScansActive(num count);

  /// No description provided for @vramCancelling.
  ///
  /// In en, this message translates to:
  /// **'Cancelling…'**
  String get vramCancelling;

  /// No description provided for @vramCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get vramCancel;

  /// No description provided for @vramOverall.
  ///
  /// In en, this message translates to:
  /// **'Overall: '**
  String get vramOverall;

  /// No description provided for @vramOverallProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} mods  ({percent})'**
  String vramOverallProgress(num done, num total, String percent);

  /// No description provided for @vramModsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} mods'**
  String vramModsCount(num count);

  /// No description provided for @vramPreparingScan.
  ///
  /// In en, this message translates to:
  /// **'Preparing scan, collecting mod folders…'**
  String get vramPreparingScan;

  /// No description provided for @vramDiscoveringImageFiles.
  ///
  /// In en, this message translates to:
  /// **'discovering image files…'**
  String get vramDiscoveringImageFiles;

  /// No description provided for @vramLastScan.
  ///
  /// In en, this message translates to:
  /// **'Last scan:'**
  String get vramLastScan;

  /// No description provided for @vramNever.
  ///
  /// In en, this message translates to:
  /// **'never'**
  String get vramNever;

  /// No description provided for @vramTook.
  ///
  /// In en, this message translates to:
  /// **'took {duration}'**
  String vramTook(String duration);

  /// No description provided for @vramEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get vramEnabled;

  /// No description provided for @vramDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get vramDisabled;

  /// No description provided for @vramAllMods.
  ///
  /// In en, this message translates to:
  /// **'All mods'**
  String get vramAllMods;

  /// No description provided for @vramEstimatedVramUse.
  ///
  /// In en, this message translates to:
  /// **'Estimated VRAM use'**
  String get vramEstimatedVramUse;

  /// No description provided for @vramUnscannedCount.
  ///
  /// In en, this message translates to:
  /// **'({count} unscanned)'**
  String vramUnscannedCount(num count);

  /// No description provided for @vramScanAllToSeeTotals.
  ///
  /// In en, this message translates to:
  /// **'Scan all {cohort} mods to see totals'**
  String vramScanAllToSeeTotals(String cohort);

  /// No description provided for @vramNotScanned.
  ///
  /// In en, this message translates to:
  /// **' not scanned ({count} mods)'**
  String vramNotScanned(num count);

  /// No description provided for @vramNotScannedTooltip.
  ///
  /// In en, this message translates to:
  /// **'These {count} mods haven\'t been scanned yet, so their VRAM usage is unknown. Run a scan to see a total.'**
  String vramNotScannedTooltip(num count);

  /// No description provided for @vramModsCountInParens.
  ///
  /// In en, this message translates to:
  /// **'({count} mods)'**
  String vramModsCountInParens(num count);

  /// No description provided for @vramAddedByMods.
  ///
  /// In en, this message translates to:
  /// **'{bytes} added by mods ({images} images)'**
  String vramAddedByMods(String bytes, num images);

  /// No description provided for @vramRoughly.
  ///
  /// In en, this message translates to:
  /// **'roughly'**
  String get vramRoughly;

  /// No description provided for @vramImagesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} images'**
  String vramImagesCount(num count);

  /// No description provided for @vramAddedByGraphicsLib.
  ///
  /// In en, this message translates to:
  /// **'{bytes} added by your GraphicsLib settings ({detail})'**
  String vramAddedByGraphicsLib(String bytes, String detail);

  /// No description provided for @vramAddedByVanilla.
  ///
  /// In en, this message translates to:
  /// **'{bytes} added by vanilla'**
  String vramAddedByVanilla(String bytes);

  /// No description provided for @vramTotalLine.
  ///
  /// In en, this message translates to:
  /// **'{bytes} total'**
  String vramTotalLine(String bytes);

  /// No description provided for @vramEstimatedVramUseBy.
  ///
  /// In en, this message translates to:
  /// **'Estimated VRAM use by: {cohort}'**
  String vramEstimatedVramUseBy(String cohort);

  /// No description provided for @vramUnscannedOf.
  ///
  /// In en, this message translates to:
  /// **'{unscanned} of {total} mods unscanned.'**
  String vramUnscannedOf(num unscanned, num total);

  /// No description provided for @vramGraphicsLibSettings.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib settings'**
  String get vramGraphicsLibSettings;

  /// No description provided for @vramYes.
  ///
  /// In en, this message translates to:
  /// **'yes'**
  String get vramYes;

  /// No description provided for @vramNo.
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get vramNo;

  /// No description provided for @vramOn.
  ///
  /// In en, this message translates to:
  /// **'on'**
  String get vramOn;

  /// No description provided for @vramOff.
  ///
  /// In en, this message translates to:
  /// **'off'**
  String get vramOff;

  /// No description provided for @vramGfxStatusMain.
  ///
  /// In en, this message translates to:
  /// **'Enabled: {effects}\nGenerate Normal maps: {normals}\nPreload all: {preload}'**
  String vramGfxStatusMain(String effects, String normals, String preload);

  /// No description provided for @vramGfxStatusMaps.
  ///
  /// In en, this message translates to:
  /// **'Normal maps: {normals}\nMaterial maps: {materials}\nSurface maps: {surfaces}'**
  String vramGfxStatusMaps(String normals, String materials, String surfaces);

  /// No description provided for @vramAboutVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'About VRAM Estimator'**
  String get vramAboutVramEstimator;

  /// No description provided for @vramYourVramIsBased.
  ///
  /// In en, this message translates to:
  /// **'Your VRAM is based on your GPU and can\'t be adjusted.'**
  String get vramYourVramIsBased;

  /// No description provided for @vramUsedByMods.
  ///
  /// In en, this message translates to:
  /// **'It\'s used by mods with ships and weapons. Running out crashes the game.'**
  String get vramUsedByMods;

  /// No description provided for @vramAppCanEstimate.
  ///
  /// In en, this message translates to:
  /// **'{appName} can estimate how much VRAM your mods use, but it\'s not perfect.\nTo see accurate usage, open the console (from Console Commands) and look in the top-left corner.'**
  String vramAppCanEstimate(String appName);

  /// No description provided for @vramViewMoreInfo.
  ///
  /// In en, this message translates to:
  /// **'View more Info'**
  String get vramViewMoreInfo;

  /// No description provided for @vramWhatIsVram.
  ///
  /// In en, this message translates to:
  /// **'What is VRAM?'**
  String get vramWhatIsVram;

  /// No description provided for @vramWhatIsVramRamVsVram.
  ///
  /// In en, this message translates to:
  /// **'VRAM is Video RAM. It\'s different than RAM, being physically located on the graphics card. It cannot be upgraded without a new graphics card.'**
  String get vramWhatIsVramRamVsVram;

  /// No description provided for @vramWhatIsVramNotAssignable.
  ///
  /// In en, this message translates to:
  /// **'Unlike RAM, VRAM cannot be manually assigned (vmparams file is for normal RAM only), and the game will use as much as it needs.'**
  String get vramWhatIsVramNotAssignable;

  /// No description provided for @vramWhatIsVramMoreImages.
  ///
  /// In en, this message translates to:
  /// **'Essentially, the more images (ships, weapons, etc.) you load, the more VRAM you need. If you run out, it will use normal RAM instead, but very inefficiently, and if that runs out, the game will crash.'**
  String get vramWhatIsVramMoreImages;

  /// No description provided for @vramGraphicsLibDefaults.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib\'s default settings uses additional VRAM to improve visuals, so if you are running out but don\'t want to disable mods, try adjusting its settings.'**
  String get vramGraphicsLibDefaults;

  /// No description provided for @vramAboutThisTool.
  ///
  /// In en, this message translates to:
  /// **'About this tool'**
  String get vramAboutThisTool;

  /// No description provided for @vramToolEstimates.
  ///
  /// In en, this message translates to:
  /// **'This tool estimates the amount of VRAM used by a mod, based on the images in the mod folder.'**
  String get vramToolEstimates;

  /// No description provided for @vramLazyLoadingMods.
  ///
  /// In en, this message translates to:
  /// **'A few mods, such as Illustrated Entities, load images only when needed, so their real VRAM use will be much lower than estimated.'**
  String get vramLazyLoadingMods;

  /// No description provided for @vramSelectors.
  ///
  /// In en, this message translates to:
  /// **'Selectors'**
  String get vramSelectors;

  /// No description provided for @vramSelectorsIntro.
  ///
  /// In en, this message translates to:
  /// **'Pick how the tool decides which images to count, using the dropdown on the VRAM page toolbar:'**
  String get vramSelectorsIntro;

  /// No description provided for @vramSelectorFolderScan.
  ///
  /// In en, this message translates to:
  /// **'• Folder scan: counts every image in the mod folder (minus a few filename markers). Matches the tool\'s original behavior. May over-count when mods ship unused assets.'**
  String get vramSelectorFolderScan;

  /// No description provided for @vramSelectorReferencedOnly.
  ///
  /// In en, this message translates to:
  /// **'• Referenced only: parses .ship, .wpn, .proj, ship_data.csv, weapon_data.csv, .faction, portraits.csv, settings.json, the GraphicsLib CSV, .jar string literals, and loose .java sources to identify only images that are actually referenced. Images found on disk but not referenced are shown separately as \"Unreferenced\" (they may be dev leftovers or loaded via dynamic paths).'**
  String get vramSelectorReferencedOnly;

  /// No description provided for @vramKnownImprecisions.
  ///
  /// In en, this message translates to:
  /// **'Known imprecisions in reference mode:'**
  String get vramKnownImprecisions;

  /// No description provided for @vramImprecisionDynamicPaths.
  ///
  /// In en, this message translates to:
  /// **'• Asset paths constructed dynamically in Java (string concatenation) may not be detected. The debug panel\'s \"Track attribution\" toggle and the Unreferenced bucket make gaps visible.'**
  String get vramImprecisionDynamicPaths;

  /// No description provided for @vramImprecisionObfuscatedJars.
  ///
  /// In en, this message translates to:
  /// **'• Obfuscated or packed jars may defeat string extraction.'**
  String get vramImprecisionObfuscatedJars;

  /// No description provided for @vramImprecisionGfxLibMaps.
  ///
  /// In en, this message translates to:
  /// **'• GraphicsLib normal/material/surface maps are kept whenever their CSV entry exists, regardless of whether their base sprite is referenced. This matches how GraphicsLib loads maps in practice.'**
  String get vramImprecisionGfxLibMaps;

  /// No description provided for @vramDebugToggles.
  ///
  /// In en, this message translates to:
  /// **'Debug panel toggles (visible only in Referenced mode):'**
  String get vramDebugToggles;

  /// No description provided for @vramDebugPerSourceChips.
  ///
  /// In en, this message translates to:
  /// **'• Per-source chips: turn individual reference parsers on/off to bisect false positives.'**
  String get vramDebugPerSourceChips;

  /// No description provided for @vramDebugSuppressUnreferenced.
  ///
  /// In en, this message translates to:
  /// **'• Suppress unreferenced: hide the unreferenced bucket entirely for a clean comparison against folder-scan totals.'**
  String get vramDebugSuppressUnreferenced;

  /// No description provided for @vramDebugTrackAttribution.
  ///
  /// In en, this message translates to:
  /// **'• Track attribution: record which parser(s) flagged each file, surfaced in the per-file detail view.'**
  String get vramDebugTrackAttribution;

  /// No description provided for @vramSeeTrueUsage.
  ///
  /// In en, this message translates to:
  /// **'To see true VRAM usage, enable the Console Commands mod and open it in-game. The amount of free VRAM will be shown in the top-left corner.'**
  String get vramSeeTrueUsage;

  /// No description provided for @vramCalculation.
  ///
  /// In en, this message translates to:
  /// **'Calculation'**
  String get vramCalculation;

  /// No description provided for @vramCalcBasis.
  ///
  /// In en, this message translates to:
  /// **'VRAM use is based on an image\'s width, height, and number of channels. File size is irrelevant.'**
  String get vramCalcBasis;

  /// No description provided for @vramMultiplierNote.
  ///
  /// In en, this message translates to:
  /// **'Multiplier = 1x for background images and 1.33x for other images. The 1.33x is extra memory used for mipmapping.'**
  String get vramMultiplierNote;

  /// No description provided for @vramBackgroundsIgnored.
  ///
  /// In en, this message translates to:
  /// **'Backgrounds are ignored if they are the same size as vanilla\'s backgrounds (because vanilla always has only one background loaded, so a vanilla-sized background is not adding more VRAM use).'**
  String get vramBackgroundsIgnored;

  /// No description provided for @vramLargestBackgroundCounted.
  ///
  /// In en, this message translates to:
  /// **'If the mod has one or more backgrounds that are larger than a vanilla background, then the single largest of them is counted as additional VRAM used (additionalVRAMUse = modBackgroundVRAMUse - vanillaBackgroundVRAMUse).'**
  String get vramLargestBackgroundCounted;

  /// No description provided for @vramScanDebug.
  ///
  /// In en, this message translates to:
  /// **'VRAM scan debug'**
  String get vramScanDebug;

  /// No description provided for @vramMultithreadedScanning.
  ///
  /// In en, this message translates to:
  /// **'Multithreaded scanning'**
  String get vramMultithreadedScanning;

  /// No description provided for @vramMultithreadedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Faster scans, higher CPU and file-handle pressure'**
  String get vramMultithreadedSubtitle;

  /// No description provided for @vramMultithreadedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Run the per-mod scan loop across an isolate pool. Faster on large mod lists, but uses more CPU and multiplies the per-isolate file-handle limit by the pool size. Takes effect on the next scan.'**
  String get vramMultithreadedTooltip;

  /// No description provided for @vramEnabledReferenceSources.
  ///
  /// In en, this message translates to:
  /// **'Enabled reference sources'**
  String get vramEnabledReferenceSources;

  /// No description provided for @vramSuppressUnreferencedBucket.
  ///
  /// In en, this message translates to:
  /// **'Suppress unreferenced bucket'**
  String get vramSuppressUnreferencedBucket;

  /// No description provided for @vramSuppressUnreferencedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Hide the unreferenced bucket to compare directly to folder-scan totals.'**
  String get vramSuppressUnreferencedTooltip;

  /// No description provided for @vramEstimateFor.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimate: {mod}'**
  String vramEstimateFor(String mod);

  /// No description provided for @vramTabCountTotal.
  ///
  /// In en, this message translates to:
  /// **'{base} ({total})'**
  String vramTabCountTotal(String base, num total);

  /// No description provided for @vramTabCountFiltered.
  ///
  /// In en, this message translates to:
  /// **'{base} ({filtered} / {total})'**
  String vramTabCountFiltered(String base, num filtered, num total);

  /// No description provided for @vramReferenced.
  ///
  /// In en, this message translates to:
  /// **'Referenced'**
  String get vramReferenced;

  /// No description provided for @vramUnreferenced.
  ///
  /// In en, this message translates to:
  /// **'Unreferenced'**
  String get vramUnreferenced;

  /// No description provided for @vramSearchPathOrReferencedBy.
  ///
  /// In en, this message translates to:
  /// **'Search path or referenced-by…'**
  String get vramSearchPathOrReferencedBy;

  /// No description provided for @vramClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get vramClose;

  /// No description provided for @vramModStatus.
  ///
  /// In en, this message translates to:
  /// **'Status:{status}'**
  String vramModStatus(String status);

  /// No description provided for @vramScanMethod.
  ///
  /// In en, this message translates to:
  /// **'Method: {method}'**
  String vramScanMethod(String method);

  /// No description provided for @vramScanAll.
  ///
  /// In en, this message translates to:
  /// **'Scan All'**
  String get vramScanAll;

  /// No description provided for @vramSelectiveScan.
  ///
  /// In en, this message translates to:
  /// **'Selective Scan'**
  String get vramSelectiveScan;

  /// No description provided for @vramGraphicsLibCsvEntries.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib CSV: {count} entries'**
  String vramGraphicsLibCsvEntries(num count);

  /// No description provided for @vramLastScanned.
  ///
  /// In en, this message translates to:
  /// **'Last scanned {time}'**
  String vramLastScanned(String time);

  /// No description provided for @vramLastScanAt.
  ///
  /// In en, this message translates to:
  /// **'Last scan: {time}'**
  String vramLastScanAt(String time);

  /// No description provided for @vramRescanningThisMod.
  ///
  /// In en, this message translates to:
  /// **'Rescanning this mod…'**
  String get vramRescanningThisMod;

  /// No description provided for @vramRescanThisMod.
  ///
  /// In en, this message translates to:
  /// **'Rescan this mod'**
  String get vramRescanThisMod;

  /// No description provided for @vramScanInProgressNoRescan.
  ///
  /// In en, this message translates to:
  /// **'Scan in progress, rescan unavailable'**
  String get vramScanInProgressNoRescan;

  /// No description provided for @vramBaseTextures.
  ///
  /// In en, this message translates to:
  /// **'Base textures (excl. GraphicsLib)'**
  String get vramBaseTextures;

  /// No description provided for @vramGfxLibMaps.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib {type} maps'**
  String vramGfxLibMaps(String type);

  /// No description provided for @vramTotals.
  ///
  /// In en, this message translates to:
  /// **'Totals'**
  String get vramTotals;

  /// No description provided for @vramReferencedTotal.
  ///
  /// In en, this message translates to:
  /// **'Referenced total (counted against VRAM)'**
  String get vramReferencedTotal;

  /// No description provided for @vramUnreferencedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Images on disk with no detected reference. May include dev leftovers or paths constructed dynamically in Java.'**
  String get vramUnreferencedTooltip;

  /// No description provided for @vramUnreferencedNotCounted.
  ///
  /// In en, this message translates to:
  /// **'Unreferenced (not counted)'**
  String get vramUnreferencedNotCounted;

  /// No description provided for @vramUnreferencedAdvisory.
  ///
  /// In en, this message translates to:
  /// **'Advisory: images on disk that no parsed reference points to. May be dev leftovers, or loaded via dynamic paths the parsers can\'t detect.'**
  String get vramUnreferencedAdvisory;

  /// No description provided for @vramUnreferencedSuffix.
  ///
  /// In en, this message translates to:
  /// **'+{bytes} unreferenced'**
  String vramUnreferencedSuffix(String bytes);

  /// No description provided for @vramScanInProgress.
  ///
  /// In en, this message translates to:
  /// **'Scan in progress…'**
  String get vramScanInProgress;

  /// No description provided for @vramRescanNamed.
  ///
  /// In en, this message translates to:
  /// **'Rescan {mod}'**
  String vramRescanNamed(String mod);

  /// No description provided for @vramReasonGfxLibNotEnabled.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib not enabled'**
  String get vramReasonGfxLibNotEnabled;

  /// No description provided for @vramReasonTypeDisabledInConfig.
  ///
  /// In en, this message translates to:
  /// **'type disabled in GraphicsLib config'**
  String get vramReasonTypeDisabledInConfig;

  /// No description provided for @vramReasonStreamedOnDemand.
  ///
  /// In en, this message translates to:
  /// **'streamed on-demand by GraphicsLib; not counted'**
  String get vramReasonStreamedOnDemand;

  /// No description provided for @vramReasonNotCounted.
  ///
  /// In en, this message translates to:
  /// **'not counted'**
  String get vramReasonNotCounted;

  /// No description provided for @vramNoUnreferencedImages.
  ///
  /// In en, this message translates to:
  /// **'No unreferenced images.'**
  String get vramNoUnreferencedImages;

  /// No description provided for @vramNoReferencedImages.
  ///
  /// In en, this message translates to:
  /// **'No referenced images counted.'**
  String get vramNoReferencedImages;

  /// No description provided for @vramFile.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get vramFile;

  /// No description provided for @vramExplanation.
  ///
  /// In en, this message translates to:
  /// **'Explanation'**
  String get vramExplanation;

  /// No description provided for @vramDimensions.
  ///
  /// In en, this message translates to:
  /// **'Dimensions'**
  String get vramDimensions;

  /// No description provided for @vramGraphicsLib.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib'**
  String get vramGraphicsLib;

  /// No description provided for @vramBytes.
  ///
  /// In en, this message translates to:
  /// **'Bytes'**
  String get vramBytes;

  /// No description provided for @vramTooltipDimensions.
  ///
  /// In en, this message translates to:
  /// **'Dimensions (POT): {size}'**
  String vramTooltipDimensions(String size);

  /// No description provided for @vramTooltipChannels.
  ///
  /// In en, this message translates to:
  /// **'Channels × bits: {channels}'**
  String vramTooltipChannels(num channels);

  /// No description provided for @vramTooltipType.
  ///
  /// In en, this message translates to:
  /// **'Type: {type}{gfxlib}'**
  String vramTooltipType(String type, String gfxlib);

  /// No description provided for @vramTooltipTypeGfxLib.
  ///
  /// In en, this message translates to:
  /// **' · GraphicsLib {name}'**
  String vramTooltipTypeGfxLib(String name);

  /// No description provided for @vramTooltipVanillaReplaceNoExtra.
  ///
  /// In en, this message translates to:
  /// **'Replaces a vanilla file already counted in vanilla VRAM, so adds nothing extra.'**
  String get vramTooltipVanillaReplaceNoExtra;

  /// No description provided for @vramTooltipVanillaReplaceLarger.
  ///
  /// In en, this message translates to:
  /// **'Replaces a vanilla file ({original}) with a larger version. Only the extra {extra} counts.'**
  String vramTooltipVanillaReplaceLarger(String original, String extra);

  /// No description provided for @vramTooltipReferencedBy.
  ///
  /// In en, this message translates to:
  /// **'Referenced by:\n{refs}'**
  String vramTooltipReferencedBy(String refs);

  /// No description provided for @vramTooltipNoAttribution.
  ///
  /// In en, this message translates to:
  /// **'No attribution recorded (folder-scan mode, or background file).'**
  String get vramTooltipNoAttribution;

  /// No description provided for @vramTooltipNotCounted.
  ///
  /// In en, this message translates to:
  /// **'Not counted; {reason}'**
  String vramTooltipNotCounted(String reason);

  /// No description provided for @vramTooltipBackground.
  ///
  /// In en, this message translates to:
  /// **'Background; only the largest oversized one counts'**
  String get vramTooltipBackground;

  /// No description provided for @vramGfxLibTypeDisabledInConfig.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib {type} maps disabled in config'**
  String vramGfxLibTypeDisabledInConfig(String type);

  /// No description provided for @vramGfxLibOnDemand.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib loads/unloads {type} maps on-demand when preloadAllMaps is off'**
  String vramGfxLibOnDemand(String type);

  /// No description provided for @vramMapsNotCounted.
  ///
  /// In en, this message translates to:
  /// **'{type} maps not counted'**
  String vramMapsNotCounted(String type);

  /// No description provided for @vramExplReplacesVanilla.
  ///
  /// In en, this message translates to:
  /// **'Replaces vanilla, no extra VRAM'**
  String get vramExplReplacesVanilla;

  /// No description provided for @vramExplReplacesVanillaLarger.
  ///
  /// In en, this message translates to:
  /// **'Replaces vanilla, {extra} larger'**
  String vramExplReplacesVanillaLarger(String extra);

  /// No description provided for @vramExplUnreferenced.
  ///
  /// In en, this message translates to:
  /// **'(unreferenced)'**
  String get vramExplUnreferenced;

  /// No description provided for @vramExplBackground.
  ///
  /// In en, this message translates to:
  /// **'background'**
  String get vramExplBackground;

  /// No description provided for @vramEstimateVram.
  ///
  /// In en, this message translates to:
  /// **'Estimate VRAM'**
  String get vramEstimateVram;

  /// No description provided for @vramReEstimateVram.
  ///
  /// In en, this message translates to:
  /// **'Re-estimate VRAM'**
  String get vramReEstimateVram;

  /// No description provided for @vramScanningCurrent.
  ///
  /// In en, this message translates to:
  /// **'Scanning: {current}{progress}'**
  String vramScanningCurrent(String current, String progress);

  /// No description provided for @vramScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning{progress}'**
  String vramScanning(String progress);

  /// No description provided for @vramMoreScanOptions.
  ///
  /// In en, this message translates to:
  /// **'More scan options'**
  String get vramMoreScanOptions;

  /// No description provided for @vramScanUnscannedMods.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{Scan {count} mod} other{Scan {count} mods}}'**
  String vramScanUnscannedMods(num count);

  /// No description provided for @vramAllModsScanned.
  ///
  /// In en, this message translates to:
  /// **'All mods scanned'**
  String get vramAllModsScanned;

  /// No description provided for @vramVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimator'**
  String get vramVramEstimator;

  /// No description provided for @vramAboutVramAndEstimator.
  ///
  /// In en, this message translates to:
  /// **'About VRAM & VRAM Estimator'**
  String get vramAboutVramAndEstimator;

  /// No description provided for @vramFilterMods.
  ///
  /// In en, this message translates to:
  /// **'Filter mods...'**
  String get vramFilterMods;

  /// No description provided for @vramScanAllMods.
  ///
  /// In en, this message translates to:
  /// **'Scan all mods'**
  String get vramScanAllMods;

  /// No description provided for @vramReScanAllMods.
  ///
  /// In en, this message translates to:
  /// **'Re-scan all mods'**
  String get vramReScanAllMods;

  /// No description provided for @vramEnabledModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Enabled Mods Only'**
  String get vramEnabledModsOnly;

  /// No description provided for @vramExportCacheAsJson.
  ///
  /// In en, this message translates to:
  /// **'Export cache as JSON…'**
  String get vramExportCacheAsJson;

  /// No description provided for @vramExportDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Export VRAM cache as JSON'**
  String get vramExportDialogTitle;

  /// No description provided for @vramCouldNotOpenSaveDialog.
  ///
  /// In en, this message translates to:
  /// **'Could not open save dialog.'**
  String get vramCouldNotOpenSaveDialog;

  /// No description provided for @vramExportedCacheTo.
  ///
  /// In en, this message translates to:
  /// **'Exported VRAM cache to {path}'**
  String vramExportedCacheTo(String path);

  /// No description provided for @vramExportFailed.
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String vramExportFailed(String error);

  /// No description provided for @vramEstimatedVramUsageBar.
  ///
  /// In en, this message translates to:
  /// **'Estimated VRAM Usage: {used} / {total}'**
  String vramEstimatedVramUsageBar(String used, String total);

  /// No description provided for @chipperSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A Starsector log viewer'**
  String get chipperSubtitle;

  /// No description provided for @chipperLoadMyLog.
  ///
  /// In en, this message translates to:
  /// **'Load my log'**
  String get chipperLoadMyLog;

  /// No description provided for @chipperCopyAll.
  ///
  /// In en, this message translates to:
  /// **'Copy all'**
  String get chipperCopyAll;

  /// No description provided for @chipperOpenLogFile.
  ///
  /// In en, this message translates to:
  /// **'Open Log File'**
  String get chipperOpenLogFile;

  /// No description provided for @chipperUploadLogFile.
  ///
  /// In en, this message translates to:
  /// **'Upload log file'**
  String get chipperUploadLogFile;

  /// No description provided for @chipperWhatsItDo.
  ///
  /// In en, this message translates to:
  /// **'What\'s it do?'**
  String get chipperWhatsItDo;

  /// No description provided for @chipperWhatsItDoBody.
  ///
  /// In en, this message translates to:
  /// **'Chipper pulls useful information out of the log for easier viewing.\n\nThe first part of troubleshooting Starsector issues is looking through a log file for errors and/or outdated mods.'**
  String get chipperWhatsItDoBody;

  /// No description provided for @chipperWhatDoYouDoWithLogs.
  ///
  /// In en, this message translates to:
  /// **'\nWhat do you do with my logs?'**
  String get chipperWhatDoYouDoWithLogs;

  /// No description provided for @chipperLogsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Nothing; I can\'t see them. Everything is done on your browser. Neither the file nor any part of it are ever sent over the Internet.\n\nI do not collect any analytics except for what Cloudflare, the hosting provider, collects by default, which is all anonymous.'**
  String get chipperLogsPrivacy;

  /// No description provided for @chipperCreatedUsingFlutter.
  ///
  /// In en, this message translates to:
  /// **'\nCreated using Flutter, by Google '**
  String get chipperCreatedUsingFlutter;

  /// No description provided for @chipperProbablyDiscontinued.
  ///
  /// In en, this message translates to:
  /// **'so it\'ll probably get discontinued next year.'**
  String get chipperProbablyDiscontinued;

  /// No description provided for @chipperSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code: https://github.com/wispborne/chipper'**
  String get chipperSourceCode;

  /// No description provided for @chipperNotFoundInLog.
  ///
  /// In en, this message translates to:
  /// **'Not found in log.'**
  String get chipperNotFoundInLog;

  /// No description provided for @chipperSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get chipperSystem;

  /// No description provided for @chipperCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get chipperCopy;

  /// No description provided for @chipperStarsectorLabel.
  ///
  /// In en, this message translates to:
  /// **'Starsector: '**
  String get chipperStarsectorLabel;

  /// No description provided for @chipperJreLabel.
  ///
  /// In en, this message translates to:
  /// **'\nJRE: '**
  String get chipperJreLabel;

  /// No description provided for @chipperOsLabel.
  ///
  /// In en, this message translates to:
  /// **'\nOS: '**
  String get chipperOsLabel;

  /// No description provided for @chipperListMayBeIncomplete.
  ///
  /// In en, this message translates to:
  /// **'This list may be incomplete.\n\"Running with the following mods\" block not found in log.'**
  String get chipperListMayBeIncomplete;

  /// No description provided for @chipperModsCount.
  ///
  /// In en, this message translates to:
  /// **'Mods ({count})'**
  String chipperModsCount(num count);

  /// No description provided for @chipperCopyLessInfo.
  ///
  /// In en, this message translates to:
  /// **'Copy (less info)'**
  String get chipperCopyLessInfo;

  /// No description provided for @chipperPopup.
  ///
  /// In en, this message translates to:
  /// **'Popup'**
  String get chipperPopup;

  /// No description provided for @chipperChippedIn.
  ///
  /// In en, this message translates to:
  /// **' chipped in {ms}ms'**
  String chipperChippedIn(String ms);

  /// No description provided for @chipperErrorsCount.
  ///
  /// In en, this message translates to:
  /// **'Errors ({count})'**
  String chipperErrorsCount(num count);

  /// No description provided for @chipperErrorsFilteredCount.
  ///
  /// In en, this message translates to:
  /// **'Errors ({filtered}/{total})'**
  String chipperErrorsFilteredCount(num filtered, num total);

  /// No description provided for @chipperFilter.
  ///
  /// In en, this message translates to:
  /// **'Filter...'**
  String get chipperFilter;

  /// No description provided for @chipperPreviousLineOn.
  ///
  /// In en, this message translates to:
  /// **'Previous line on {thread}'**
  String chipperPreviousLineOn(String thread);

  /// No description provided for @chipperGenericThread.
  ///
  /// In en, this message translates to:
  /// **'thread'**
  String get chipperGenericThread;

  /// No description provided for @chipperDropLogHere.
  ///
  /// In en, this message translates to:
  /// **'Drop starsector.log here'**
  String get chipperDropLogHere;

  /// No description provided for @chipperOrCtrlVPaste.
  ///
  /// In en, this message translates to:
  /// **'or control-v to paste'**
  String get chipperOrCtrlVPaste;

  /// No description provided for @chipperWindowsPathLabel.
  ///
  /// In en, this message translates to:
  /// **'\nWindows: '**
  String get chipperWindowsPathLabel;

  /// No description provided for @chipperMacosPathLabel.
  ///
  /// In en, this message translates to:
  /// **'\n\nMacOS: '**
  String get chipperMacosPathLabel;

  /// No description provided for @chipperLinuxPathLabel.
  ///
  /// In en, this message translates to:
  /// **'\n\nLinux: '**
  String get chipperLinuxPathLabel;

  /// No description provided for @chipperLoadingThinking.
  ///
  /// In en, this message translates to:
  /// **'thinking...'**
  String get chipperLoadingThinking;

  /// No description provided for @chipperLoadingProcessing.
  ///
  /// In en, this message translates to:
  /// **'processing...'**
  String get chipperLoadingProcessing;

  /// No description provided for @chipperLoadingParsing.
  ///
  /// In en, this message translates to:
  /// **'parsing...'**
  String get chipperLoadingParsing;

  /// No description provided for @chipperLoadingPondering.
  ///
  /// In en, this message translates to:
  /// **'pondering the log'**
  String get chipperLoadingPondering;

  /// No description provided for @chipperLoadingChipping.
  ///
  /// In en, this message translates to:
  /// **'chipping...'**
  String get chipperLoadingChipping;

  /// No description provided for @chipperLoadingBreakingDown.
  ///
  /// In en, this message translates to:
  /// **'breaking logs down...'**
  String get chipperLoadingBreakingDown;

  /// No description provided for @chipperLoadingAnalyzing.
  ///
  /// In en, this message translates to:
  /// **'analyzing...'**
  String get chipperLoadingAnalyzing;

  /// No description provided for @chipperLoadingAnalysing.
  ///
  /// In en, this message translates to:
  /// **'analysing...'**
  String get chipperLoadingAnalysing;

  /// No description provided for @chipperLoadingSpinning.
  ///
  /// In en, this message translates to:
  /// **'spinning...'**
  String get chipperLoadingSpinning;

  /// No description provided for @chipperLoadingPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'please wait...'**
  String get chipperLoadingPleaseWait;

  /// No description provided for @chipperLoadingPleaseHold.
  ///
  /// In en, this message translates to:
  /// **'please hold...'**
  String get chipperLoadingPleaseHold;

  /// No description provided for @commonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get commonError;

  /// No description provided for @commonErrorWithDetails.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String commonErrorWithDetails(String error);

  /// No description provided for @commonSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get commonSelectAll;

  /// No description provided for @commonDeselectAll.
  ///
  /// In en, this message translates to:
  /// **'Deselect all'**
  String get commonDeselectAll;

  /// No description provided for @commonApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get commonApply;

  /// No description provided for @commonDiscardChange.
  ///
  /// In en, this message translates to:
  /// **'Discard change'**
  String get commonDiscardChange;

  /// No description provided for @commonCopyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get commonCopyToClipboard;

  /// No description provided for @commonCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get commonCopiedToClipboard;

  /// No description provided for @commonNothingToCopy.
  ///
  /// In en, this message translates to:
  /// **'Nothing to copy'**
  String get commonNothingToCopy;

  /// No description provided for @commonConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get commonConfirm;

  /// No description provided for @commonEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get commonEdit;

  /// No description provided for @commonEmpty.
  ///
  /// In en, this message translates to:
  /// **'(empty)'**
  String get commonEmpty;

  /// No description provided for @commonSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonSearch;

  /// No description provided for @commonMoreOptions.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get commonMoreOptions;

  /// No description provided for @commonRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get commonRefresh;

  /// No description provided for @commonDurationSecond.
  ///
  /// In en, this message translates to:
  /// **'{count} second'**
  String commonDurationSecond(num count);

  /// No description provided for @commonDurationSeconds.
  ///
  /// In en, this message translates to:
  /// **'{count} seconds'**
  String commonDurationSeconds(num count);

  /// No description provided for @commonDurationMinute.
  ///
  /// In en, this message translates to:
  /// **'{count} minute'**
  String commonDurationMinute(num count);

  /// No description provided for @commonDurationMinutes.
  ///
  /// In en, this message translates to:
  /// **'{count} minutes'**
  String commonDurationMinutes(num count);

  /// No description provided for @commonDurationHour.
  ///
  /// In en, this message translates to:
  /// **'{count} hour'**
  String commonDurationHour(num count);

  /// No description provided for @commonDurationHours.
  ///
  /// In en, this message translates to:
  /// **'{count} hours'**
  String commonDurationHours(num count);

  /// No description provided for @commonDurationDay.
  ///
  /// In en, this message translates to:
  /// **'{count} day'**
  String commonDurationDay(num count);

  /// No description provided for @commonDurationDays.
  ///
  /// In en, this message translates to:
  /// **'{count} days'**
  String commonDurationDays(num count);

  /// No description provided for @commonDurationWeek.
  ///
  /// In en, this message translates to:
  /// **'{count} week'**
  String commonDurationWeek(num count);

  /// No description provided for @commonDurationWeeks.
  ///
  /// In en, this message translates to:
  /// **'{count} weeks'**
  String commonDurationWeeks(num count);

  /// No description provided for @commonDurationMonth.
  ///
  /// In en, this message translates to:
  /// **'{count} month'**
  String commonDurationMonth(num count);

  /// No description provided for @commonDurationMonths.
  ///
  /// In en, this message translates to:
  /// **'{count} months'**
  String commonDurationMonths(num count);

  /// No description provided for @commonDurationYear.
  ///
  /// In en, this message translates to:
  /// **'{count} year'**
  String commonDurationYear(num count);

  /// No description provided for @commonDurationYears.
  ///
  /// In en, this message translates to:
  /// **'{count} years'**
  String commonDurationYears(num count);

  /// No description provided for @commonTimeAgo.
  ///
  /// In en, this message translates to:
  /// **'{duration} ago'**
  String commonTimeAgo(String duration);

  /// No description provided for @commonTimeInFuture.
  ///
  /// In en, this message translates to:
  /// **'in {duration}'**
  String commonTimeInFuture(String duration);

  /// No description provided for @dialogsModsFolderWarning.
  ///
  /// In en, this message translates to:
  /// **'Did you just try to delete your mods folder? No! Bad!'**
  String get dialogsModsFolderWarning;

  /// No description provided for @dialogsFailedToDelete.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete {name}: {error}'**
  String dialogsFailedToDelete(String name, String error);

  /// No description provided for @dialogsEnabledSuffix.
  ///
  /// In en, this message translates to:
  /// **' (enabled)'**
  String get dialogsEnabledSuffix;

  /// No description provided for @dialogsCompanionModWarning.
  ///
  /// In en, this message translates to:
  /// **'Deleting the Companion Mod will also delete any custom images you\'ve imported with the Portrait Replacer!\n\nIf you\'ve used {appName} to import custom portraits, you\'ll need to re-import them if you want to use them again.'**
  String dialogsCompanionModWarning(String appName);

  /// No description provided for @dialogsDeleteModTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Mod'**
  String get dialogsDeleteModTitle;

  /// No description provided for @dialogsDeleteModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Mods'**
  String get dialogsDeleteModsTitle;

  /// No description provided for @dialogsDeleteCountMod.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} Mod'**
  String dialogsDeleteCountMod(num count);

  /// No description provided for @dialogsDeleteCountMods.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} Mods'**
  String dialogsDeleteCountMods(num count);

  /// No description provided for @dialogsSelectTheModFolders.
  ///
  /// In en, this message translates to:
  /// **'Select the mod folders to delete:'**
  String get dialogsSelectTheModFolders;

  /// No description provided for @dialogsDeleteWarningSg.
  ///
  /// In en, this message translates to:
  /// **'This will delete the mod folder on disk. This action cannot be undone.'**
  String get dialogsDeleteWarningSg;

  /// No description provided for @dialogsDeleteWarningPl.
  ///
  /// In en, this message translates to:
  /// **'This will delete the mod folders on disk. This action cannot be undone.'**
  String get dialogsDeleteWarningPl;

  /// No description provided for @dialogsAnErrorOccurredWhile.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while deleting the mod folder(s).'**
  String get dialogsAnErrorOccurredWhile;

  /// No description provided for @dialogsAboutAppName.
  ///
  /// In en, this message translates to:
  /// **'{appName} v{version}'**
  String dialogsAboutAppName(String appName, String version);

  /// No description provided for @dialogsAboutTagline.
  ///
  /// In en, this message translates to:
  /// **'A Starsector toolkit\nby Wisp'**
  String get dialogsAboutTagline;

  /// No description provided for @debugInfoId.
  ///
  /// In en, this message translates to:
  /// **'id: '**
  String get debugInfoId;

  /// No description provided for @debugInfoVersion.
  ///
  /// In en, this message translates to:
  /// **'Version: '**
  String get debugInfoVersion;

  /// No description provided for @debugInfoVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'Version Checker'**
  String get debugInfoVersionChecker;

  /// No description provided for @debugInfoInternalId.
  ///
  /// In en, this message translates to:
  /// **'Internal id: '**
  String get debugInfoInternalId;

  /// No description provided for @debugInfoModFolder.
  ///
  /// In en, this message translates to:
  /// **'Mod Folder: '**
  String get debugInfoModFolder;

  /// No description provided for @debugInfoIcon.
  ///
  /// In en, this message translates to:
  /// **'Icon: '**
  String get debugInfoIcon;

  /// No description provided for @debugInfoVersionCheckerLocal.
  ///
  /// In en, this message translates to:
  /// **'Version Checker - Local'**
  String get debugInfoVersionCheckerLocal;

  /// No description provided for @debugInfoVersionCheckerRemote.
  ///
  /// In en, this message translates to:
  /// **'Version Checker - Remote (cached lookup)'**
  String get debugInfoVersionCheckerRemote;

  /// No description provided for @debugInfoModMetadata.
  ///
  /// In en, this message translates to:
  /// **'Mod Metadata'**
  String get debugInfoModMetadata;

  /// No description provided for @debugInfoWholeMod.
  ///
  /// In en, this message translates to:
  /// **'Whole mod: '**
  String get debugInfoWholeMod;

  /// No description provided for @debugInfoThisVersion.
  ///
  /// In en, this message translates to:
  /// **'This version: '**
  String get debugInfoThisVersion;

  /// No description provided for @debugInfoSearchTags.
  ///
  /// In en, this message translates to:
  /// **'Search Tags'**
  String get debugInfoSearchTags;

  /// No description provided for @debugInfoNone.
  ///
  /// In en, this message translates to:
  /// **'(none)'**
  String get debugInfoNone;

  /// No description provided for @dialogPagerPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous (Left arrow)'**
  String get dialogPagerPrevious;

  /// No description provided for @dialogPagerNext.
  ///
  /// In en, this message translates to:
  /// **'Next (Right arrow)'**
  String get dialogPagerNext;

  /// No description provided for @brokenShipImageTooltip.
  ///
  /// In en, this message translates to:
  /// **'Image not found. This is a banana.'**
  String get brokenShipImageTooltip;

  /// No description provided for @modDataFileSubmenuLabel.
  ///
  /// In en, this message translates to:
  /// **'{label} ({count})'**
  String modDataFileSubmenuLabel(String label, num count);

  /// No description provided for @modDataFileStatsAffected.
  ///
  /// In en, this message translates to:
  /// **'{label} (stats affected by {count} files)'**
  String modDataFileStatsAffected(String label, num count);

  /// No description provided for @forceVersionCouldNotDetermine.
  ///
  /// In en, this message translates to:
  /// **'Could not determine current Starsector version.'**
  String get forceVersionCouldNotDetermine;

  /// No description provided for @forceVersionForce.
  ///
  /// In en, this message translates to:
  /// **'Force'**
  String get forceVersionForce;

  /// No description provided for @forceVersionTitleSingle.
  ///
  /// In en, this message translates to:
  /// **'Force to {version}?'**
  String forceVersionTitleSingle(String version);

  /// No description provided for @forceVersionTitleMultiple.
  ///
  /// In en, this message translates to:
  /// **'Force {count} mods to {version}?'**
  String forceVersionTitleMultiple(num count, String version);

  /// No description provided for @forceVersionMadeForSuffix.
  ///
  /// In en, this message translates to:
  /// **' was made for Starsector {gameVersion}, but you can try running it in {currentVersion}.\n'**
  String forceVersionMadeForSuffix(String gameVersion, String currentVersion);

  /// No description provided for @forceVersionSimpleModsNote.
  ///
  /// In en, this message translates to:
  /// **'Simple mods like portrait packs should be fine. Game updates usually don\'t break mods, but it depends on the mod and the game version.\n\n'**
  String get forceVersionSimpleModsNote;

  /// No description provided for @forceVersionModMeantFor.
  ///
  /// In en, this message translates to:
  /// **'- {name} ({version}) is meant for Starsector \'{gameVersion}\'.'**
  String forceVersionModMeantFor(
    String name,
    String version,
    String gameVersion,
  );

  /// No description provided for @forceVersionConfirmMultiple.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to modify {count} mod_info.json files to run on {version}?'**
  String forceVersionConfirmMultiple(num count, String version);

  /// No description provided for @forceVersionConfirmSingle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to modify the \'{name}\' mod_info.json file to run on {version}?'**
  String forceVersionConfirmSingle(String name, String version);

  /// No description provided for @viewerToolbarShownCount.
  ///
  /// In en, this message translates to:
  /// **'({count} shown)'**
  String viewerToolbarShownCount(num count);

  /// No description provided for @viewerToolbarSplitTooltip.
  ///
  /// In en, this message translates to:
  /// **'Split to show two displays that can be scrolled independently.'**
  String get viewerToolbarSplitTooltip;

  /// No description provided for @viewerToolbarCompareMode.
  ///
  /// In en, this message translates to:
  /// **'Compare Mode'**
  String get viewerToolbarCompareMode;

  /// No description provided for @refreshModsAndRecheck.
  ///
  /// In en, this message translates to:
  /// **'Refresh mods and recheck versions'**
  String get refreshModsAndRecheck;

  /// No description provided for @refreshModsRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing'**
  String get refreshModsRefreshing;

  /// No description provided for @rangeFilterResetThisRange.
  ///
  /// In en, this message translates to:
  /// **'Reset this range'**
  String get rangeFilterResetThisRange;

  /// No description provided for @rangeFilterAny.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get rangeFilterAny;

  /// No description provided for @underConstruction.
  ///
  /// In en, this message translates to:
  /// **'UNDER CONSTRUCTION'**
  String get underConstruction;

  /// No description provided for @smartSearchFieldReference.
  ///
  /// In en, this message translates to:
  /// **'Search Field Reference'**
  String get smartSearchFieldReference;

  /// No description provided for @smartSearchViewFieldReference.
  ///
  /// In en, this message translates to:
  /// **'View search field reference'**
  String get smartSearchViewFieldReference;

  /// No description provided for @smartSearchSyntaxExamples.
  ///
  /// In en, this message translates to:
  /// **'Syntax: field:value   field:>value   -field:value   field:\"multi word\"'**
  String get smartSearchSyntaxExamples;

  /// No description provided for @filterAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get filterAdvanced;

  /// No description provided for @filterAdvancedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Advanced filters: adds an \"any\" / \"all\" choice to each group.'**
  String get filterAdvancedTooltip;

  /// No description provided for @filterClearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get filterClearSearch;

  /// No description provided for @filterHideFilters.
  ///
  /// In en, this message translates to:
  /// **'Hide filters'**
  String get filterHideFilters;

  /// No description provided for @filterShowFilters.
  ///
  /// In en, this message translates to:
  /// **'Show filters'**
  String get filterShowFilters;

  /// No description provided for @filterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filterTitle;

  /// No description provided for @filterSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Filter filters'**
  String get filterSearchHint;

  /// No description provided for @filterClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get filterClearAll;

  /// No description provided for @filterClearAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'Resets filters back to default.\nSome filters are applied by default, such as spoiler warnings.'**
  String get filterClearAllTooltip;

  /// No description provided for @filterIncludeAll.
  ///
  /// In en, this message translates to:
  /// **'Include all'**
  String get filterIncludeAll;

  /// No description provided for @filterExcludeAll.
  ///
  /// In en, this message translates to:
  /// **'Exclude all'**
  String get filterExcludeAll;

  /// No description provided for @filterClearAllFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear all filters'**
  String get filterClearAllFilters;

  /// No description provided for @filterGroupSearchScopedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only the values the search is showing.\nHold shift to do the whole group.'**
  String get filterGroupSearchScopedTooltip;

  /// No description provided for @filterLogicAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'All: only shows items that have every value you include.\nClick for \"any\".'**
  String get filterLogicAllTooltip;

  /// No description provided for @filterLogicAnyTooltip.
  ///
  /// In en, this message translates to:
  /// **'Any: shows items with at least one of the values you include.\nClick for \"all\".'**
  String get filterLogicAnyTooltip;

  /// No description provided for @filterLogicAll.
  ///
  /// In en, this message translates to:
  /// **'all'**
  String get filterLogicAll;

  /// No description provided for @filterLogicAny.
  ///
  /// In en, this message translates to:
  /// **'any'**
  String get filterLogicAny;

  /// No description provided for @filterPillRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{label}\"'**
  String filterPillRemove(String label);

  /// No description provided for @filterGroupPersistOn.
  ///
  /// In en, this message translates to:
  /// **'Filter group is being saved'**
  String get filterGroupPersistOn;

  /// No description provided for @filterGroupPersistOff.
  ///
  /// In en, this message translates to:
  /// **'Filter group is not being saved'**
  String get filterGroupPersistOff;

  /// No description provided for @csvExportTitle.
  ///
  /// In en, this message translates to:
  /// **'Export {name} Data'**
  String csvExportTitle(String name);

  /// No description provided for @csvExportAllLoadedData.
  ///
  /// In en, this message translates to:
  /// **'All loaded {name} data and fields.'**
  String csvExportAllLoadedData(String name);

  /// No description provided for @csvExportGridDataOnly.
  ///
  /// In en, this message translates to:
  /// **'Only the {name} data and fields visible in the grid.'**
  String csvExportGridDataOnly(String name);

  /// No description provided for @csvExportOptionAllData.
  ///
  /// In en, this message translates to:
  /// **'All Data'**
  String get csvExportOptionAllData;

  /// No description provided for @csvExportOptionGridData.
  ///
  /// In en, this message translates to:
  /// **'Grid Data'**
  String get csvExportOptionGridData;

  /// No description provided for @csvExportCopyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to Clipboard'**
  String get csvExportCopyToClipboard;

  /// No description provided for @csvExportCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard!'**
  String get csvExportCopiedToClipboard;

  /// No description provided for @csvExportSaveToFile.
  ///
  /// In en, this message translates to:
  /// **'Save to File'**
  String get csvExportSaveToFile;

  /// No description provided for @csvExportSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved: {path}'**
  String csvExportSaved(String path);

  /// No description provided for @csvExportSaveDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Save Weapons CSV'**
  String get csvExportSaveDialogTitle;

  /// No description provided for @csvExportSaveDialogUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Save dialog unavailable. Example file at: {path}'**
  String csvExportSaveDialogUnavailable(String path);

  /// No description provided for @changelogTitle.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get changelogTitle;

  /// No description provided for @changelogRefreshTooltip.
  ///
  /// In en, this message translates to:
  /// **'Refresh changelog'**
  String get changelogRefreshTooltip;

  /// No description provided for @graphBarChart.
  ///
  /// In en, this message translates to:
  /// **'Bar Chart'**
  String get graphBarChart;

  /// No description provided for @graphPieChart.
  ///
  /// In en, this message translates to:
  /// **'Pie Chart'**
  String get graphPieChart;

  /// No description provided for @addModsTooltipGameRunning.
  ///
  /// In en, this message translates to:
  /// **'Game is running'**
  String get addModsTooltipGameRunning;

  /// No description provided for @addModsTooltipIconOnly.
  ///
  /// In en, this message translates to:
  /// **'Tip: drag\'n\'drop to install mods!'**
  String get addModsTooltipIconOnly;

  /// No description provided for @addModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Add new mod(s)\n\nTip: drag\'n\'drop to install mods!'**
  String get addModsTooltip;

  /// No description provided for @fileCardAddToStarsector.
  ///
  /// In en, this message translates to:
  /// **'Add to Starsector'**
  String get fileCardAddToStarsector;

  /// No description provided for @fileCardDropToDownload.
  ///
  /// In en, this message translates to:
  /// **'Drop to download'**
  String get fileCardDropToDownload;

  /// No description provided for @disableCannotWriteGameFolder.
  ///
  /// In en, this message translates to:
  /// **'Cannot modify game folder and/or vmparams.\nTry running {appName} as administrator.'**
  String disableCannotWriteGameFolder(String appName);

  /// No description provided for @disableCannotWriteMods.
  ///
  /// In en, this message translates to:
  /// **'Cannot modify mods folder.\nTry running {appName} as administrator and make sure that mods/enabled_mods.json exists and can be modified.'**
  String disableCannotWriteMods(String appName);

  /// No description provided for @descriptionPlaceholderHint.
  ///
  /// In en, this message translates to:
  /// **'Values shown as {placeholder} are placeholders filled in by game code. Additional text may be entirely added by game code.'**
  String descriptionPlaceholderHint(String placeholder);

  /// No description provided for @gamePathsPathDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'Path does not exist'**
  String get gamePathsPathDoesNotExist;

  /// No description provided for @gamePathsStarsectorNotFound.
  ///
  /// In en, this message translates to:
  /// **'Starsector not found'**
  String get gamePathsStarsectorNotFound;

  /// No description provided for @gamePathsGameFolder.
  ///
  /// In en, this message translates to:
  /// **'Game Folder'**
  String get gamePathsGameFolder;

  /// No description provided for @gamePathsStarsectorLauncher.
  ///
  /// In en, this message translates to:
  /// **'Starsector launcher'**
  String get gamePathsStarsectorLauncher;

  /// No description provided for @gamePathsOverrideTooltip.
  ///
  /// In en, this message translates to:
  /// **'If checked, overrides the default path.'**
  String get gamePathsOverrideTooltip;

  /// No description provided for @gamePathsLauncherTooltip.
  ///
  /// In en, this message translates to:
  /// **'What to launch when you click \'Launch\' within {appName}.'**
  String gamePathsLauncherTooltip(String appName);

  /// No description provided for @gamePathsSelectLauncher.
  ///
  /// In en, this message translates to:
  /// **'Select Starsector launcher'**
  String get gamePathsSelectLauncher;

  /// No description provided for @gamePathsMods.
  ///
  /// In en, this message translates to:
  /// **'Mods'**
  String get gamePathsMods;

  /// No description provided for @gamePathsModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Where your mods are located.'**
  String get gamePathsModsTooltip;

  /// No description provided for @gamePathsSelectMods.
  ///
  /// In en, this message translates to:
  /// **'Select Mods folder'**
  String get gamePathsSelectMods;

  /// No description provided for @gamePathsSaves.
  ///
  /// In en, this message translates to:
  /// **'Saves'**
  String get gamePathsSaves;

  /// No description provided for @gamePathsSavesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Where the game\'s saves are located.'**
  String get gamePathsSavesTooltip;

  /// No description provided for @gamePathsSelectSaves.
  ///
  /// In en, this message translates to:
  /// **'Select Saves folder'**
  String get gamePathsSelectSaves;

  /// No description provided for @gamePathsCoreData.
  ///
  /// In en, this message translates to:
  /// **'Core data'**
  String get gamePathsCoreData;

  /// No description provided for @gamePathsCoreDataTooltip.
  ///
  /// In en, this message translates to:
  /// **'Where the game\'s data is located.\nThis is the folder that contains data, graphics, sounds, and jar files.'**
  String get gamePathsCoreDataTooltip;

  /// No description provided for @gamePathsSelectCore.
  ///
  /// In en, this message translates to:
  /// **'Select Core folder'**
  String get gamePathsSelectCore;

  /// No description provided for @gamePathsFootnote.
  ///
  /// In en, this message translates to:
  /// **'These paths tell {appName} where to look for data. They do not affect Starsector or how it loads data.'**
  String gamePathsFootnote(String appName);

  /// No description provided for @appSettingsResetTitle.
  ///
  /// In en, this message translates to:
  /// **'TriOS Settings Reset'**
  String get appSettingsResetTitle;

  /// No description provided for @appSettingsResetContent.
  ///
  /// In en, this message translates to:
  /// **'Your {appName} settings have been reset.\nThis may be due to an update or a broken settings file.\n\nPlease check your settings. Your mods have not been affected.\n\n\nError: \n{error}'**
  String appSettingsResetContent(String appName, String error);

  /// No description provided for @appDeepLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'\"Install with TriOS\" link support'**
  String get appDeepLinkTitle;

  /// No description provided for @appDeepLinkBody.
  ///
  /// In en, this message translates to:
  /// **'Enable support for \"Install with TriOS\" buttons on the forum?\nYou can always change this on the Settings page.'**
  String get appDeepLinkBody;

  /// No description provided for @appNoThanks.
  ///
  /// In en, this message translates to:
  /// **'No thanks'**
  String get appNoThanks;

  /// No description provided for @appEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get appEnable;
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
