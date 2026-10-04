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

  /// No description provided for @catalogDataSource.
  ///
  /// In en, this message translates to:
  /// **'Catalog data source'**
  String get catalogDataSource;

  /// No description provided for @catalogDataSourceAuto.
  ///
  /// In en, this message translates to:
  /// **'Automatic (follow language)'**
  String get catalogDataSourceAuto;

  /// No description provided for @catalogDataSourceFossic.
  ///
  /// In en, this message translates to:
  /// **'Fossic forum (Chinese)'**
  String get catalogDataSourceFossic;

  /// No description provided for @catalogDataSourceWisp.
  ///
  /// In en, this message translates to:
  /// **'Starsector forum (English)'**
  String get catalogDataSourceWisp;

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

  /// No description provided for @catalogFossicModRepo.
  ///
  /// In en, this message translates to:
  /// **'Fossic Mod Index'**
  String get catalogFossicModRepo;

  /// No description provided for @catalogFossicModRepoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'fossic.org mod index — original, translated, and reposted mods, with forum attachment downloads'**
  String get catalogFossicModRepoSubtitle;

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

  /// No description provided for @chatbotNewChatTooltip.
  ///
  /// In en, this message translates to:
  /// **'Start a new chat'**
  String get chatbotNewChatTooltip;

  /// No description provided for @chatbotMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Message {name}...'**
  String chatbotMessageHint(Object name);

  /// No description provided for @chatbotSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get chatbotSend;

  /// No description provided for @chatbotAiCaution.
  ///
  /// In en, this message translates to:
  /// **'Caution: AI can make mistakes. {name} will never make mistakes, though, because it isn\'t a real AI.'**
  String chatbotAiCaution(Object name);

  /// No description provided for @chatbotEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'How can I help?'**
  String get chatbotEmptyTitle;

  /// No description provided for @chatbotEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ask me about mods, settings, or troubleshooting.'**
  String get chatbotEmptySubtitle;

  /// No description provided for @chatbotWaterUsed.
  ///
  /// In en, this message translates to:
  /// **'· {liters}L H₂O used'**
  String chatbotWaterUsed(Object liters);

  /// No description provided for @chatbotTagOn.
  ///
  /// In en, this message translates to:
  /// **'ON'**
  String get chatbotTagOn;

  /// No description provided for @chatbotTagOff.
  ///
  /// In en, this message translates to:
  /// **'OFF'**
  String get chatbotTagOff;

  /// No description provided for @chatbotAndNMore.
  ///
  /// In en, this message translates to:
  /// **'...and {count} more'**
  String chatbotAndNMore(Object count);

  /// No description provided for @chatbotAndNMoreMods.
  ///
  /// In en, this message translates to:
  /// **'...and {count} more mods'**
  String chatbotAndNMoreMods(Object count);

  /// No description provided for @chatbotAndNMoreAuthors.
  ///
  /// In en, this message translates to:
  /// **'...and {count} more authors'**
  String chatbotAndNMoreAuthors(Object count);

  /// No description provided for @chatbotAndNMoreSources.
  ///
  /// In en, this message translates to:
  /// **'...and {count} more sources'**
  String chatbotAndNMoreSources(Object count);

  /// No description provided for @chatbotStatusEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get chatbotStatusEnabled;

  /// No description provided for @chatbotStatusDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get chatbotStatusDisabled;

  /// No description provided for @chatbotStatusOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get chatbotStatusOn;

  /// No description provided for @chatbotStatusOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get chatbotStatusOff;

  /// No description provided for @chatbotValueNotSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get chatbotValueNotSet;

  /// No description provided for @chatbotValueDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get chatbotValueDefault;

  /// No description provided for @chatbotValueUnknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get chatbotValueUnknown;

  /// No description provided for @chatbotNotLoaded.
  ///
  /// In en, this message translates to:
  /// **'Not loaded'**
  String get chatbotNotLoaded;

  /// No description provided for @chatbotTypeUtility.
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get chatbotTypeUtility;

  /// No description provided for @chatbotTypeTotalConversion.
  ///
  /// In en, this message translates to:
  /// **'Total Conversion'**
  String get chatbotTypeTotalConversion;

  /// No description provided for @chatbotPermissionYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get chatbotPermissionYes;

  /// No description provided for @chatbotPermissionNo.
  ///
  /// In en, this message translates to:
  /// **'NO'**
  String get chatbotPermissionNo;

  /// No description provided for @chatbotNoModDataYet.
  ///
  /// In en, this message translates to:
  /// **'No mod data available yet. Make sure your game folder is configured in Settings.'**
  String get chatbotNoModDataYet;

  /// No description provided for @chatbotNoLogLoadedYet.
  ///
  /// In en, this message translates to:
  /// **'No log file has been loaded yet. Make sure your game folder is configured in Settings.'**
  String get chatbotNoLogLoadedYet;

  /// No description provided for @chatbotNoViewerDataYet.
  ///
  /// In en, this message translates to:
  /// **'Viewer data hasn\'t loaded yet. Make sure your game folder is configured in Settings and try opening the relevant viewer page first.'**
  String get chatbotNoViewerDataYet;

  /// No description provided for @chatbotNoProfileDataYet.
  ///
  /// In en, this message translates to:
  /// **'No mod profile data available yet.'**
  String get chatbotNoProfileDataYet;

  /// No description provided for @chatbotBreakdownVanilla.
  ///
  /// In en, this message translates to:
  /// **'Vanilla: {count}'**
  String chatbotBreakdownVanilla(Object count);

  /// No description provided for @chatbotBreakdownFromMods.
  ///
  /// In en, this message translates to:
  /// **'From mods: {count}'**
  String chatbotBreakdownFromMods(Object count);

  /// No description provided for @chatbotCommonIssuesGuide.
  ///
  /// In en, this message translates to:
  /// **'Common Starsector Issues & Fixes\n\nOutOfMemoryError / Crash during loading\n  Increase RAM allocation on the Dashboard page.\n  Try \"current ram\" to see your setting, or \"more ram\" for a guide.\n\nGame won\'t start / Black screen\n  Verify the game install is intact and not blocked by antivirus.\n  Try disabling recently-added mods.\n  On Windows, try running as Administrator.\n\nMissing mod dependencies\n  Ask \"mod compatibility\" to see which mods have issues.\n  Install missing dependencies from the Catalog page.\n\nMod version mismatch\n  Ask \"mod updates\" to check for newer versions.\n  Check the mod\'s required game version vs yours (\"game version\").\n\nPermission errors\n  Ask \"permission issues\" for platform-specific help.\n\nFor detailed error info, try \"log summary\" and \"log errors\"\nto analyze your Starsector log file.'**
  String get chatbotCommonIssuesGuide;

  /// No description provided for @chatbotCsvExportGuide.
  ///
  /// In en, this message translates to:
  /// **'CSV Export\n\nYou can export data to CSV from several pages:\n  Mod Manager — exports your mod list with versions, authors, etc.\n  Ships — exports all ship/hull data\n  Weapons — exports all weapon data\n  Hullmods — exports all hull modification data\n\nLook for the export button in the toolbar or menu on each page.'**
  String get chatbotCsvExportGuide;

  /// No description provided for @chatbotSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'TriOS Settings'**
  String get chatbotSettingsTitle;

  /// No description provided for @chatbotSettingsGameFolder.
  ///
  /// In en, this message translates to:
  /// **'  Game folder:     {value}'**
  String chatbotSettingsGameFolder(Object value);

  /// No description provided for @chatbotSettingsModsFolder.
  ///
  /// In en, this message translates to:
  /// **'  Mods folder:     {value}'**
  String chatbotSettingsModsFolder(Object value);

  /// No description provided for @chatbotSettingsDirectLaunch.
  ///
  /// In en, this message translates to:
  /// **'  Direct launch:   {value}'**
  String chatbotSettingsDirectLaunch(Object value);

  /// No description provided for @chatbotSettingsDefaultPage.
  ///
  /// In en, this message translates to:
  /// **'  Default page:    {value}'**
  String chatbotSettingsDefaultPage(Object value);

  /// No description provided for @chatbotSettingsTheme.
  ///
  /// In en, this message translates to:
  /// **'  Theme:           {value}'**
  String chatbotSettingsTheme(Object value);

  /// No description provided for @chatbotSettingsGameVersion.
  ///
  /// In en, this message translates to:
  /// **'  Game version:    {value}'**
  String chatbotSettingsGameVersion(Object value);

  /// No description provided for @chatbotSettingsColorfulGrid.
  ///
  /// In en, this message translates to:
  /// **'  Colorful grid:   {value}'**
  String chatbotSettingsColorfulGrid(Object value);

  /// No description provided for @chatbotFallback1.
  ///
  /// In en, this message translates to:
  /// **'I\'m not sure what you mean. Try \"help\" to see what I can answer.'**
  String get chatbotFallback1;

  /// No description provided for @chatbotFallback2.
  ///
  /// In en, this message translates to:
  /// **'I didn\'t catch that. You can ask about mods, RAM, VRAM, logs, or troubleshooting.'**
  String get chatbotFallback2;

  /// No description provided for @chatbotFallback3.
  ///
  /// In en, this message translates to:
  /// **'Hmm, I don\'t have an answer for that. Try asking about mod updates, compatibility, or settings.'**
  String get chatbotFallback3;

  /// No description provided for @chatbotFallback4.
  ///
  /// In en, this message translates to:
  /// **'Not sure about that one. Type \"help\" for a list of topics I know about.'**
  String get chatbotFallback4;

  /// No description provided for @chatbotFallback5.
  ///
  /// In en, this message translates to:
  /// **'I couldn\'t match that to anything I know. Try rephrasing, or ask \"help\" for ideas.'**
  String get chatbotFallback5;

  /// No description provided for @chatbotHelpGuide.
  ///
  /// In en, this message translates to:
  /// **'Hey! I\'m the TriOS assistant. I can help you with a bunch of things — just ask me naturally and I\'ll do my best to figure out what you need.\n\nHere are some of the things I know about:\n\n• Mods — finding mods, checking which are enabled, looking for updates, compatibility issues, browsing by author or category, context menu actions, color tags, and tips\n• Game info — your Starsector version, content counts (ships, weapons, hullmods), and portrait stats\n• Configuration — RAM and VRAM, game folder paths, your settings, and mod profiles\n• Log analysis — summarizing your log file or pulling out errors\n• Troubleshooting — common issues, fixes, and file permission problems\n• Other — TriOS version, whether the game is running, exporting data to CSV, and navigating to different pages\n\nYou don\'t need to use exact commands — just describe what you\'re looking for and I\'ll take it from there!'**
  String get chatbotHelpGuide;

  /// No description provided for @chatbotFindModsGuide.
  ///
  /// In en, this message translates to:
  /// **'Finding New Mods\n\nTriOS has a built-in Catalog page! Click \"Catalog\" in the sidebar\nto browse, search, and install mods directly.\n\nThe Catalog lets you:\n  Browse all available mods\n  Filter by category and game version\n  Download and install with one click\n\nYou can also find mods at:\n  Starsector Forums — fractalsoftworks.com/forum\n  Unofficial Starsector Discord — has mod channels'**
  String get chatbotFindModsGuide;

  /// No description provided for @chatbotFolderPathsTitle.
  ///
  /// In en, this message translates to:
  /// **'Folder Paths'**
  String get chatbotFolderPathsTitle;

  /// No description provided for @chatbotFolderPathsGame.
  ///
  /// In en, this message translates to:
  /// **'  Game:  {value}'**
  String chatbotFolderPathsGame(Object value);

  /// No description provided for @chatbotFolderPathsMods.
  ///
  /// In en, this message translates to:
  /// **'  Mods:  {value}'**
  String chatbotFolderPathsMods(Object value);

  /// No description provided for @chatbotFolderPathsSaves.
  ///
  /// In en, this message translates to:
  /// **'  Saves: {value}'**
  String chatbotFolderPathsSaves(Object value);

  /// No description provided for @chatbotSetGameFolderFirst.
  ///
  /// In en, this message translates to:
  /// **'\nSet your game folder in Settings to get started.'**
  String get chatbotSetGameFolderFirst;

  /// No description provided for @chatbotGameVersionHeader.
  ///
  /// In en, this message translates to:
  /// **'Game Version: {version}'**
  String chatbotGameVersionHeader(Object version);

  /// No description provided for @chatbotGameVersionCompatibleCount.
  ///
  /// In en, this message translates to:
  /// **'  Compatible mods: {count}'**
  String chatbotGameVersionCompatibleCount(Object count);

  /// No description provided for @chatbotGameVersionWarningsCount.
  ///
  /// In en, this message translates to:
  /// **'  Mods with warnings: {count}'**
  String chatbotGameVersionWarningsCount(Object count);

  /// No description provided for @chatbotGameVersionIncompatibleCount.
  ///
  /// In en, this message translates to:
  /// **'  Incompatible mods: {count}'**
  String chatbotGameVersionIncompatibleCount(Object count);

  /// No description provided for @chatbotShipsHeader.
  ///
  /// In en, this message translates to:
  /// **'Ships: {count} total'**
  String chatbotShipsHeader(Object count);

  /// No description provided for @chatbotHullmodsHeader.
  ///
  /// In en, this message translates to:
  /// **'Hullmods: {count} total'**
  String chatbotHullmodsHeader(Object count);

  /// No description provided for @chatbotWeaponsHeader.
  ///
  /// In en, this message translates to:
  /// **'Weapons: {count} total'**
  String chatbotWeaponsHeader(Object count);

  /// No description provided for @chatbotLaunchTitle.
  ///
  /// In en, this message translates to:
  /// **'Launch Configuration'**
  String get chatbotLaunchTitle;

  /// No description provided for @chatbotLaunchDirect.
  ///
  /// In en, this message translates to:
  /// **'  Direct launch:   {value}'**
  String chatbotLaunchDirect(Object value);

  /// No description provided for @chatbotLaunchDirectEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled (TriOS acts as launcher)'**
  String get chatbotLaunchDirectEnabled;

  /// No description provided for @chatbotLaunchDirectDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled (opens game exe)'**
  String get chatbotLaunchDirectDisabled;

  /// No description provided for @chatbotLaunchCustomExe.
  ///
  /// In en, this message translates to:
  /// **'  Custom exe path: {path}'**
  String chatbotLaunchCustomExe(Object path);

  /// No description provided for @chatbotLaunchTip.
  ///
  /// In en, this message translates to:
  /// **'\nTip: Enable Direct Launch in Settings for better mod compatibility.'**
  String get chatbotLaunchTip;

  /// No description provided for @chatbotLogSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Log Summary'**
  String get chatbotLogSummaryTitle;

  /// No description provided for @chatbotLogSummaryGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game version: {value}'**
  String chatbotLogSummaryGameVersion(Object value);

  /// No description provided for @chatbotLogSummaryOs.
  ///
  /// In en, this message translates to:
  /// **'OS: {value}'**
  String chatbotLogSummaryOs(Object value);

  /// No description provided for @chatbotLogSummaryJava.
  ///
  /// In en, this message translates to:
  /// **'Java: {value}'**
  String chatbotLogSummaryJava(Object value);

  /// No description provided for @chatbotLogSummaryModsLoaded.
  ///
  /// In en, this message translates to:
  /// **'Mods loaded: {count}'**
  String chatbotLogSummaryModsLoaded(Object count);

  /// No description provided for @chatbotLogSummaryErrors.
  ///
  /// In en, this message translates to:
  /// **'Errors found: {count}'**
  String chatbotLogSummaryErrors(Object count);

  /// No description provided for @chatbotLogSummaryFile.
  ///
  /// In en, this message translates to:
  /// **'Log file: {path}'**
  String chatbotLogSummaryFile(Object path);

  /// No description provided for @chatbotLogSummaryLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: {time}'**
  String chatbotLogSummaryLastUpdated(Object time);

  /// No description provided for @chatbotModCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Count'**
  String get chatbotModCountTitle;

  /// No description provided for @chatbotModCountTotal.
  ///
  /// In en, this message translates to:
  /// **'  Total: {count}'**
  String chatbotModCountTotal(Object count);

  /// No description provided for @chatbotModCountEnabled.
  ///
  /// In en, this message translates to:
  /// **'  Enabled: {count}'**
  String chatbotModCountEnabled(Object count);

  /// No description provided for @chatbotModCountDisabled.
  ///
  /// In en, this message translates to:
  /// **'  Disabled: {count}'**
  String chatbotModCountDisabled(Object count);

  /// No description provided for @chatbotModManagerFeaturesGuide.
  ///
  /// In en, this message translates to:
  /// **'Mod Manager Features\n\nRight-click a mod for options:\n  Change active version, open mod folder, open forum page,\n  assign categories, set a color tag, force game version,\n  view in ship/weapon/hullmod viewer, estimate VRAM,\n  mute updates, redownload & reinstall, and delete.\n\nRight-click with multiple mods selected:\n  Bulk enable/disable, check VRAM, check for updates,\n  set color tags, force game version, and delete selected.\n\nColor tags:\n  Assign one of 8 color presets to visually organize mods.\n\nGroup By:\n  Use the \"Group By\" dropdown above the mod list to group\n  mods by various criteria.\n\nCategories:\n  Assign mods to categories via the right-click menu.\n  Mods can appear in multiple categories at once.'**
  String get chatbotModManagerFeaturesGuide;

  /// No description provided for @chatbotPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'File Permission Check'**
  String get chatbotPermissionTitle;

  /// No description provided for @chatbotPermissionModsWritable.
  ///
  /// In en, this message translates to:
  /// **'  Mods folder writable: {value}'**
  String chatbotPermissionModsWritable(Object value);

  /// No description provided for @chatbotPermissionGameWritable.
  ///
  /// In en, this message translates to:
  /// **'  Game folder writable: {value}'**
  String chatbotPermissionGameWritable(Object value);

  /// No description provided for @chatbotPermissionWindowsFixes.
  ///
  /// In en, this message translates to:
  /// **'Windows fixes:'**
  String get chatbotPermissionWindowsFixes;

  /// No description provided for @chatbotPermissionWindowsStep1.
  ///
  /// In en, this message translates to:
  /// **'  1. Right-click TriOS → \"Run as administrator\"'**
  String get chatbotPermissionWindowsStep1;

  /// No description provided for @chatbotPermissionWindowsStep2.
  ///
  /// In en, this message translates to:
  /// **'  2. Move Starsector out of Program Files to avoid UAC issues.'**
  String get chatbotPermissionWindowsStep2;

  /// No description provided for @chatbotPermissionWindowsStep3.
  ///
  /// In en, this message translates to:
  /// **'  3. Check that your antivirus isn\'t blocking file access.'**
  String get chatbotPermissionWindowsStep3;

  /// No description provided for @chatbotPermissionMacFixes.
  ///
  /// In en, this message translates to:
  /// **'macOS fixes:'**
  String get chatbotPermissionMacFixes;

  /// No description provided for @chatbotPermissionMacStep1.
  ///
  /// In en, this message translates to:
  /// **'  1. In System Settings → Privacy & Security, grant TriOS Full Disk Access.'**
  String get chatbotPermissionMacStep1;

  /// No description provided for @chatbotPermissionMacStep2.
  ///
  /// In en, this message translates to:
  /// **'  2. Run: chmod -R u+rw \"<game folder path>\"'**
  String get chatbotPermissionMacStep2;

  /// No description provided for @chatbotPermissionLinuxFixes.
  ///
  /// In en, this message translates to:
  /// **'Linux fixes:'**
  String get chatbotPermissionLinuxFixes;

  /// No description provided for @chatbotPermissionLinuxStep2.
  ///
  /// In en, this message translates to:
  /// **'  2. Check folder ownership: chown -R \$USER \"<game folder path>\"'**
  String get chatbotPermissionLinuxStep2;

  /// No description provided for @chatbotPortraitsHeader.
  ///
  /// In en, this message translates to:
  /// **'Portraits: {count} total'**
  String chatbotPortraitsHeader(Object count);

  /// No description provided for @chatbotRamAllocationGuide.
  ///
  /// In en, this message translates to:
  /// **'Adjusting RAM Allocation\n\nTriOS makes this easy! Go to the Dashboard page and look for the\nRAM allocation setting. You can adjust the slider or enter a value\ndirectly.\n\nCommon recommendations:\n  Light modding (< 20 mods):  2–4 GB\n  Medium modding (20–50 mods): 4–6 GB\n  Heavy modding (50+ mods):   6–8 GB\n\nTips:\n  Leave at least 4 GB for your OS and other programs.\n  If you have 16 GB total, don\'t go above 10–12 GB.\n  The setting changes the -Xmx JVM flag in vmparams.\n\nSigns you need more RAM:\n  \"OutOfMemoryError\" in your log file.\n  Game freezing or crashing during loading.\n  Lag spikes during large battles.'**
  String get chatbotRamAllocationGuide;

  /// No description provided for @chatbotRamVsVramGuide.
  ///
  /// In en, this message translates to:
  /// **'RAM vs VRAM — Quick Guide\n\nRAM (System Memory):\n  Used by Starsector\'s Java process for game logic, mod code, and data.\n  Controlled by the JVM heap size (-Xmx flag).\n  More RAM = more mods, bigger battles, fewer OutOfMemoryErrors.\n\nVRAM (Video Memory):\n  Lives on your GPU. Used for textures, sprites, and shaders.\n  NOT controlled by the -Xmx flag or any JVM setting.\n  More VRAM = more graphical mods, higher-res textures.\n\nKey Takeaway:\n  \"OutOfMemoryError\" in your log → you need more RAM.\n  Graphical glitches or missing textures → could be VRAM.\n  Most Starsector modding issues are RAM, not VRAM.\n\nUse the Dashboard page in TriOS to adjust your RAM allocation.'**
  String get chatbotRamVsVramGuide;

  /// No description provided for @chatbotViewerStatsTitle.
  ///
  /// In en, this message translates to:
  /// **'Game Content Overview'**
  String get chatbotViewerStatsTitle;

  /// No description provided for @chatbotViewerStatsShips.
  ///
  /// In en, this message translates to:
  /// **'  Ships:    {value}'**
  String chatbotViewerStatsShips(Object value);

  /// No description provided for @chatbotViewerStatsWeapons.
  ///
  /// In en, this message translates to:
  /// **'  Weapons:  {value}'**
  String chatbotViewerStatsWeapons(Object value);

  /// No description provided for @chatbotViewerStatsHullmods.
  ///
  /// In en, this message translates to:
  /// **'  Hullmods: {value}'**
  String chatbotViewerStatsHullmods(Object value);

  /// No description provided for @chatbotViewerStatsPortraits.
  ///
  /// In en, this message translates to:
  /// **'  Portraits: {value}'**
  String chatbotViewerStatsPortraits(Object value);

  /// No description provided for @chatbotOpenViewerToLoad.
  ///
  /// In en, this message translates to:
  /// **'\nOpen a viewer page to load its data if not yet loaded.'**
  String get chatbotOpenViewerToLoad;

  /// No description provided for @chatbotAvailablePages.
  ///
  /// In en, this message translates to:
  /// **'Available pages in the sidebar:\n'**
  String get chatbotAvailablePages;

  /// No description provided for @chatbotAskAboutSpecificPage.
  ///
  /// In en, this message translates to:
  /// **'\nAsk about a specific page for details.'**
  String get chatbotAskAboutSpecificPage;

  /// No description provided for @chatbotPageDashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard — the main overview page with RAM settings and mod summary.'**
  String get chatbotPageDashboard;

  /// No description provided for @chatbotPageModManager.
  ///
  /// In en, this message translates to:
  /// **'Mod Manager — enable, disable, and manage your installed mods.'**
  String get chatbotPageModManager;

  /// No description provided for @chatbotPageModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Mod Profiles — save and switch between different mod configurations.'**
  String get chatbotPageModProfiles;

  /// No description provided for @chatbotPageVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimator — estimate GPU memory usage for your mods.'**
  String get chatbotPageVramEstimator;

  /// No description provided for @chatbotPageChipper.
  ///
  /// In en, this message translates to:
  /// **'Chipper (Log Viewer) — analyze your Starsector log file.'**
  String get chatbotPageChipper;

  /// No description provided for @chatbotPagePortraits.
  ///
  /// In en, this message translates to:
  /// **'Portraits — browse and replace character portraits.'**
  String get chatbotPagePortraits;

  /// No description provided for @chatbotPageWeapons.
  ///
  /// In en, this message translates to:
  /// **'Weapons — browse all weapons from vanilla and mods.'**
  String get chatbotPageWeapons;

  /// No description provided for @chatbotPageShips.
  ///
  /// In en, this message translates to:
  /// **'Ships — browse all ships/hulls from vanilla and mods.'**
  String get chatbotPageShips;

  /// No description provided for @chatbotPageHullmods.
  ///
  /// In en, this message translates to:
  /// **'Hullmods — browse all hull modifications.'**
  String get chatbotPageHullmods;

  /// No description provided for @chatbotPageSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings — configure TriOS preferences and paths.'**
  String get chatbotPageSettings;

  /// No description provided for @chatbotPageCatalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog — browse and download mods from the online catalog.'**
  String get chatbotPageCatalog;

  /// No description provided for @chatbotPageTips.
  ///
  /// In en, this message translates to:
  /// **'Tips — view gameplay tips from your installed mods.'**
  String get chatbotPageTips;

  /// No description provided for @chatbotAskWhichMod.
  ///
  /// In en, this message translates to:
  /// **'What mod are you looking for? Try \"find <name>\", \"do i have <name>\", or just type a mod name.'**
  String get chatbotAskWhichMod;

  /// No description provided for @chatbotFoundModsMatching.
  ///
  /// In en, this message translates to:
  /// **'Found {count} mods matching \"{query}\":'**
  String chatbotFoundModsMatching(Object count, Object query);

  /// No description provided for @chatbotAskSpecificMod.
  ///
  /// In en, this message translates to:
  /// **'\nAsk about a specific mod for full details.'**
  String get chatbotAskSpecificMod;

  /// No description provided for @chatbotFoundHeader.
  ///
  /// In en, this message translates to:
  /// **'Found: {name}'**
  String chatbotFoundHeader(Object name);

  /// No description provided for @chatbotDetailVersion.
  ///
  /// In en, this message translates to:
  /// **'  Version: {value}'**
  String chatbotDetailVersion(Object value);

  /// No description provided for @chatbotDetailAuthor.
  ///
  /// In en, this message translates to:
  /// **'  Author: {value}'**
  String chatbotDetailAuthor(Object value);

  /// No description provided for @chatbotDetailStatus.
  ///
  /// In en, this message translates to:
  /// **'  Status: {value}'**
  String chatbotDetailStatus(Object value);

  /// No description provided for @chatbotDetailType.
  ///
  /// In en, this message translates to:
  /// **'  Type: {value}'**
  String chatbotDetailType(Object value);

  /// No description provided for @chatbotDetailGameVersion.
  ///
  /// In en, this message translates to:
  /// **'  Game version: {value}'**
  String chatbotDetailGameVersion(Object value);

  /// No description provided for @chatbotDetailDescription.
  ///
  /// In en, this message translates to:
  /// **'  Description: {value}'**
  String chatbotDetailDescription(Object value);

  /// No description provided for @chatbotDetailDependencies.
  ///
  /// In en, this message translates to:
  /// **'  Dependencies:'**
  String get chatbotDetailDependencies;

  /// No description provided for @chatbotDepNotInstalled.
  ///
  /// In en, this message translates to:
  /// **' [NOT INSTALLED]'**
  String get chatbotDepNotInstalled;

  /// No description provided for @chatbotDepDisabled.
  ///
  /// In en, this message translates to:
  /// **' [DISABLED]'**
  String get chatbotDepDisabled;

  /// No description provided for @chatbotDetailInstalledVariants.
  ///
  /// In en, this message translates to:
  /// **'  Installed variants: {count}'**
  String chatbotDetailInstalledVariants(Object count);

  /// No description provided for @chatbotUpdateAvailable.
  ///
  /// In en, this message translates to:
  /// **'  Update available: {remote} (you have {local})'**
  String chatbotUpdateAvailable(Object local, Object remote);

  /// No description provided for @chatbotUpdateNewerVersion.
  ///
  /// In en, this message translates to:
  /// **'newer version'**
  String get chatbotUpdateNewerVersion;

  /// No description provided for @chatbotIssueGameVersionIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Game version incompatible (requires {needed}, game is {current})'**
  String chatbotIssueGameVersionIncompatible(Object current, Object needed);

  /// No description provided for @chatbotIssueGameVersionWarning.
  ///
  /// In en, this message translates to:
  /// **'Game version may be incompatible (mod targets {target}, game is {current})'**
  String chatbotIssueGameVersionWarning(Object current, Object target);

  /// No description provided for @chatbotIssueMissingDependency.
  ///
  /// In en, this message translates to:
  /// **'Missing dependency: {name}'**
  String chatbotIssueMissingDependency(Object name);

  /// No description provided for @chatbotIssueDisabledDependency.
  ///
  /// In en, this message translates to:
  /// **'Disabled dependency: {name}'**
  String chatbotIssueDisabledDependency(Object name);

  /// No description provided for @chatbotIssueVersionMismatch.
  ///
  /// In en, this message translates to:
  /// **'Version mismatch: {name}'**
  String chatbotIssueVersionMismatch(Object name);

  /// No description provided for @chatbotIssueIncompatibleVersion.
  ///
  /// In en, this message translates to:
  /// **'Incompatible version: {name}'**
  String chatbotIssueIncompatibleVersion(Object name);

  /// No description provided for @chatbotIssuesHeader.
  ///
  /// In en, this message translates to:
  /// **'  Issues:'**
  String get chatbotIssuesHeader;

  /// No description provided for @chatbotConflictGameVersionIncompatible.
  ///
  /// In en, this message translates to:
  /// **'game version incompatible (needs {needed}, game is {current})'**
  String chatbotConflictGameVersionIncompatible(Object current, Object needed);

  /// No description provided for @chatbotConflictGameVersionWarning.
  ///
  /// In en, this message translates to:
  /// **'game version warning'**
  String get chatbotConflictGameVersionWarning;

  /// No description provided for @chatbotConflictMissingDep.
  ///
  /// In en, this message translates to:
  /// **'missing dep: {name}'**
  String chatbotConflictMissingDep(Object name);

  /// No description provided for @chatbotConflictDisabledDep.
  ///
  /// In en, this message translates to:
  /// **'disabled dep: {name}'**
  String chatbotConflictDisabledDep(Object name);

  /// No description provided for @chatbotConflictVersionMismatch.
  ///
  /// In en, this message translates to:
  /// **'version mismatch: {name}'**
  String chatbotConflictVersionMismatch(Object name);

  /// No description provided for @chatbotConflictIncompatibleVersion.
  ///
  /// In en, this message translates to:
  /// **'incompatible version: {name}'**
  String chatbotConflictIncompatibleVersion(Object name);

  /// No description provided for @chatbotModsWithIssuesTitle.
  ///
  /// In en, this message translates to:
  /// **'Mods With Issues ({count})'**
  String chatbotModsWithIssuesTitle(Object count);

  /// No description provided for @chatbotCompatGameVersionIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Game version: incompatible (requires {required}, game is {current})'**
  String chatbotCompatGameVersionIncompatible(Object current, Object required);

  /// No description provided for @chatbotCompatGameVersionWarning.
  ///
  /// In en, this message translates to:
  /// **'Game version: may be incompatible (mod targets {target}, game is {current})'**
  String chatbotCompatGameVersionWarning(Object current, Object target);

  /// No description provided for @chatbotCompatTitle.
  ///
  /// In en, this message translates to:
  /// **'Compatibility Issues ({count} mod(s) affected)'**
  String chatbotCompatTitle(Object count);

  /// No description provided for @chatbotModsHaveChangelogs.
  ///
  /// In en, this message translates to:
  /// **'{count} mods have changelogs:'**
  String chatbotModsHaveChangelogs(Object count);

  /// No description provided for @chatbotAskChangelogFor.
  ///
  /// In en, this message translates to:
  /// **'\nAsk \"changelog for <mod name>\" to see a specific one.'**
  String get chatbotAskChangelogFor;

  /// No description provided for @chatbotNoChangelogFor.
  ///
  /// In en, this message translates to:
  /// **'No changelog available for \"{name}\".'**
  String chatbotNoChangelogFor(Object name);

  /// No description provided for @chatbotTruncatedSuffix.
  ///
  /// In en, this message translates to:
  /// **'...\n(truncated)'**
  String get chatbotTruncatedSuffix;

  /// No description provided for @chatbotModsByAuthor.
  ///
  /// In en, this message translates to:
  /// **'Mods by {author} ({count})'**
  String chatbotModsByAuthor(Object author, Object count);

  /// No description provided for @chatbotModAuthorsTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Authors'**
  String get chatbotModAuthorsTitle;

  /// No description provided for @chatbotAuthorModCount.
  ///
  /// In en, this message translates to:
  /// **'  {author}: {count} mod(s)'**
  String chatbotAuthorModCount(Object author, Object count);

  /// No description provided for @chatbotEnabledModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Enabled Mods ({count})'**
  String chatbotEnabledModsTitle(Object count);

  /// No description provided for @chatbotDisabledModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Disabled Mods ({count})'**
  String chatbotDisabledModsTitle(Object count);

  /// No description provided for @chatbotInstalledModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Installed Mods ({count})'**
  String chatbotInstalledModsTitle(Object count);

  /// No description provided for @chatbotTcModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Total Conversion Mods ({count})'**
  String chatbotTcModsTitle(Object count);

  /// No description provided for @chatbotUtilityModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Utility/Library Mods ({count})'**
  String chatbotUtilityModsTitle(Object count);

  /// No description provided for @chatbotActiveProfileHeader.
  ///
  /// In en, this message translates to:
  /// **'Active Profile: {name}'**
  String chatbotActiveProfileHeader(Object name);

  /// No description provided for @chatbotProfileModsCount.
  ///
  /// In en, this message translates to:
  /// **'  Mods: {count}'**
  String chatbotProfileModsCount(Object count);

  /// No description provided for @chatbotProfileCreated.
  ///
  /// In en, this message translates to:
  /// **'  Created: {date}'**
  String chatbotProfileCreated(Object date);

  /// No description provided for @chatbotProfileModified.
  ///
  /// In en, this message translates to:
  /// **'  Modified: {date}'**
  String chatbotProfileModified(Object date);

  /// No description provided for @chatbotModProfilesTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Profiles ({count})'**
  String chatbotModProfilesTitle(Object count);

  /// No description provided for @chatbotProfileEntry.
  ///
  /// In en, this message translates to:
  /// **'  {name} ({count} mods){marker}'**
  String chatbotProfileEntry(Object count, Object marker, Object name);

  /// No description provided for @chatbotProfileActiveMarker.
  ///
  /// In en, this message translates to:
  /// **' ← active'**
  String get chatbotProfileActiveMarker;

  /// No description provided for @chatbotProfileMatchesCurrent.
  ///
  /// In en, this message translates to:
  /// **'Profile \"{name}\" matches your current mod state exactly.'**
  String chatbotProfileMatchesCurrent(Object name);

  /// No description provided for @chatbotProfileVsCurrent.
  ///
  /// In en, this message translates to:
  /// **'Profile \"{name}\" vs Current Mods'**
  String chatbotProfileVsCurrent(Object name);

  /// No description provided for @chatbotInProfileNotEnabled.
  ///
  /// In en, this message translates to:
  /// **'  In profile but not currently enabled:'**
  String get chatbotInProfileNotEnabled;

  /// No description provided for @chatbotEnabledNotInProfile.
  ///
  /// In en, this message translates to:
  /// **'  Currently enabled but not in profile:'**
  String get chatbotEnabledNotInProfile;

  /// No description provided for @chatbotModCategoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Categories ({count})'**
  String chatbotModCategoriesTitle(Object count);

  /// No description provided for @chatbotCategoryModCount.
  ///
  /// In en, this message translates to:
  /// **'  {name} ({count} mods)'**
  String chatbotCategoryModCount(Object count, Object name);

  /// No description provided for @chatbotNoModsInCategories.
  ///
  /// In en, this message translates to:
  /// **'\nNo mods are assigned to categories yet.'**
  String get chatbotNoModsInCategories;

  /// No description provided for @chatbotModUpdateLine.
  ///
  /// In en, this message translates to:
  /// **'  {name}: v{local} -> v{remote}'**
  String chatbotModUpdateLine(Object local, Object name, Object remote);

  /// No description provided for @chatbotModUpdateAvailableLine.
  ///
  /// In en, this message translates to:
  /// **'  {name}: update available'**
  String chatbotModUpdateAvailableLine(Object name);

  /// No description provided for @chatbotUpdatesAvailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Mod Updates Available ({count})'**
  String chatbotUpdatesAvailableTitle(Object count);

  /// No description provided for @chatbotMostRequiredTitle.
  ///
  /// In en, this message translates to:
  /// **'Most Required Mods'**
  String get chatbotMostRequiredTitle;

  /// No description provided for @chatbotDependencyEntry.
  ///
  /// In en, this message translates to:
  /// **'  {name}: required by {count} mod(s){status}'**
  String chatbotDependencyEntry(Object count, Object name, Object status);

  /// No description provided for @chatbotRecentChangesTitle.
  ///
  /// In en, this message translates to:
  /// **'Recent Mod Changes (last {count})'**
  String chatbotRecentChangesTitle(Object count);

  /// No description provided for @chatbotAuditEntry.
  ///
  /// In en, this message translates to:
  /// **'  [{action}] {name}  ({time})'**
  String chatbotAuditEntry(Object action, Object name, Object time);

  /// No description provided for @chatbotAuditReason.
  ///
  /// In en, this message translates to:
  /// **'    Reason: {reason}'**
  String chatbotAuditReason(Object reason);

  /// No description provided for @chatbotTipsTitle.
  ///
  /// In en, this message translates to:
  /// **'Tips from Your Mods'**
  String get chatbotTipsTitle;

  /// No description provided for @chatbotTipNoText.
  ///
  /// In en, this message translates to:
  /// **'(no text)'**
  String get chatbotTipNoText;

  /// No description provided for @chatbotTipSource.
  ///
  /// In en, this message translates to:
  /// **'    — {source}'**
  String chatbotTipSource(Object source);

  /// No description provided for @chatbotMoreTips.
  ///
  /// In en, this message translates to:
  /// **'\n{count} more tips available. Ask again for different ones!'**
  String chatbotMoreTips(Object count);

  /// No description provided for @chatbotTopVramModsTitle.
  ///
  /// In en, this message translates to:
  /// **'Top {count} Mods by VRAM Usage'**
  String chatbotTopVramModsTitle(Object count);

  /// No description provided for @chatbotVramModEntry.
  ///
  /// In en, this message translates to:
  /// **'  [{status}] {name} — ~{size} MB'**
  String chatbotVramModEntry(Object name, Object size, Object status);

  /// No description provided for @chatbotVramEstimateTitle.
  ///
  /// In en, this message translates to:
  /// **'VRAM Usage Estimate'**
  String get chatbotVramEstimateTitle;

  /// No description provided for @chatbotVramEnabledMods.
  ///
  /// In en, this message translates to:
  /// **'  Enabled mods ({count}): ~{size}'**
  String chatbotVramEnabledMods(Object count, Object size);

  /// No description provided for @chatbotVramAllMods.
  ///
  /// In en, this message translates to:
  /// **'  All mods ({count}):     ~{size}'**
  String chatbotVramAllMods(Object count, Object size);

  /// No description provided for @chatbotVramLastScanned.
  ///
  /// In en, this message translates to:
  /// **'  Last scanned: {time}'**
  String chatbotVramLastScanned(Object time);

  /// No description provided for @chatbotVramNote.
  ///
  /// In en, this message translates to:
  /// **'\nNote: This is an estimate based on texture sizes.\nAsk \"high vram mods\" to see the biggest consumers.'**
  String get chatbotVramNote;

  /// No description provided for @chatbotRamAllocationTitle.
  ///
  /// In en, this message translates to:
  /// **'RAM Allocation'**
  String get chatbotRamAllocationTitle;

  /// No description provided for @chatbotRamCurrent.
  ///
  /// In en, this message translates to:
  /// **'  Current RAM: {ram} MB'**
  String chatbotRamCurrent(Object ram);

  /// No description provided for @chatbotRamManagedFiles.
  ///
  /// In en, this message translates to:
  /// **'  Managed vmparams files ({count}):'**
  String chatbotRamManagedFiles(Object count);

  /// No description provided for @chatbotRamFileEntry.
  ///
  /// In en, this message translates to:
  /// **'    - {path}{ram}'**
  String chatbotRamFileEntry(Object path, Object ram);

  /// No description provided for @chatbotRamMultipleFilesWarning.
  ///
  /// In en, this message translates to:
  /// **'\n  Warning: Multiple vmparams files have different RAM amounts.'**
  String get chatbotRamMultipleFilesWarning;

  /// No description provided for @chatbotRecentlyAddedTitle.
  ///
  /// In en, this message translates to:
  /// **'Recently Added Mods'**
  String get chatbotRecentlyAddedTitle;

  /// No description provided for @chatbotRecentlyAddedEntry.
  ///
  /// In en, this message translates to:
  /// **'  {name} {version} — added {age}'**
  String chatbotRecentlyAddedEntry(Object age, Object name, Object version);

  /// No description provided for @chatbotAgoYear.
  ///
  /// In en, this message translates to:
  /// **'{count} year ago'**
  String chatbotAgoYear(Object count);

  /// No description provided for @chatbotAgoYears.
  ///
  /// In en, this message translates to:
  /// **'{count} years ago'**
  String chatbotAgoYears(Object count);

  /// No description provided for @chatbotAgoMonth.
  ///
  /// In en, this message translates to:
  /// **'{count} month ago'**
  String chatbotAgoMonth(Object count);

  /// No description provided for @chatbotAgoMonths.
  ///
  /// In en, this message translates to:
  /// **'{count} months ago'**
  String chatbotAgoMonths(Object count);

  /// No description provided for @chatbotAgoDay.
  ///
  /// In en, this message translates to:
  /// **'{count} day ago'**
  String chatbotAgoDay(Object count);

  /// No description provided for @chatbotAgoDays.
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String chatbotAgoDays(Object count);

  /// No description provided for @chatbotAgoHour.
  ///
  /// In en, this message translates to:
  /// **'{count} hour ago'**
  String chatbotAgoHour(Object count);

  /// No description provided for @chatbotAgoHours.
  ///
  /// In en, this message translates to:
  /// **'{count} hours ago'**
  String chatbotAgoHours(Object count);

  /// No description provided for @chatbotAgoJustNow.
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get chatbotAgoJustNow;

  /// No description provided for @chatbotLogErrorsFound.
  ///
  /// In en, this message translates to:
  /// **'Found {count} error line(s) in the log.\n'**
  String chatbotLogErrorsFound(Object count);

  /// No description provided for @chatbotLogErrorLine.
  ///
  /// In en, this message translates to:
  /// **'  Line {line}: {text}'**
  String chatbotLogErrorLine(Object line, Object text);

  /// No description provided for @chatbotLogMoreErrors.
  ///
  /// In en, this message translates to:
  /// **'\n...and {count} more. Open the Log Viewer (Chipper) for the full list.'**
  String chatbotLogMoreErrors(Object count);

  /// No description provided for @chatbotLogModsFound.
  ///
  /// In en, this message translates to:
  /// **'{count} mod(s) found in the log:'**
  String chatbotLogModsFound(Object count);

  /// No description provided for @chatbotLogModsApproximate.
  ///
  /// In en, this message translates to:
  /// **' (approximate — parsed from CSV loading lines)'**
  String get chatbotLogModsApproximate;

  /// No description provided for @chatbotModlistReviewHeader.
  ///
  /// In en, this message translates to:
  /// **'Modlist Review ({count} mods enabled)\n\n'**
  String chatbotModlistReviewHeader(Object count);

  /// No description provided for @chatbotAndNMoreOpinions.
  ///
  /// In en, this message translates to:
  /// **'...and {count} more mods I have opinions about'**
  String chatbotAndNMoreOpinions(Object count);

  /// No description provided for @chatbotUnknownModLine.
  ///
  /// In en, this message translates to:
  /// **'{name} — never heard of it. You\'re on your own.'**
  String chatbotUnknownModLine(Object name);

  /// No description provided for @chatbotPlusUnrecognized.
  ///
  /// In en, this message translates to:
  /// **'...plus {count} mods I don\'t recognize.'**
  String chatbotPlusUnrecognized(Object count);

  /// No description provided for @chatbotComboGraphicsLib.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib and {count} faction mods?'**
  String chatbotComboGraphicsLib(Object count);

  /// No description provided for @chatbotComboNexFactions.
  ///
  /// In en, this message translates to:
  /// **'Nex + {count} factions. Hope you brought a book for those load times.'**
  String chatbotComboNexFactions(Object count);

  /// No description provided for @chatbotComboNexerelinExpected.
  ///
  /// In en, this message translates to:
  /// **'You know, most people would be using Nexerelin with that many factions.'**
  String get chatbotComboNexerelinExpected;

  /// No description provided for @chatbotComboNoNex.
  ///
  /// In en, this message translates to:
  /// **'No Nex?'**
  String get chatbotComboNoNex;

  /// No description provided for @chatbotComboConsoleNex.
  ///
  /// In en, this message translates to:
  /// **'Console Commands + Nexerelin. \"Totally legit conquest playthrough.\"'**
  String get chatbotComboConsoleNex;

  /// No description provided for @chatbotComboLibraryOnly.
  ///
  /// In en, this message translates to:
  /// **'Nice library collection. Where are the actual mods?'**
  String get chatbotComboLibraryOnly;

  /// No description provided for @chatbotVerdict10.
  ///
  /// In en, this message translates to:
  /// **'You\'re not really playing Starsector at this point.'**
  String get chatbotVerdict10;

  /// No description provided for @chatbotVerdict9.
  ///
  /// In en, this message translates to:
  /// **'Genuinely solid modlist. You know what you\'re doing.'**
  String get chatbotVerdict9;

  /// No description provided for @chatbotVerdict8.
  ///
  /// In en, this message translates to:
  /// **'Good taste. Your PC might not agree but I do.'**
  String get chatbotVerdict8;

  /// No description provided for @chatbotVerdict7.
  ///
  /// In en, this message translates to:
  /// **'Pretty solid. A few questionable choices but overall not bad.'**
  String get chatbotVerdict7;

  /// No description provided for @chatbotVerdict6.
  ///
  /// In en, this message translates to:
  /// **'Decent. Could be better, could be way worse.'**
  String get chatbotVerdict6;

  /// No description provided for @chatbotVerdict5.
  ///
  /// In en, this message translates to:
  /// **'Mid. Like, aggressively average. Add some faction mods or something.'**
  String get chatbotVerdict5;

  /// No description provided for @chatbotVerdict4.
  ///
  /// In en, this message translates to:
  /// **'This modlist needs work. I\'ve seen better from first-time modders.'**
  String get chatbotVerdict4;

  /// No description provided for @chatbotVerdict3.
  ///
  /// In en, this message translates to:
  /// **'Are you even trying? This is barely modded.'**
  String get chatbotVerdict3;

  /// No description provided for @chatbotVerdict2.
  ///
  /// In en, this message translates to:
  /// **'This is sad. Install Nexerelin at minimum.'**
  String get chatbotVerdict2;

  /// No description provided for @chatbotVerdict1.
  ///
  /// In en, this message translates to:
  /// **'One mod? Really? That\'s not a modlist, that\'s a suggestion.'**
  String get chatbotVerdict1;

  /// No description provided for @chatbotVerdictLine.
  ///
  /// In en, this message translates to:
  /// **'  Verdict: {score}/10 — {verdict}'**
  String chatbotVerdictLine(Object score, Object verdict);

  /// No description provided for @chatbotOpinionLazyLib.
  ///
  /// In en, this message translates to:
  /// **'LazyLib — you literally can\'t run anything without this. Welcome to modding.'**
  String get chatbotOpinionLazyLib;

  /// No description provided for @chatbotOpinionMagicLib.
  ///
  /// In en, this message translates to:
  /// **'MagicLib — the other tax you pay to mod this game.'**
  String get chatbotOpinionMagicLib;

  /// No description provided for @chatbotOpinionGraphicsLib.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib — hope you like your GPU running at surface-of-the-sun temps.'**
  String get chatbotOpinionGraphicsLib;

  /// No description provided for @chatbotOpinionLunaLib.
  ///
  /// In en, this message translates to:
  /// **'LunaLib — another library. At this point your mod folder is 50% libraries.'**
  String get chatbotOpinionLunaLib;

  /// No description provided for @chatbotOpinionNexerelin.
  ///
  /// In en, this message translates to:
  /// **'Nexerelin — oh you wanted a 4X grand strategy game? Say goodbye to your free time.'**
  String get chatbotOpinionNexerelin;

  /// No description provided for @chatbotOpinionIndEvo.
  ///
  /// In en, this message translates to:
  /// **'Industrial Evolution — for when vanilla colonies aren\'t enough of a spreadsheet simulator.'**
  String get chatbotOpinionIndEvo;

  /// No description provided for @chatbotOpinionStarshipLegends.
  ///
  /// In en, this message translates to:
  /// **'Starship Legends — your ships have feelings now. Great, more emotional baggage.'**
  String get chatbotOpinionStarshipLegends;

  /// No description provided for @chatbotOpinionSecondInCommand.
  ///
  /// In en, this message translates to:
  /// **'Second-in-Command — finally, someone else to blame when things go wrong.'**
  String get chatbotOpinionSecondInCommand;

  /// No description provided for @chatbotOpinionOfficerExtension.
  ///
  /// In en, this message translates to:
  /// **'Officer Extension — because the vanilla officer cap was clearly a personal insult.'**
  String get chatbotOpinionOfficerExtension;

  /// No description provided for @chatbotOpinionKnightsOfLudd.
  ///
  /// In en, this message translates to:
  /// **'Knights of Ludd — the Luddic Path got a glow-up and honestly they didn\'t deserve it.'**
  String get chatbotOpinionKnightsOfLudd;

  /// No description provided for @chatbotOpinionRealisticCombat.
  ///
  /// In en, this message translates to:
  /// **'Realistic Combat — for people who thought Starsector was too forgiving.'**
  String get chatbotOpinionRealisticCombat;

  /// No description provided for @chatbotOpinionRaot.
  ///
  /// In en, this message translates to:
  /// **'Random Assortment of Things — the mod equivalent of a mystery box. Somehow it works.'**
  String get chatbotOpinionRaot;

  /// No description provided for @chatbotOpinionDiableAvionics.
  ///
  /// In en, this message translates to:
  /// **'Diable Avionics — anime mechs in space. We all know why you installed this.'**
  String get chatbotOpinionDiableAvionics;

  /// No description provided for @chatbotOpinionBlackrock.
  ///
  /// In en, this message translates to:
  /// **'Blackrock Drive Yards — the faction for people who think the Hegemony isn\'t oppressive enough.'**
  String get chatbotOpinionBlackrock;

  /// No description provided for @chatbotOpinionScy.
  ///
  /// In en, this message translates to:
  /// **'Scy Nation — gotta go fast. Until you get caught and die instantly.'**
  String get chatbotOpinionScy;

  /// No description provided for @chatbotOpinionShadowyards.
  ///
  /// In en, this message translates to:
  /// **'Shadowyards — stealth faction for people who think cloaking is a personality trait.'**
  String get chatbotOpinionShadowyards;

  /// No description provided for @chatbotOpinionTahlan.
  ///
  /// In en, this message translates to:
  /// **'Tahlan Shipworks — Great Houses aesthetic goes hard ngl.'**
  String get chatbotOpinionTahlan;

  /// No description provided for @chatbotOpinionArkgneisis.
  ///
  /// In en, this message translates to:
  /// **'Legacy of Arkgneisis — flying garbage cans held together with spite and duct tape.'**
  String get chatbotOpinionArkgneisis;

  /// No description provided for @chatbotOpinionOra.
  ///
  /// In en, this message translates to:
  /// **'Outer Rim Alliance — broadsides only. For people who think flanking is for cowards.'**
  String get chatbotOpinionOra;

  /// No description provided for @chatbotOpinionAlRuk.
  ///
  /// In en, this message translates to:
  /// **'Al-Ruk Ascendancy — what if we made a faction and just cranked everything to 11?'**
  String get chatbotOpinionAlRuk;

  /// No description provided for @chatbotOpinionMayorate.
  ///
  /// In en, this message translates to:
  /// **'Mayorate — corporate dystopia faction. So just regular Starsector but more honest about it.'**
  String get chatbotOpinionMayorate;

  /// No description provided for @chatbotOpinionKadur.
  ///
  /// In en, this message translates to:
  /// **'Kadur Remnant — space vikings. That\'s it. That\'s the pitch. And it works.'**
  String get chatbotOpinionKadur;

  /// No description provided for @chatbotOpinionDassaultMikoyan.
  ///
  /// In en, this message translates to:
  /// **'Dassault-Mikoyan — fighter spam: the faction. Your framerate weeps.'**
  String get chatbotOpinionDassaultMikoyan;

  /// No description provided for @chatbotOpinionPersean.
  ///
  /// In en, this message translates to:
  /// **'Persean Chronicles — someone actually wrote lore for this game. Like, a lot of it.'**
  String get chatbotOpinionPersean;

  /// No description provided for @chatbotOpinionVayra.
  ///
  /// In en, this message translates to:
  /// **'Vayra\'s Sector — more factions, more bounties, more everything. Quantity is a quality of its own.'**
  String get chatbotOpinionVayra;

  /// No description provided for @chatbotOpinionTorchships.
  ///
  /// In en, this message translates to:
  /// **'Torchships — hard sci-fi in my Starsector? It\'s more likely than you think.'**
  String get chatbotOpinionTorchships;

  /// No description provided for @chatbotOpinionRoider.
  ///
  /// In en, this message translates to:
  /// **'Roider Union — space rednecks with welding torches. Surprisingly endearing.'**
  String get chatbotOpinionRoider;

  /// No description provided for @chatbotOpinionApexDesign.
  ///
  /// In en, this message translates to:
  /// **'Apex Design Collective — these ships look like someone\'s thesis project and I mean that as a compliment.'**
  String get chatbotOpinionApexDesign;

  /// No description provided for @chatbotOpinionEis.
  ///
  /// In en, this message translates to:
  /// **'Enigma Industries — another faction mod. Sure. Why not. Throw it on the pile.'**
  String get chatbotOpinionEis;

  /// No description provided for @chatbotOpinionSwp.
  ///
  /// In en, this message translates to:
  /// **'Ship/Weapon Pack — basically vanilla+ but actually good.'**
  String get chatbotOpinionSwp;

  /// No description provided for @chatbotOpinionDmods.
  ///
  /// In en, this message translates to:
  /// **'Missing Ships — filling gaps you didn\'t know existed. Solid pick.'**
  String get chatbotOpinionDmods;

  /// No description provided for @chatbotOpinionArsenalExpansion.
  ///
  /// In en, this message translates to:
  /// **'Arsenal Expansion — more guns, more ships, can\'t go wrong. Or can you.'**
  String get chatbotOpinionArsenalExpansion;

  /// No description provided for @chatbotOpinionArmaa.
  ///
  /// In en, this message translates to:
  /// **'Arma Armatura — giant robots in Starsector. The Gundam fans found us.'**
  String get chatbotOpinionArmaa;

  /// No description provided for @chatbotOpinionUnknownSkies.
  ///
  /// In en, this message translates to:
  /// **'Unknown Skies — 30 new planets to colonize. As if you needed more territory to mismanage.'**
  String get chatbotOpinionUnknownSkies;

  /// No description provided for @chatbotOpinionMorePortraits.
  ///
  /// In en, this message translates to:
  /// **'More Character Portraits — because staring at the same 20 faces gets old fast.'**
  String get chatbotOpinionMorePortraits;

  /// No description provided for @chatbotOpinionConsoleCommands.
  ///
  /// In en, this message translates to:
  /// **'Console Commands — \"I\'m just using it for testing\" sure buddy.'**
  String get chatbotOpinionConsoleCommands;

  /// No description provided for @chatbotOpinionAutosave.
  ///
  /// In en, this message translates to:
  /// **'Autosave — the fact this isn\'t in vanilla is a war crime.'**
  String get chatbotOpinionAutosave;

  /// No description provided for @chatbotOpinionCommonRadar.
  ///
  /// In en, this message translates to:
  /// **'Common Radar — how did you play without this?'**
  String get chatbotOpinionCommonRadar;

  /// No description provided for @chatbotOpinionVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'Version Checker — responsible modding. Boring but necessary.'**
  String get chatbotOpinionVersionChecker;

  /// No description provided for @chatbotOpinionMoreShipNames.
  ///
  /// In en, this message translates to:
  /// **'More Ship Names — 7500 new names and somehow still no HMS Boaty McBoatface.'**
  String get chatbotOpinionMoreShipNames;

  /// No description provided for @chatbotOpinionSpeedUp.
  ///
  /// In en, this message translates to:
  /// **'SpeedUp — because vanilla game speed is for people with infinite patience.'**
  String get chatbotOpinionSpeedUp;

  /// No description provided for @chatbotOpinionTransponderOff.
  ///
  /// In en, this message translates to:
  /// **'Transponder Off — running dark without consequences. Living the pirate dream.'**
  String get chatbotOpinionTransponderOff;

  /// No description provided for @chatbotOpinionDetailedCombatResults.
  ///
  /// In en, this message translates to:
  /// **'Detailed Combat Results — for when you need to know exactly which frigate let you down.'**
  String get chatbotOpinionDetailedCombatResults;

  /// No description provided for @chatbotOpinionLeadingPip.
  ///
  /// In en, this message translates to:
  /// **'Leading Pip — aim assist for people who can\'t lead shots. No shame. Ok maybe a little.'**
  String get chatbotOpinionLeadingPip;

  /// No description provided for @chatbotOpinionWarDashboard.
  ///
  /// In en, this message translates to:
  /// **'War Dashboard — spreadsheet simulator for your war simulator. We\'ve gone full circle.'**
  String get chatbotOpinionWarDashboard;

  /// No description provided for @chatbotOpinionStarWars.
  ///
  /// In en, this message translates to:
  /// **'Star Wars mod — because no space game is safe from Star Wars.'**
  String get chatbotOpinionStarWars;

  /// No description provided for @chatbotOpinionVramVore.
  ///
  /// In en, this message translates to:
  /// **'VRAM Vore — it\'s literally named VRAM Vore. You know what you signed up for.'**
  String get chatbotOpinionVramVore;

  /// No description provided for @catalogSortName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get catalogSortName;

  /// No description provided for @catalogSortNewest.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get catalogSortNewest;

  /// No description provided for @catalogSortGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game Version'**
  String get catalogSortGameVersion;

  /// No description provided for @catalogSortPopular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get catalogSortPopular;

  /// No description provided for @catalogSortMostDiscussed.
  ///
  /// In en, this message translates to:
  /// **'Most Discussed'**
  String get catalogSortMostDiscussed;

  /// No description provided for @catalogSortRecentlyActive.
  ///
  /// In en, this message translates to:
  /// **'Recently Active'**
  String get catalogSortRecentlyActive;

  /// No description provided for @userThemeFileUnreadable.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t read {fileName}. It isn\'t valid JSON.'**
  String userThemeFileUnreadable(Object fileName);

  /// No description provided for @userThemeNoThemesSection.
  ///
  /// In en, this message translates to:
  /// **'{fileName} has no \"themes\" section.'**
  String userThemeNoThemesSection(Object fileName);

  /// No description provided for @userThemeMissingField.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load \"{key}\": {fields} is missing.'**
  String userThemeMissingField(Object fields, Object key);

  /// No description provided for @userThemeMissingFields.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load \"{key}\": {fields} are missing.'**
  String userThemeMissingFields(Object fields, Object key);

  /// No description provided for @userThemeLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load \"{key}\": {error}'**
  String userThemeLoadError(Object error, Object key);

  /// No description provided for @themeFontSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeFontSystem;

  /// No description provided for @themeGlitterSidebar.
  ///
  /// In en, this message translates to:
  /// **'Sidebar'**
  String get themeGlitterSidebar;

  /// No description provided for @themeGlitterToolbar.
  ///
  /// In en, this message translates to:
  /// **'Toolbar'**
  String get themeGlitterToolbar;

  /// No description provided for @themeGlitterTooltips.
  ///
  /// In en, this message translates to:
  /// **'Tooltips'**
  String get themeGlitterTooltips;

  /// No description provided for @themeBackgroundMotes.
  ///
  /// In en, this message translates to:
  /// **'Motes'**
  String get themeBackgroundMotes;

  /// No description provided for @themeBackgroundStarfield.
  ///
  /// In en, this message translates to:
  /// **'Starfield'**
  String get themeBackgroundStarfield;

  /// No description provided for @themeBackgroundNebula.
  ///
  /// In en, this message translates to:
  /// **'Nebula'**
  String get themeBackgroundNebula;

  /// No description provided for @themeBackgroundConstellation.
  ///
  /// In en, this message translates to:
  /// **'Constellation'**
  String get themeBackgroundConstellation;

  /// No description provided for @themeBackgroundEmbers.
  ///
  /// In en, this message translates to:
  /// **'Embers'**
  String get themeBackgroundEmbers;

  /// No description provided for @themeBackgroundAurora.
  ///
  /// In en, this message translates to:
  /// **'Aurora'**
  String get themeBackgroundAurora;

  /// No description provided for @themeBackgroundRain.
  ///
  /// In en, this message translates to:
  /// **'Rain'**
  String get themeBackgroundRain;

  /// No description provided for @themeBackgroundRadar.
  ///
  /// In en, this message translates to:
  /// **'Radar'**
  String get themeBackgroundRadar;

  /// No description provided for @themeBackgroundCircuitry.
  ///
  /// In en, this message translates to:
  /// **'Circuitry'**
  String get themeBackgroundCircuitry;

  /// No description provided for @themePalette.
  ///
  /// In en, this message translates to:
  /// **'Palette'**
  String get themePalette;

  /// No description provided for @sentryFeedbackNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Username (not required)'**
  String get sentryFeedbackNameLabel;

  /// No description provided for @sentryFeedbackEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email (definitely not required!)'**
  String get sentryFeedbackEmailLabel;

  /// No description provided for @sentryFeedbackMessageLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get sentryFeedbackMessageLabel;

  /// No description provided for @sentryFeedbackRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'(required)'**
  String get sentryFeedbackRequiredLabel;

  /// No description provided for @sentryFeedbackMessagePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Please describe the issue you are experiencing with {appName}.\n\n{appName} is not affiliated with Fractal Softworks and cannot help with issues with the game, payments, license keys, or mods.'**
  String sentryFeedbackMessagePlaceholder(Object appName);

  /// No description provided for @onboardingSetup.
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get onboardingSetup;

  /// No description provided for @onboardingWhereIsStarsectorLocated.
  ///
  /// In en, this message translates to:
  /// **'1. Where is Starsector located?'**
  String get onboardingWhereIsStarsectorLocated;

  /// No description provided for @onboardingGameLocation.
  ///
  /// In en, this message translates to:
  /// **'Game Location'**
  String get onboardingGameLocation;

  /// No description provided for @onboardingSelectYourGameDirectory.
  ///
  /// In en, this message translates to:
  /// **'Select your game directory'**
  String get onboardingSelectYourGameDirectory;

  /// No description provided for @onboardingGameNotFound.
  ///
  /// In en, this message translates to:
  /// **'Game not found'**
  String get onboardingGameNotFound;

  /// No description provided for @onboardingHowDoYouWant.
  ///
  /// In en, this message translates to:
  /// **'2. How do you want to handle mod updates?'**
  String get onboardingHowDoYouWant;

  /// No description provided for @onboardingThisWillOnlyAffect.
  ///
  /// In en, this message translates to:
  /// **'This will only affect your mods when you update them.'**
  String get onboardingThisWillOnlyAffect;

  /// No description provided for @onboardingNoModsWillBe.
  ///
  /// In en, this message translates to:
  /// **'No mods will be affected immediately.'**
  String get onboardingNoModsWillBe;

  /// No description provided for @onboardingReplacePreviousVersion.
  ///
  /// In en, this message translates to:
  /// **'Installing or updating a mod will replace the previous version of it.'**
  String get onboardingReplacePreviousVersion;

  /// No description provided for @onboardingTriosWillNeverAutomatically.
  ///
  /// In en, this message translates to:
  /// **'TriOS will never automatically remove mod versions.'**
  String get onboardingTriosWillNeverAutomatically;

  /// No description provided for @onboardingRemoveAllButLastN.
  ///
  /// In en, this message translates to:
  /// **'Installing or updating a mod will remove all but the last {count} highest versions.'**
  String onboardingRemoveAllButLastN(Object count);

  /// No description provided for @onboardingBugReporting.
  ///
  /// In en, this message translates to:
  /// **'3: Bug Reporting'**
  String get onboardingBugReporting;

  /// No description provided for @onboardingBugReportingBody.
  ///
  /// In en, this message translates to:
  /// **'{appName} can send crash/error reports to help me find and fix issues (it does actually help!).\nExample of a report: https://i.imgur.com/k9E6zxO.png.\n\nNothing identifiable or personal is ever sent.\n\nSent: app version, mod list, basic PC info (screen resolution, OS, RAM...), randomly generated user ID, and crash details.\nNot sent: IP address, language, region, zip code, PC name, PC username, anything about other apps, etc.'**
  String onboardingBugReportingBody(Object appName);

  /// No description provided for @onboardingOneClickModInstall.
  ///
  /// In en, this message translates to:
  /// **'4: One-Click Mod Install'**
  String get onboardingOneClickModInstall;

  /// No description provided for @onboardingOneClickBody.
  ///
  /// In en, this message translates to:
  /// **'{appName} can handle \'Install with TriOS\' links, allowing you to install mods with a single click from websites.'**
  String onboardingOneClickBody(Object appName);

  /// No description provided for @onboardingYouWillBeAsked.
  ///
  /// In en, this message translates to:
  /// **'You will be asked to confirm before any mod is downloaded.'**
  String get onboardingYouWillBeAsked;

  /// No description provided for @onboardingYouCanAlwaysChange.
  ///
  /// In en, this message translates to:
  /// **'You can always change these on the Settings page later'**
  String get onboardingYouCanAlwaysChange;

  /// No description provided for @onboardingFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get onboardingFinish;

  /// No description provided for @onboardingNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// No description provided for @launch_with_settingsSkipLauncher.
  ///
  /// In en, this message translates to:
  /// **'Skip Launcher'**
  String get launch_with_settingsSkipLauncher;

  /// No description provided for @launch_with_settingsExperimentalTooltip.
  ///
  /// In en, this message translates to:
  /// **'EXPERIMENTAL\nIf you encounter strange issues in-game, disable this.\nPossible issues include: invisible ships, zoomed-in combat, no Windows title bar, probably more.'**
  String get launch_with_settingsExperimentalTooltip;

  /// No description provided for @launch_with_settingsNoGameExe.
  ///
  /// In en, this message translates to:
  /// **'No game exe'**
  String get launch_with_settingsNoGameExe;

  /// No description provided for @launch_with_settingsStarsectorVersionUnknown.
  ///
  /// In en, this message translates to:
  /// **'Starsector version unknown'**
  String get launch_with_settingsStarsectorVersionUnknown;

  /// No description provided for @launch_with_settingsNoModsFolder.
  ///
  /// In en, this message translates to:
  /// **'No mods folder!'**
  String get launch_with_settingsNoModsFolder;

  /// No description provided for @launch_with_settingsWidth.
  ///
  /// In en, this message translates to:
  /// **'Width'**
  String get launch_with_settingsWidth;

  /// No description provided for @launch_with_settingsHeight.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get launch_with_settingsHeight;

  /// No description provided for @launch_with_settingsUseVanillaLauncherSettings.
  ///
  /// In en, this message translates to:
  /// **'Use your non-TriOS launcher settings instead'**
  String get launch_with_settingsUseVanillaLauncherSettings;

  /// No description provided for @launch_with_settingsNote.
  ///
  /// In en, this message translates to:
  /// **'Note: These settings are separate from the normal launcher\'s settings.'**
  String get launch_with_settingsNote;

  /// No description provided for @launch_with_settingsDisableSkipLauncherWarning.
  ///
  /// In en, this message translates to:
  /// **'If you encounter strange issues in-game, disable Skip Launcher.'**
  String get launch_with_settingsDisableSkipLauncherWarning;

  /// No description provided for @launch_with_settingsPossibleIssues.
  ///
  /// In en, this message translates to:
  /// **'Possible issues include: invisible ships, zoomed-in combat, no Windows title bar, probably more.'**
  String get launch_with_settingsPossibleIssues;

  /// No description provided for @game_performanceRam.
  ///
  /// In en, this message translates to:
  /// **'RAM'**
  String get game_performanceRam;

  /// No description provided for @game_performanceVmparamsFilesTooltip.
  ///
  /// In en, this message translates to:
  /// **'vmparams files:\n{files}'**
  String game_performanceVmparamsFilesTooltip(Object files);

  /// No description provided for @game_performanceNoVmparamsFileFound.
  ///
  /// In en, this message translates to:
  /// **'No vmparams file found.'**
  String get game_performanceNoVmparamsFileFound;

  /// No description provided for @game_performanceNotAllSameRamWarning.
  ///
  /// In en, this message translates to:
  /// **'<b>Warning</b>: Not all vmparams files\nare set to use the same amount of RAM.\nPick one RAM option below to set all\nto the same value.'**
  String get game_performanceNotAllSameRamWarning;

  /// No description provided for @game_performanceAssignedRam.
  ///
  /// In en, this message translates to:
  /// **'Assigned: <b>{ramAmount} MB</b> in <b>{fileCount}</b> files'**
  String game_performanceAssignedRam(Object fileCount, Object ramAmount);

  /// No description provided for @game_performanceMoreRamNote.
  ///
  /// In en, this message translates to:
  /// **'More RAM is not always better.\n6 or 8 GB is enough for almost any game.\n\nUse the Console Commands mod to view RAM use in the top-left of the console.'**
  String get game_performanceMoreRamNote;

  /// No description provided for @game_performanceGameSettings.
  ///
  /// In en, this message translates to:
  /// **'Game Settings'**
  String get game_performanceGameSettings;

  /// No description provided for @game_performanceOpenConfigJsonTooltip.
  ///
  /// In en, this message translates to:
  /// **'Open config.json in your default text editor'**
  String get game_performanceOpenConfigJsonTooltip;

  /// No description provided for @game_performanceFpsLimit.
  ///
  /// In en, this message translates to:
  /// **'FPS Limit'**
  String get game_performanceFpsLimit;

  /// No description provided for @game_performanceRecommendedMaxFps.
  ///
  /// In en, this message translates to:
  /// **'Recommended: Set your max FPS to your monitor\'s refresh rate or lower.'**
  String get game_performanceRecommendedMaxFps;

  /// No description provided for @game_performanceUnableToReadFps.
  ///
  /// In en, this message translates to:
  /// **'Unable to read FPS Limit from settings.json'**
  String get game_performanceUnableToReadFps;

  /// No description provided for @game_performanceUnableToReadVsync.
  ///
  /// In en, this message translates to:
  /// **'Unable to read Vsync from settings.json'**
  String get game_performanceUnableToReadVsync;

  /// No description provided for @game_performanceVsyncTooltip.
  ///
  /// In en, this message translates to:
  /// **'Vsync reduces screen tearing but introduces a tiny input delay.'**
  String get game_performanceVsyncTooltip;

  /// No description provided for @dashboardRamSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{ram} MB'**
  String dashboardRamSubtitle(Object ram);

  /// No description provided for @dashboardUnknownRam.
  ///
  /// In en, this message translates to:
  /// **'(unknown RAM)'**
  String get dashboardUnknownRam;

  /// No description provided for @dashboardErrorsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Errors are normal. You can ignore them unless Starsector is misbehaving.\n\nIf there is a crash, look at the bottom of the log for a bunch of lines starting with \'at\'. Hopefully, one of them will mention the problematic mod\'s id, name, or prefix.\nFor example, \'at data.scripts.campaign.II_IGFleetInflater.inflate(II_IGFleetInflater.java:59)\' shows \'II_\', which is Interstellar Imperium.\n\nMake sure your mods are up to date and report bugs to the mod makers!'**
  String get dashboardErrorsTooltip;

  /// No description provided for @dashboardStarsectorLog.
  ///
  /// In en, this message translates to:
  /// **'Starsector Log'**
  String get dashboardStarsectorLog;

  /// No description provided for @dashboardLogLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'{logName} •   last updated {time}'**
  String dashboardLogLastUpdated(Object logName, Object time);

  /// No description provided for @dashboardLastUpdatedUnknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get dashboardLastUpdatedUnknown;

  /// No description provided for @dashboardErrorsAreNormalCrash.
  ///
  /// In en, this message translates to:
  /// **'Errors are normal. If the game crashes, check here for fatal errors.'**
  String get dashboardErrorsAreNormalCrash;

  /// No description provided for @mod_list_basicMods.
  ///
  /// In en, this message translates to:
  /// **'Mods'**
  String get mod_list_basicMods;

  /// No description provided for @mod_list_basicEnabledCount.
  ///
  /// In en, this message translates to:
  /// **'{enabled} of {total} enabled'**
  String mod_list_basicEnabledCount(Object enabled, Object total);

  /// No description provided for @mod_list_basicCopyModListTooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy mod list to clipboard\n\nRight-click to include disabled mods'**
  String get mod_list_basicCopyModListTooltip;

  /// No description provided for @mod_list_basicShowingEnabledModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Showing enabled mods only'**
  String get mod_list_basicShowingEnabledModsOnly;

  /// No description provided for @mod_list_basicShowingDisabledModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Showing disabled mods only'**
  String get mod_list_basicShowingDisabledModsOnly;

  /// No description provided for @mod_list_basicShowingAllMods.
  ///
  /// In en, this message translates to:
  /// **'Showing all mods'**
  String get mod_list_basicShowingAllMods;

  /// No description provided for @mod_list_basicEnabledOnly.
  ///
  /// In en, this message translates to:
  /// **'Enabled Only'**
  String get mod_list_basicEnabledOnly;

  /// No description provided for @mod_list_basicDisabledOnly.
  ///
  /// In en, this message translates to:
  /// **'Disabled Only'**
  String get mod_list_basicDisabledOnly;

  /// No description provided for @mod_list_basicShowAll.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get mod_list_basicShowAll;

  /// No description provided for @mod_list_basicSortByLabel.
  ///
  /// In en, this message translates to:
  /// **'Sort by {label}'**
  String mod_list_basicSortByLabel(Object label);

  /// No description provided for @mod_list_basicSortLoadOrder.
  ///
  /// In en, this message translates to:
  /// **'Load Order'**
  String get mod_list_basicSortLoadOrder;

  /// No description provided for @mod_list_basicSortName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get mod_list_basicSortName;

  /// No description provided for @mod_list_basicSortAuthor.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get mod_list_basicSortAuthor;

  /// No description provided for @mod_list_basicSortVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get mod_list_basicSortVersion;

  /// No description provided for @mod_list_basicSortVram.
  ///
  /// In en, this message translates to:
  /// **'VRAM Impact'**
  String get mod_list_basicSortVram;

  /// No description provided for @mod_list_basicSortGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game Version'**
  String get mod_list_basicSortGameVersion;

  /// No description provided for @mod_list_basicSortEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get mod_list_basicSortEnabled;

  /// No description provided for @mod_list_basicDownloadUpdateTooltip.
  ///
  /// In en, this message translates to:
  /// **'Download {count} update'**
  String mod_list_basicDownloadUpdateTooltip(Object count);

  /// No description provided for @mod_list_basicDownloadAllUpdatesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Download all {count} updates'**
  String mod_list_basicDownloadAllUpdatesTooltip(Object count);

  /// No description provided for @mod_list_basicUpdateAll.
  ///
  /// In en, this message translates to:
  /// **'Update All'**
  String get mod_list_basicUpdateAll;

  /// No description provided for @mod_list_basicAllMods.
  ///
  /// In en, this message translates to:
  /// **'ALL MODS'**
  String get mod_list_basicAllMods;

  /// No description provided for @mod_list_basicFilterHint.
  ///
  /// In en, this message translates to:
  /// **'Filter...'**
  String get mod_list_basicFilterHint;

  /// No description provided for @mod_list_basicShowingAllUpdates.
  ///
  /// In en, this message translates to:
  /// **'Showing all updates'**
  String get mod_list_basicShowingAllUpdates;

  /// No description provided for @mod_list_basicShowingUnmutedUpdates.
  ///
  /// In en, this message translates to:
  /// **'Showing unmuted updates'**
  String get mod_list_basicShowingUnmutedUpdates;

  /// No description provided for @mod_list_basicUpdatesHidden.
  ///
  /// In en, this message translates to:
  /// **'Updates hidden'**
  String get mod_list_basicUpdatesHidden;

  /// No description provided for @mod_list_basicAllUpdates.
  ///
  /// In en, this message translates to:
  /// **'ALL UPDATES ({count})'**
  String mod_list_basicAllUpdates(Object count);

  /// No description provided for @mod_list_basicUpdatesHeader.
  ///
  /// In en, this message translates to:
  /// **'UPDATES ({count}'**
  String mod_list_basicUpdatesHeader(Object count);

  /// No description provided for @mod_list_basicPlusMuted.
  ///
  /// In en, this message translates to:
  /// **' + {count} '**
  String mod_list_basicPlusMuted(Object count);

  /// No description provided for @mod_list_basicHiddenUpdates.
  ///
  /// In en, this message translates to:
  /// **'{count} hidden updates'**
  String mod_list_basicHiddenUpdates(Object count);

  /// No description provided for @mod_list_basicPlusMutedParens.
  ///
  /// In en, this message translates to:
  /// **' (+ {count} '**
  String mod_list_basicPlusMutedParens(Object count);

  /// No description provided for @mod_list_basicDownloadUpdatesForMods.
  ///
  /// In en, this message translates to:
  /// **'Download updates for {count} mods?'**
  String mod_list_basicDownloadUpdatesForMods(Object count);

  /// No description provided for @mod_list_basicSwapOnUpdateTooltip.
  ///
  /// In en, this message translates to:
  /// **'When checked, updating an enabled mod switches to the new version.'**
  String get mod_list_basicSwapOnUpdateTooltip;

  /// No description provided for @mod_list_basicColorModListRowsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Color mod list rows using each mod\'s icon palette.'**
  String get mod_list_basicColorModListRowsTooltip;

  /// No description provided for @modListLoadOrderExplanation.
  ///
  /// In en, this message translates to:
  /// **'Starsector loads mods in order by their name.\nIt sorts with whitespace at the top, then uppercase, then lowercase (\'  x\', \'Z\', \'a\'),\nas opposed to a more intuitive sort (\'a\', \'  x\', \'Z\').\n\nMods loaded last will (usually) override values from mods loaded earlier.'**
  String get modListLoadOrderExplanation;

  /// No description provided for @mod_list_basic_entryRightClickForMore.
  ///
  /// In en, this message translates to:
  /// **'Right-click for more.'**
  String get mod_list_basic_entryRightClickForMore;

  /// No description provided for @mod_list_basic_entryMissingDependencies.
  ///
  /// In en, this message translates to:
  /// **'\'{modName}\' is missing \'{dependencies}\'.'**
  String mod_list_basic_entryMissingDependencies(
    Object dependencies,
    Object modName,
  );

  /// No description provided for @versionCheckDownloadInstallUpdate.
  ///
  /// In en, this message translates to:
  /// **'Download & Install Update'**
  String get versionCheckDownloadInstallUpdate;

  /// No description provided for @versionCheckClickToOpenDownloadPage.
  ///
  /// In en, this message translates to:
  /// **'Click to Open Download Page'**
  String get versionCheckClickToOpenDownloadPage;

  /// No description provided for @versionCheckRequiresManualDownload.
  ///
  /// In en, this message translates to:
  /// **'This mod requires a manual download.'**
  String get versionCheckRequiresManualDownload;

  /// No description provided for @versionCheckRequiresManualDownloadClick.
  ///
  /// In en, this message translates to:
  /// **'This mod requires a manual download.\nClick to open the download page.'**
  String get versionCheckRequiresManualDownloadClick;

  /// No description provided for @versionCheckSource.
  ///
  /// In en, this message translates to:
  /// **'Source: {url}'**
  String versionCheckSource(Object url);

  /// No description provided for @versionCheckRightClickToExpand.
  ///
  /// In en, this message translates to:
  /// **'Right-click to expand this tooltip.'**
  String get versionCheckRightClickToExpand;

  /// No description provided for @versionCheckInfoFromAuthor.
  ///
  /// In en, this message translates to:
  /// **'Update information is provided by the mod author, not {appName}.'**
  String versionCheckInfoFromAuthor(Object appName);

  /// No description provided for @versionCheckUpToDate.
  ///
  /// In en, this message translates to:
  /// **'You are up to date.'**
  String get versionCheckUpToDate;

  /// No description provided for @versionCheckCurrentVersion.
  ///
  /// In en, this message translates to:
  /// **'Current version: {version}'**
  String versionCheckCurrentVersion(Object version);

  /// No description provided for @versionCheckRemoteVersion.
  ///
  /// In en, this message translates to:
  /// **'Remote version: {version}'**
  String versionCheckRemoteVersion(Object version);

  /// No description provided for @versionCheckerUrl.
  ///
  /// In en, this message translates to:
  /// **'Version Checker url:\n{url}'**
  String versionCheckerUrl(Object url);

  /// No description provided for @versionCheckErrorCheckingForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Error checking for updates.'**
  String get versionCheckErrorCheckingForUpdates;

  /// No description provided for @versionCheckErrorUsuallyCaused.
  ///
  /// In en, this message translates to:
  /// **'This is usually caused by the mod author or a network error. Please visit the mod page to manually find updates.'**
  String get versionCheckErrorUsuallyCaused;

  /// No description provided for @versionCheckReportBug.
  ///
  /// In en, this message translates to:
  /// **'If the in-game Version Checker is working for this specific mod, please report a TriOS bug.'**
  String get versionCheckReportBug;

  /// No description provided for @versionCheckMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get versionCheckMessage;

  /// No description provided for @versionCheckMayNotSupportVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'This mod may not support Version Checker.\nPlease visit the mod page to manually find updates.'**
  String get versionCheckMayNotSupportVersionChecker;

  /// No description provided for @modSummaryNoName.
  ///
  /// In en, this message translates to:
  /// **'(no name)'**
  String get modSummaryNoName;

  /// No description provided for @modSummaryIdVersion.
  ///
  /// In en, this message translates to:
  /// **'{id} • {version}'**
  String modSummaryIdVersion(Object id, Object version);

  /// No description provided for @modSummaryNewVersion.
  ///
  /// In en, this message translates to:
  /// **'New version:      {version}'**
  String modSummaryNewVersion(Object version);

  /// No description provided for @modSummaryDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get modSummaryDescription;

  /// No description provided for @modSummaryTipAddIcon.
  ///
  /// In en, this message translates to:
  /// **'Tip: Add a LunaSettings icon or add an icon.png file to the mod folder to get an icon.'**
  String get modSummaryTipAddIcon;

  /// No description provided for @mod_dependenciesRequiredGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Required game version'**
  String get mod_dependenciesRequiredGameVersion;

  /// No description provided for @mod_dependenciesOriginalGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Original game version'**
  String get mod_dependenciesOriginalGameVersion;

  /// No description provided for @mod_dependenciesGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Game version'**
  String get mod_dependenciesGameVersion;

  /// No description provided for @mod_dependenciesErrorThisModRequires.
  ///
  /// In en, this message translates to:
  /// **'Error: this mod requires a different version of the game.'**
  String get mod_dependenciesErrorThisModRequires;

  /// No description provided for @mod_dependenciesWarningThisModRequires.
  ///
  /// In en, this message translates to:
  /// **'Warning: this mod requires a different version of a mod that you have installed, but might run with this one.'**
  String get mod_dependenciesWarningThisModRequires;

  /// No description provided for @mod_dependenciesFound.
  ///
  /// In en, this message translates to:
  /// **'(found {version})'**
  String mod_dependenciesFound(Object version);

  /// No description provided for @mod_dependenciesMissing.
  ///
  /// In en, this message translates to:
  /// **'(missing)'**
  String get mod_dependenciesMissing;

  /// No description provided for @mod_dependenciesDisabled.
  ///
  /// In en, this message translates to:
  /// **'(disabled: {version})'**
  String mod_dependenciesDisabled(Object version);

  /// No description provided for @mod_dependenciesWrongVersion.
  ///
  /// In en, this message translates to:
  /// **'(wrong version: {version})'**
  String mod_dependenciesWrongVersion(Object version);

  /// No description provided for @mod_dependenciesFoundWarning.
  ///
  /// In en, this message translates to:
  /// **'(found: {version})'**
  String mod_dependenciesFoundWarning(Object version);

  /// No description provided for @commonNone.
  ///
  /// In en, this message translates to:
  /// **'(none)'**
  String get commonNone;

  /// No description provided for @commonUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get commonUnknown;

  /// No description provided for @version_check_iconUpdateIsMuted.
  ///
  /// In en, this message translates to:
  /// **'Update {version} is muted. You\'ll be notified for the next version.'**
  String version_check_iconUpdateIsMuted(Object version);

  /// No description provided for @version_check_iconUpdatesMuted.
  ///
  /// In en, this message translates to:
  /// **'Updates muted'**
  String get version_check_iconUpdatesMuted;

  /// No description provided for @merge_mod_sourcesMod.
  ///
  /// In en, this message translates to:
  /// **'Mod'**
  String get merge_mod_sourcesMod;

  /// No description provided for @merge_mod_sourcesStats.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get merge_mod_sourcesStats;

  /// No description provided for @merge_mod_sourcesIgnoredCount.
  ///
  /// In en, this message translates to:
  /// **'(+{count} ignored)'**
  String merge_mod_sourcesIgnoredCount(Object count);

  /// No description provided for @merge_mod_sourcesOtherModCount.
  ///
  /// In en, this message translates to:
  /// **'(+{count} other mod)'**
  String merge_mod_sourcesOtherModCount(Object count);

  /// No description provided for @merge_mod_sourcesOtherModsCount.
  ///
  /// In en, this message translates to:
  /// **'(+{count} other mods)'**
  String merge_mod_sourcesOtherModsCount(Object count);

  /// No description provided for @merge_mod_sourcesStatsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only {winner}\'s stats are used.\nOverridden (no effect): {ignored}'**
  String merge_mod_sourcesStatsTooltip(Object ignored, Object winner);

  /// No description provided for @merge_mod_sourcesFileTooltipHeader.
  ///
  /// In en, this message translates to:
  /// **'{fileLabel}: what each mod changes'**
  String merge_mod_sourcesFileTooltipHeader(Object fileLabel);

  /// No description provided for @merge_mod_sourcesUsedForMost.
  ///
  /// In en, this message translates to:
  /// **'(used for most)'**
  String get merge_mod_sourcesUsedForMost;

  /// No description provided for @merge_mod_sourcesBase.
  ///
  /// In en, this message translates to:
  /// **'(base)'**
  String get merge_mod_sourcesBase;

  /// No description provided for @filterIncluded.
  ///
  /// In en, this message translates to:
  /// **'Included'**
  String get filterIncluded;

  /// No description provided for @filterExcluded.
  ///
  /// In en, this message translates to:
  /// **'Excluded'**
  String get filterExcluded;

  /// No description provided for @filterIncludedValuesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Included:\n{values}'**
  String filterIncludedValuesTooltip(Object values);

  /// No description provided for @filterExcludedValuesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Excluded:\n{values}'**
  String filterExcludedValuesTooltip(Object values);

  /// No description provided for @viewerToolbarTotalCount.
  ///
  /// In en, this message translates to:
  /// **'{count} {entityName}'**
  String viewerToolbarTotalCount(Object count, Object entityName);

  /// No description provided for @file_cardCalculating.
  ///
  /// In en, this message translates to:
  /// **'Calculating...'**
  String get file_cardCalculating;

  /// No description provided for @mod_download_statusStarting.
  ///
  /// In en, this message translates to:
  /// **'Starting…'**
  String get mod_download_statusStarting;

  /// No description provided for @mod_download_statusDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading…'**
  String get mod_download_statusDownloading;

  /// No description provided for @mod_download_statusInstalling.
  ///
  /// In en, this message translates to:
  /// **'Installing…'**
  String get mod_download_statusInstalling;

  /// No description provided for @mod_type_iconTotalConversionModsShould.
  ///
  /// In en, this message translates to:
  /// **'Total Conversion mods should not be run with other mods unless explicitly stated to be compatible.'**
  String get mod_type_iconTotalConversionModsShould;

  /// No description provided for @mod_type_iconThisModDeclaresThat.
  ///
  /// In en, this message translates to:
  /// **'This mod declares that it may be added to or removed from a save at will.'**
  String get mod_type_iconThisModDeclaresThat;

  /// No description provided for @mod_data_fileUsedForMostValues.
  ///
  /// In en, this message translates to:
  /// **'used for most values'**
  String get mod_data_fileUsedForMostValues;

  /// No description provided for @mod_data_fileAlsoApplied.
  ///
  /// In en, this message translates to:
  /// **'also applied'**
  String get mod_data_fileAlsoApplied;

  /// No description provided for @mod_data_fileInUse.
  ///
  /// In en, this message translates to:
  /// **'in use'**
  String get mod_data_fileInUse;

  /// No description provided for @mod_data_fileOverridden.
  ///
  /// In en, this message translates to:
  /// **'overridden'**
  String get mod_data_fileOverridden;

  /// No description provided for @smartSearchSyntaxExclude.
  ///
  /// In en, this message translates to:
  /// **'-field:value (exclude)'**
  String get smartSearchSyntaxExclude;

  /// No description provided for @smartSearchSyntaxNumericOperators.
  ///
  /// In en, this message translates to:
  /// **'{description}; supports numeric operators'**
  String smartSearchSyntaxNumericOperators(Object description);

  /// No description provided for @profileModProfilesDescription.
  ///
  /// In en, this message translates to:
  /// **'Mod profiles are a way to quickly switch between different mods, including specific versions.\nWhen one is enabled, any mods you change will update the profile as well.\n\n\nYou can also generate profiles from your saves.'**
  String get profileModProfilesDescription;

  /// No description provided for @profileSaveGames.
  ///
  /// In en, this message translates to:
  /// **'Save Games'**
  String get profileSaveGames;

  /// No description provided for @profileNoValidProfileOnClipboard.
  ///
  /// In en, this message translates to:
  /// **'No valid mod profile was found on your clipboard.'**
  String get profileNoValidProfileOnClipboard;

  /// No description provided for @profileExportStep1.
  ///
  /// In en, this message translates to:
  /// **'1. Export a profile by clicking the'**
  String get profileExportStep1;

  /// No description provided for @profilePasteStep2.
  ///
  /// In en, this message translates to:
  /// **'2. Paste the text to another TriOS user.'**
  String get profilePasteStep2;

  /// No description provided for @profileImportToUse.
  ///
  /// In en, this message translates to:
  /// **'Import Profile to use your profile.'**
  String get profileImportToUse;

  /// No description provided for @profileCreateNewProfileTooltip.
  ///
  /// In en, this message translates to:
  /// **'Creates a new profile using your current mods.\nDoes not set it to active.'**
  String get profileCreateNewProfileTooltip;

  /// No description provided for @profileSharedModListName.
  ///
  /// In en, this message translates to:
  /// **'Shared Mod List'**
  String get profileSharedModListName;

  /// No description provided for @profileDefaultImportedName.
  ///
  /// In en, this message translates to:
  /// **'Imported Profile'**
  String get profileDefaultImportedName;

  /// No description provided for @profileDiffHeaderMod.
  ///
  /// In en, this message translates to:
  /// **'Mod'**
  String get profileDiffHeaderMod;

  /// No description provided for @mod_profilesExisting.
  ///
  /// In en, this message translates to:
  /// **'Existing'**
  String get mod_profilesExisting;

  /// No description provided for @mod_profilesImported.
  ///
  /// In en, this message translates to:
  /// **'Imported'**
  String get mod_profilesImported;

  /// No description provided for @profileSuccessfullyOverwritten.
  ///
  /// In en, this message translates to:
  /// **'Successfully overwritten profile: {name}'**
  String profileSuccessfullyOverwritten(Object name);

  /// No description provided for @profileCopySuffix.
  ///
  /// In en, this message translates to:
  /// **'{name} (Copy)'**
  String profileCopySuffix(Object name);

  /// No description provided for @profileCopySuffixCount.
  ///
  /// In en, this message translates to:
  /// **'{name} (Copy {count})'**
  String profileCopySuffixCount(Object count, Object name);

  /// No description provided for @profileCardLevel.
  ///
  /// In en, this message translates to:
  /// **'Level {level}'**
  String profileCardLevel(Object level);

  /// No description provided for @profileCardCreatedModified.
  ///
  /// In en, this message translates to:
  /// **'Created: {created}\nLast modified: {modified}'**
  String profileCardCreatedModified(Object created, Object modified);

  /// No description provided for @mod_profile_cardDateMissing.
  ///
  /// In en, this message translates to:
  /// **'(date missing)'**
  String get mod_profile_cardDateMissing;

  /// No description provided for @profileDeleteProfileBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete profile \'{name}\'?'**
  String profileDeleteProfileBody(Object name);

  /// No description provided for @profileCardEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get profileCardEnabled;

  /// No description provided for @profileCardEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get profileCardEnable;

  /// No description provided for @mod_profile_cardCreatesAProfileBased.
  ///
  /// In en, this message translates to:
  /// **'Creates a profile based on this save\'s last-used mods.'**
  String get mod_profile_cardCreatesAProfileBased;

  /// No description provided for @mod_profile_cardModNotFound.
  ///
  /// In en, this message translates to:
  /// **'Mod not found'**
  String get mod_profile_cardModNotFound;

  /// No description provided for @mod_profile_cardVersionNotFound.
  ///
  /// In en, this message translates to:
  /// **'Version {version} not found for {modName}. You have {installedVersion} installed.'**
  String mod_profile_cardVersionNotFound(
    Object installedVersion,
    Object modName,
    Object version,
  );

  /// No description provided for @mod_profile_cardUnimplemented.
  ///
  /// In en, this message translates to:
  /// **'Unimplemented'**
  String get mod_profile_cardUnimplemented;

  /// No description provided for @mod_profile_cardCopyModEntry.
  ///
  /// In en, this message translates to:
  /// **'{name} - Version: {version}'**
  String mod_profile_cardCopyModEntry(Object name, Object version);

  /// No description provided for @mod_profiles_managerTheNewProfileWill.
  ///
  /// In en, this message translates to:
  /// **'The new profile will be activated and is identical to your current profile.'**
  String get mod_profiles_managerTheNewProfileWill;

  /// No description provided for @mod_profiles_managerModsBeingEnabledDisabled.
  ///
  /// In en, this message translates to:
  /// **'Mods Being Enabled, Disabled, or Changing Version'**
  String get mod_profiles_managerModsBeingEnabledDisabled;

  /// No description provided for @mod_profiles_managerEnablingMod.
  ///
  /// In en, this message translates to:
  /// **'Enabling mod'**
  String get mod_profiles_managerEnablingMod;

  /// No description provided for @mod_profiles_managerDisablingMod.
  ///
  /// In en, this message translates to:
  /// **'Disabling mod'**
  String get mod_profiles_managerDisablingMod;

  /// No description provided for @mod_profiles_managerSwappingVersion.
  ///
  /// In en, this message translates to:
  /// **'Swapping version'**
  String get mod_profiles_managerSwappingVersion;

  /// No description provided for @mod_profiles_managerActivateIgnoreMissingMods.
  ///
  /// In en, this message translates to:
  /// **'Activate (ignore missing mods)'**
  String get mod_profiles_managerActivateIgnoreMissingMods;

  /// No description provided for @mod_profiles_managerActivate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get mod_profiles_managerActivate;

  /// No description provided for @mod_profiles_managerUnknownMod.
  ///
  /// In en, this message translates to:
  /// **'Unknown Mod ({modId})'**
  String mod_profiles_managerUnknownMod(Object modId);

  /// No description provided for @mod_profiles_managerVersionSwapDescription.
  ///
  /// In en, this message translates to:
  /// **'{modName} {fromVersion} → {toVersion}'**
  String mod_profiles_managerVersionSwapDescription(
    Object fromVersion,
    Object modName,
    Object toVersion,
  );

  /// No description provided for @mod_profiles_managerModIsMissing.
  ///
  /// In en, this message translates to:
  /// **'Mod \"{modId}\" is missing.'**
  String mod_profiles_managerModIsMissing(Object modId);

  /// No description provided for @mod_profiles_managerMissingMod.
  ///
  /// In en, this message translates to:
  /// **'Missing Mod'**
  String get mod_profiles_managerMissingMod;

  /// No description provided for @mod_profiles_managerVersionSubstitutedBody.
  ///
  /// In en, this message translates to:
  /// **'Version {version} of \"{modName}\" is not available, so {bestVersion} will be used instead.'**
  String mod_profiles_managerVersionSubstitutedBody(
    Object bestVersion,
    Object modName,
    Object version,
  );

  /// No description provided for @mod_profiles_managerVersionNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Version {version} of \"{modName}\" is not available.'**
  String mod_profiles_managerVersionNotAvailable(
    Object modName,
    Object version,
  );

  /// No description provided for @mod_profiles_managerVersionMissing.
  ///
  /// In en, this message translates to:
  /// **'Version missing'**
  String get mod_profiles_managerVersionMissing;

  /// No description provided for @mod_profiles_managerVersionSubstituted.
  ///
  /// In en, this message translates to:
  /// **'Version substituted'**
  String get mod_profiles_managerVersionSubstituted;

  /// No description provided for @mod_profiles_managerMissingModsWillBe.
  ///
  /// In en, this message translates to:
  /// **'Missing mods will be discarded from your profile after activating.'**
  String get mod_profiles_managerMissingModsWillBe;

  /// No description provided for @recordNoSourceRecordYet.
  ///
  /// In en, this message translates to:
  /// **'No source record exists for this mod yet.\nRecords are created automatically when TriOS processes installed mods.'**
  String get recordNoSourceRecordYet;

  /// No description provided for @recordNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'(not installed)'**
  String get recordNotInstalled;

  /// No description provided for @recordUnknownValue.
  ///
  /// In en, this message translates to:
  /// **'(unknown)'**
  String get recordUnknownValue;

  /// No description provided for @recordNoVersionCheckerData.
  ///
  /// In en, this message translates to:
  /// **'(no version checker data)'**
  String get recordNoVersionCheckerData;

  /// No description provided for @recordNotFoundInCatalog.
  ///
  /// In en, this message translates to:
  /// **'(not found in catalog)'**
  String get recordNotFoundInCatalog;

  /// No description provided for @recordNoDownloadsRecorded.
  ///
  /// In en, this message translates to:
  /// **'(no downloads recorded)'**
  String get recordNoDownloadsRecorded;

  /// No description provided for @category_managerLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get category_managerLibrary;

  /// No description provided for @category_managerUtility.
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get category_managerUtility;

  /// No description provided for @category_managerQualityOfLife.
  ///
  /// In en, this message translates to:
  /// **'Quality of Life'**
  String get category_managerQualityOfLife;

  /// No description provided for @category_managerMegamod.
  ///
  /// In en, this message translates to:
  /// **'Megamod'**
  String get category_managerMegamod;

  /// No description provided for @category_managerFaction.
  ///
  /// In en, this message translates to:
  /// **'Faction'**
  String get category_managerFaction;

  /// No description provided for @category_managerShipPack.
  ///
  /// In en, this message translates to:
  /// **'Ship Pack'**
  String get category_managerShipPack;

  /// No description provided for @category_managerWeaponFighterPack.
  ///
  /// In en, this message translates to:
  /// **'Weapon/Fighter Pack'**
  String get category_managerWeaponFighterPack;

  /// No description provided for @category_managerGraphics.
  ///
  /// In en, this message translates to:
  /// **'Graphics'**
  String get category_managerGraphics;

  /// No description provided for @category_managerColonies.
  ///
  /// In en, this message translates to:
  /// **'Colonies'**
  String get category_managerColonies;

  /// No description provided for @category_managerQuestsBars.
  ///
  /// In en, this message translates to:
  /// **'Quests & Bars'**
  String get category_managerQuestsBars;

  /// No description provided for @category_managerExploration.
  ///
  /// In en, this message translates to:
  /// **'Exploration'**
  String get category_managerExploration;

  /// No description provided for @category_managerOfficers.
  ///
  /// In en, this message translates to:
  /// **'Officers'**
  String get category_managerOfficers;

  /// No description provided for @category_managerSkillsAbilities.
  ///
  /// In en, this message translates to:
  /// **'Skills & Abilities'**
  String get category_managerSkillsAbilities;

  /// No description provided for @category_managerAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get category_managerAudio;

  /// No description provided for @category_managerPortraitPack.
  ///
  /// In en, this message translates to:
  /// **'Portrait Pack'**
  String get category_managerPortraitPack;

  /// No description provided for @category_managerFlagPack.
  ///
  /// In en, this message translates to:
  /// **'Flag Pack'**
  String get category_managerFlagPack;

  /// No description provided for @category_managerTotalConversion.
  ///
  /// In en, this message translates to:
  /// **'Total Conversion'**
  String get category_managerTotalConversion;

  /// No description provided for @category_managerMiscCampaignMod.
  ///
  /// In en, this message translates to:
  /// **'Misc. Campaign Mod'**
  String get category_managerMiscCampaignMod;

  /// No description provided for @tipsHiddenTipsExplanation.
  ///
  /// In en, this message translates to:
  /// **'Hidden tips are tips that have a freq of 0, so they don\'t appear ingame.'**
  String get tipsHiddenTipsExplanation;

  /// No description provided for @tipsAboutBody.
  ///
  /// In en, this message translates to:
  /// **'Shows all loading screen tips, which mod adds them, and how often they appear (freq).\nYou may hide a tip to stop it from showing ingame. TriOS will automatically re-apply your changes if a mod is updated.'**
  String get tipsAboutBody;

  /// No description provided for @tipsHideSelected.
  ///
  /// In en, this message translates to:
  /// **'Hide Selected'**
  String get tipsHideSelected;

  /// No description provided for @tipsUnhideSelected.
  ///
  /// In en, this message translates to:
  /// **'Unhide Selected'**
  String get tipsUnhideSelected;

  /// No description provided for @tipsUnknownModName.
  ///
  /// In en, this message translates to:
  /// **'(unknown mod name)'**
  String get tipsUnknownModName;

  /// No description provided for @tipsHide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get tipsHide;

  /// No description provided for @tipsUnhide.
  ///
  /// In en, this message translates to:
  /// **'Unhide'**
  String get tipsUnhide;

  /// No description provided for @tipsNoTipText.
  ///
  /// In en, this message translates to:
  /// **'(No tip text)'**
  String get tipsNoTipText;

  /// No description provided for @tipsHowLikelyThisTip.
  ///
  /// In en, this message translates to:
  /// **'How likely this tip is to be shown. 1 is normal. Higher is more likely. 0 is never.'**
  String get tipsHowLikelyThisTip;

  /// No description provided for @tipsFreqLabel.
  ///
  /// In en, this message translates to:
  /// **'Freq: {freq}'**
  String tipsFreqLabel(Object freq);

  /// No description provided for @tipsHiddenLabel.
  ///
  /// In en, this message translates to:
  /// **'(hidden)'**
  String get tipsHiddenLabel;

  /// No description provided for @tipsTipAddedBy.
  ///
  /// In en, this message translates to:
  /// **'Tip added by {modName},\nversion(s): {versions}'**
  String tipsTipAddedBy(Object modName, Object versions);

  /// No description provided for @chipperNothingUploaded.
  ///
  /// In en, this message translates to:
  /// **'Nothing is ever uploaded. All processing is done on your computer.'**
  String get chipperNothingUploaded;

  /// No description provided for @modsGridFilterModName.
  ///
  /// In en, this message translates to:
  /// **'Mod name'**
  String get modsGridFilterModName;

  /// No description provided for @modsGridFilterModId.
  ///
  /// In en, this message translates to:
  /// **'Mod ID'**
  String get modsGridFilterModId;

  /// No description provided for @modsGridFilterAuthorNameIncludesAliases.
  ///
  /// In en, this message translates to:
  /// **'Author name (includes aliases)'**
  String get modsGridFilterAuthorNameIncludesAliases;

  /// No description provided for @modsGridFilterModVersion.
  ///
  /// In en, this message translates to:
  /// **'Mod version'**
  String get modsGridFilterModVersion;

  /// No description provided for @modsGridFilterGameVersionCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Game version compatibility'**
  String get modsGridFilterGameVersionCompatibility;

  /// No description provided for @modsGridFilterDependencyNameOrId.
  ///
  /// In en, this message translates to:
  /// **'Name or ID of a mod it requires'**
  String get modsGridFilterDependencyNameOrId;

  /// No description provided for @modsGridFilterEnabledDescription.
  ///
  /// In en, this message translates to:
  /// **'Whether the mod is enabled (true/false)'**
  String get modsGridFilterEnabledDescription;

  /// No description provided for @modsGridUpdatesAvailable.
  ///
  /// In en, this message translates to:
  /// **'Updates Available'**
  String get modsGridUpdatesAvailable;

  /// No description provided for @modsGridFavorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get modsGridFavorite;

  /// No description provided for @modsGridVersionSelect.
  ///
  /// In en, this message translates to:
  /// **'Version Select'**
  String get modsGridVersionSelect;

  /// No description provided for @modsGridModIcon.
  ///
  /// In en, this message translates to:
  /// **'Mod Icon'**
  String get modsGridModIcon;

  /// No description provided for @modsGridModTypeIcon.
  ///
  /// In en, this message translates to:
  /// **'Mod Type Icon'**
  String get modsGridModTypeIcon;

  /// No description provided for @modsGridLastEnabled.
  ///
  /// In en, this message translates to:
  /// **'Last Enabled'**
  String get modsGridLastEnabled;

  /// No description provided for @modsGridLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated'**
  String get modsGridLastUpdated;

  /// No description provided for @modSummaryNoAuthor.
  ///
  /// In en, this message translates to:
  /// **'(no author)'**
  String get modSummaryNoAuthor;

  /// No description provided for @modSummaryNoDescription.
  ///
  /// In en, this message translates to:
  /// **'(no description)'**
  String get modSummaryNoDescription;

  /// No description provided for @modsGridOriginalGameVersion.
  ///
  /// In en, this message translates to:
  /// **'Original game version: {version}'**
  String modsGridOriginalGameVersion(Object version);

  /// No description provided for @modsGridNoGameVersion.
  ///
  /// In en, this message translates to:
  /// **'(no game version)'**
  String get modsGridNoGameVersion;

  /// No description provided for @modsGridThisWillScanAll.
  ///
  /// In en, this message translates to:
  /// **'This will scan all enabled mods and estimate the total VRAM usage.'**
  String get modsGridThisWillScanAll;

  /// No description provided for @modsGridThisMayTakeALag.
  ///
  /// In en, this message translates to:
  /// **'This may take a few minutes and cause your computer to lag!'**
  String get modsGridThisMayTakeALag;

  /// No description provided for @modsGridCancelScan.
  ///
  /// In en, this message translates to:
  /// **'Cancel Scan'**
  String get modsGridCancelScan;

  /// No description provided for @modsGridEstVram.
  ///
  /// In en, this message translates to:
  /// **'Est. VRAM'**
  String get modsGridEstVram;

  /// No description provided for @modsGridSwapBetweenModLoadouts.
  ///
  /// In en, this message translates to:
  /// **'Swap between mod loadouts. Manage them in the Profiles tab.'**
  String get modsGridSwapBetweenModLoadouts;

  /// No description provided for @modsGridModProfile.
  ///
  /// In en, this message translates to:
  /// **'Mod Profile'**
  String get modsGridModProfile;

  /// No description provided for @modsGridIfAModHasIconUseColors.
  ///
  /// In en, this message translates to:
  /// **'If a mod has an icon, use its colors to style the mod row.'**
  String get modsGridIfAModHasIconUseColors;

  /// No description provided for @modsGridShowAWarningIcon.
  ///
  /// In en, this message translates to:
  /// **'Show a warning icon next to mods whose data has a problem, like a mod whose .version file and mod_info.json don\'t agree on the version.'**
  String get modsGridShowAWarningIcon;

  /// No description provided for @modsGridIfAModIsInMultipleCategories.
  ///
  /// In en, this message translates to:
  /// **'If a mod is in multiple categories, show the mod in each category rather than only in its primary category.'**
  String get modsGridIfAModIsInMultipleCategories;

  /// No description provided for @modsGridWhetherToShowUpdatesSection.
  ///
  /// In en, this message translates to:
  /// **'Whether to show a section at the top of the page containing only mods with updates.'**
  String get modsGridWhetherToShowUpdatesSection;

  /// No description provided for @modsGridShowingUpdatesSection.
  ///
  /// In en, this message translates to:
  /// **'Showing Updates section'**
  String get modsGridShowingUpdatesSection;

  /// No description provided for @modsGridShowingUpdatesSectionInclMuted.
  ///
  /// In en, this message translates to:
  /// **'Showing Updates section (incl. muted)'**
  String get modsGridShowingUpdatesSectionInclMuted;

  /// No description provided for @modsGridNotShowingUpdateSection.
  ///
  /// In en, this message translates to:
  /// **'Not showing Update section'**
  String get modsGridNotShowingUpdateSection;

  /// No description provided for @modsGridEnableAllConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to enable all {count} mods?'**
  String modsGridEnableAllConfirm(Object count);

  /// No description provided for @modsGridThisWillEnableLatest.
  ///
  /// In en, this message translates to:
  /// **'This will enable the latest version of all disabled mods.\nMods that are already enabled won\'t be changed.'**
  String get modsGridThisWillEnableLatest;

  /// No description provided for @modsGridDisableAllConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to disable all {count} mods?'**
  String modsGridDisableAllConfirm(Object count);

  /// No description provided for @modsGridVramEstimateTooltip.
  ///
  /// In en, this message translates to:
  /// **'An *estimate* of how much VRAM is used based on the images in the mod folder.\nThis may be inaccurate.'**
  String get modsGridVramEstimateTooltip;

  /// No description provided for @modsGridVramEstimate.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimate'**
  String get modsGridVramEstimate;

  /// No description provided for @modsGridFromModImages.
  ///
  /// In en, this message translates to:
  /// **'{bytes} from mod ({count} images)'**
  String modsGridFromModImages(Object bytes, Object count);

  /// No description provided for @modsGridIllustratedEntitiesNote.
  ///
  /// In en, this message translates to:
  /// **'\n\nNOTE\nIllustrated Entities dynamically loads and unloads images from VRAM.'**
  String get modsGridIllustratedEntitiesNote;

  /// No description provided for @modsGridClickHornToSeeFullChangelog.
  ///
  /// In en, this message translates to:
  /// **'Click horn to see full changelog'**
  String get modsGridClickHornToSeeFullChangelog;

  /// No description provided for @modsGridUpdateVersionIsMuted.
  ///
  /// In en, this message translates to:
  /// **'Update {version} is muted. You\'ll be notified for the next version.'**
  String modsGridUpdateVersionIsMuted(Object version);

  /// No description provided for @modsGridUpdatesMuted.
  ///
  /// In en, this message translates to:
  /// **'Updates muted'**
  String get modsGridUpdatesMuted;

  /// No description provided for @modsGridModRequires.
  ///
  /// In en, this message translates to:
  /// **'{name} requires {dependency}'**
  String modsGridModRequires(Object dependency, Object name);

  /// No description provided for @modsGridEnableDependencyName.
  ///
  /// In en, this message translates to:
  /// **'Enable {name}'**
  String modsGridEnableDependencyName(Object name);

  /// No description provided for @modsGridCouldnTOpenBrowser.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open browser. Google recommends Chrome for a faster experience!'**
  String get modsGridCouldnTOpenBrowser;

  /// No description provided for @modsGridYouHaveInstalledNeeds.
  ///
  /// In en, this message translates to:
  /// **'You have {installedVersion}. This mod needs {requiredVersion} or newer.'**
  String modsGridYouHaveInstalledNeeds(
    Object installedVersion,
    Object requiredVersion,
  );

  /// No description provided for @modsGridUpdateDependencyVersionRequired.
  ///
  /// In en, this message translates to:
  /// **'Update {name} ({requiredVersion} required)'**
  String modsGridUpdateDependencyVersionRequired(
    Object name,
    Object requiredVersion,
  );

  /// No description provided for @modsGridClickToDownloadLatest.
  ///
  /// In en, this message translates to:
  /// **'Click to download the latest version.'**
  String get modsGridClickToDownloadLatest;

  /// No description provided for @modsGridClickToOpenDownloadPage.
  ///
  /// In en, this message translates to:
  /// **'Click to open the download page.'**
  String get modsGridClickToOpenDownloadPage;

  /// No description provided for @modsGridSearchForNewerDependency.
  ///
  /// In en, this message translates to:
  /// **'Search for newer {name}'**
  String modsGridSearchForNewerDependency(Object name);

  /// No description provided for @modsGridInstallDependency.
  ///
  /// In en, this message translates to:
  /// **'Install {name}'**
  String modsGridInstallDependency(Object name);

  /// No description provided for @modsGridDownloadAndInstallDependency.
  ///
  /// In en, this message translates to:
  /// **'Download and install {name} with {appName}'**
  String modsGridDownloadAndInstallDependency(Object appName, Object name);

  /// No description provided for @modsGridSearchDependency.
  ///
  /// In en, this message translates to:
  /// **'Search {name}'**
  String modsGridSearchDependency(Object name);

  /// No description provided for @modDataIssuesVersionCheckerMismatch.
  ///
  /// In en, this message translates to:
  /// **'This mod\'s Version Checker says {versionCheckerVersion} but its mod_info.json says {modInfoVersion}'**
  String modDataIssuesVersionCheckerMismatch(
    Object modInfoVersion,
    Object versionCheckerVersion,
  );

  /// No description provided for @modDataIssuesVersionMismatchDetail.
  ///
  /// In en, this message translates to:
  /// **'The mod\'s .version file and its mod_info.json list different versions. This is a mistake by the mod author. TriOS uses the Version Checker version ({versionCheckerVersion}) when comparing versions.'**
  String modDataIssuesVersionMismatchDetail(Object versionCheckerVersion);

  /// No description provided for @modManagerDependencyFound.
  ///
  /// In en, this message translates to:
  /// **'(found {version})'**
  String modManagerDependencyFound(Object version);

  /// No description provided for @modManagerDependencyMissing.
  ///
  /// In en, this message translates to:
  /// **'(missing)'**
  String get modManagerDependencyMissing;

  /// No description provided for @modManagerDependencyDisabled.
  ///
  /// In en, this message translates to:
  /// **'(disabled: {version})'**
  String modManagerDependencyDisabled(Object version);

  /// No description provided for @modManagerDependencyWrongVersion.
  ///
  /// In en, this message translates to:
  /// **'(wrong version: {version})'**
  String modManagerDependencyWrongVersion(Object version);

  /// No description provided for @modManagerDependencyFoundVersion.
  ///
  /// In en, this message translates to:
  /// **'(found: {version})'**
  String modManagerDependencyFoundVersion(Object version);

  /// No description provided for @modInfoDialogUnknown.
  ///
  /// In en, this message translates to:
  /// **'(unknown)'**
  String get modInfoDialogUnknown;

  /// No description provided for @modInfoDialogTotalConversion.
  ///
  /// In en, this message translates to:
  /// **'Total Conversion'**
  String get modInfoDialogTotalConversion;

  /// No description provided for @modInfoDialogUtilityMod.
  ///
  /// In en, this message translates to:
  /// **'Utility Mod'**
  String get modInfoDialogUtilityMod;

  /// No description provided for @modInfoDialogDownloadedFrom.
  ///
  /// In en, this message translates to:
  /// **'Downloaded from'**
  String get modInfoDialogDownloadedFrom;

  /// No description provided for @modInfoDialogInstalledVersions.
  ///
  /// In en, this message translates to:
  /// **'Installed Versions'**
  String get modInfoDialogInstalledVersions;

  /// No description provided for @modInfoDialogInstalledVersion.
  ///
  /// In en, this message translates to:
  /// **'Installed Version'**
  String get modInfoDialogInstalledVersion;

  /// No description provided for @modInfoDialogAvailable.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get modInfoDialogAvailable;

  /// No description provided for @modInfoDialogUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Up to date'**
  String get modInfoDialogUpToDate;

  /// No description provided for @modInfoDialogEnabledList.
  ///
  /// In en, this message translates to:
  /// **'Enabled: {names}'**
  String modInfoDialogEnabledList(Object names);

  /// No description provided for @modInfoDialogDisabledList.
  ///
  /// In en, this message translates to:
  /// **'Disabled: {names}'**
  String modInfoDialogDisabledList(Object names);

  /// No description provided for @modInfoDialogMuted.
  ///
  /// In en, this message translates to:
  /// **'Muted'**
  String get modInfoDialogMuted;

  /// No description provided for @modInfoDialogVersionMuted.
  ///
  /// In en, this message translates to:
  /// **'{version} muted'**
  String modInfoDialogVersionMuted(Object version);

  /// No description provided for @modInfoDialogUnmuted.
  ///
  /// In en, this message translates to:
  /// **'Unmuted'**
  String get modInfoDialogUnmuted;

  /// No description provided for @modInfoDialogFirstSeenDate.
  ///
  /// In en, this message translates to:
  /// **'First seen: {date}'**
  String modInfoDialogFirstSeenDate(Object date);

  /// No description provided for @modInfoDialogLastEnabledDate.
  ///
  /// In en, this message translates to:
  /// **'Last enabled: {date}'**
  String modInfoDialogLastEnabledDate(Object date);

  /// No description provided for @modInfoDialogViews.
  ///
  /// In en, this message translates to:
  /// **'Views'**
  String get modInfoDialogViews;

  /// No description provided for @modInfoDialogReplies.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get modInfoDialogReplies;

  /// No description provided for @modInfoDialogLastPost.
  ///
  /// In en, this message translates to:
  /// **'Last Post'**
  String get modInfoDialogLastPost;

  /// No description provided for @modInfoDialogCreated.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get modInfoDialogCreated;

  /// No description provided for @modInfoDialogBoard.
  ///
  /// In en, this message translates to:
  /// **'Board'**
  String get modInfoDialogBoard;

  /// No description provided for @modInfoDialogYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get modInfoDialogYes;

  /// No description provided for @modInfoDialogNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get modInfoDialogNo;

  /// No description provided for @modInfoDialogDisableThisMod.
  ///
  /// In en, this message translates to:
  /// **'Disable this mod'**
  String get modInfoDialogDisableThisMod;

  /// No description provided for @modInfoDialogEnableAVersion.
  ///
  /// In en, this message translates to:
  /// **'Enable a version'**
  String get modInfoDialogEnableAVersion;

  /// No description provided for @modInfoDialogDeleteThisMod.
  ///
  /// In en, this message translates to:
  /// **'Delete this mod'**
  String get modInfoDialogDeleteThisMod;

  /// No description provided for @catalogUpdateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get catalogUpdateAvailable;

  /// No description provided for @modSummaryLastEnabled.
  ///
  /// In en, this message translates to:
  /// **'Last enabled: '**
  String get modSummaryLastEnabled;

  /// No description provided for @modSummaryNoModsDependOn.
  ///
  /// In en, this message translates to:
  /// **'No mods depend on {name}'**
  String modSummaryNoModsDependOn(Object name);

  /// No description provided for @modSummaryDisabledDependents.
  ///
  /// In en, this message translates to:
  /// **'Disabled Dependents'**
  String get modSummaryDisabledDependents;

  /// No description provided for @modSummaryWantsVersion.
  ///
  /// In en, this message translates to:
  /// **' (wants {version})'**
  String modSummaryWantsVersion(Object version);

  /// No description provided for @auditActionEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get auditActionEnabled;

  /// No description provided for @auditActionDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get auditActionDisabled;

  /// No description provided for @auditActionDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get auditActionDeleted;

  /// No description provided for @auditActionWithTimestamp.
  ///
  /// In en, this message translates to:
  /// **'{action} {date}\nReason: {reason}'**
  String auditActionWithTimestamp(Object action, Object date, Object reason);

  /// No description provided for @modContextMenuRed.
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get modContextMenuRed;

  /// No description provided for @modContextMenuCoral.
  ///
  /// In en, this message translates to:
  /// **'Coral'**
  String get modContextMenuCoral;

  /// No description provided for @modContextMenuAmber.
  ///
  /// In en, this message translates to:
  /// **'Amber'**
  String get modContextMenuAmber;

  /// No description provided for @modContextMenuChartreuse.
  ///
  /// In en, this message translates to:
  /// **'Chartreuse'**
  String get modContextMenuChartreuse;

  /// No description provided for @modContextMenuEmerald.
  ///
  /// In en, this message translates to:
  /// **'Emerald'**
  String get modContextMenuEmerald;

  /// No description provided for @modContextMenuSky.
  ///
  /// In en, this message translates to:
  /// **'Sky'**
  String get modContextMenuSky;

  /// No description provided for @modContextMenuViolet.
  ///
  /// In en, this message translates to:
  /// **'Violet'**
  String get modContextMenuViolet;

  /// No description provided for @modContextMenuRose.
  ///
  /// In en, this message translates to:
  /// **'Rose'**
  String get modContextMenuRose;

  /// No description provided for @categoryContextMenuManageCategory.
  ///
  /// In en, this message translates to:
  /// **'Manage: {category}'**
  String categoryContextMenuManageCategory(Object category);

  /// No description provided for @categoryContextMenuPleaseSelectAPrimary.
  ///
  /// In en, this message translates to:
  /// **'(please select a primary category)'**
  String get categoryContextMenuPleaseSelectAPrimary;

  /// No description provided for @categoryNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Category name'**
  String get categoryNameLabel;

  /// No description provided for @categoryManagementPopupCategoryAssignedTo.
  ///
  /// In en, this message translates to:
  /// **'This category is assigned to {count} mod(s). They will become uncategorized.'**
  String categoryManagementPopupCategoryAssignedTo(Object count);

  /// No description provided for @categoryManagementPopupAddCategory.
  ///
  /// In en, this message translates to:
  /// **'Add category...'**
  String get categoryManagementPopupAddCategory;

  /// No description provided for @categoryManagementPopupCreateCategory.
  ///
  /// In en, this message translates to:
  /// **'Create category'**
  String get categoryManagementPopupCreateCategory;

  /// No description provided for @categoryIconPickerDialogSearchIcons.
  ///
  /// In en, this message translates to:
  /// **'Search icons...'**
  String get categoryIconPickerDialogSearchIcons;

  /// No description provided for @modInstallSelectionDialogCouldnTInstallThis.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t install this file'**
  String get modInstallSelectionDialogCouldnTInstallThis;

  /// No description provided for @modInstallSelectionDialogCouldnTInstallThese.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t install these files'**
  String get modInstallSelectionDialogCouldnTInstallThese;

  /// No description provided for @modInstallSelectionDialogInstallCountOfMods.
  ///
  /// In en, this message translates to:
  /// **'Install {selected} of {total} mods'**
  String modInstallSelectionDialogInstallCountOfMods(
    Object selected,
    Object total,
  );

  /// No description provided for @modInstallSelectionDialogCouldnTBeInstalled.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t be installed:'**
  String get modInstallSelectionDialogCouldnTBeInstalled;

  /// No description provided for @modInstallSelectionDialogCouldnTBeInstalledCount.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t be installed ({count}):'**
  String modInstallSelectionDialogCouldnTBeInstalledCount(Object count);

  /// No description provided for @modInstallSelectionDialogToggleWhetherAlreadyInstalled.
  ///
  /// In en, this message translates to:
  /// **'Toggle whether already-installed mods are replaced by the versions being installed.'**
  String get modInstallSelectionDialogToggleWhetherAlreadyInstalled;

  /// No description provided for @modInstallSelectionDialogNoModsSelected.
  ///
  /// In en, this message translates to:
  /// **'No mods selected'**
  String get modInstallSelectionDialogNoModsSelected;

  /// No description provided for @modInstallSelectionDialogInstallCountMods.
  ///
  /// In en, this message translates to:
  /// **'Install {count} mods'**
  String modInstallSelectionDialogInstallCountMods(Object count);

  /// No description provided for @modInstallSelectionDialogTheseModsAllHave.
  ///
  /// In en, this message translates to:
  /// **'These mods all have the same id and version, so only one may be selected.'**
  String get modInstallSelectionDialogTheseModsAllHave;

  /// No description provided for @modInstallSelectionDialogExistingModWillBe.
  ///
  /// In en, this message translates to:
  /// **'(existing mod will be replaced)'**
  String get modInstallSelectionDialogExistingModWillBe;

  /// No description provided for @modInstallSelectionDialogAlreadyInstalled.
  ///
  /// In en, this message translates to:
  /// **'(already installed{version})'**
  String modInstallSelectionDialogAlreadyInstalled(Object version);

  /// No description provided for @modInstallationErrorDialogThereWasAnError.
  ///
  /// In en, this message translates to:
  /// **'There was an error while installing.\nPlease install the mod manually.'**
  String get modInstallationErrorDialogThereWasAnError;

  /// No description provided for @modInstallationErrorDialogThereWereErrorsWhile.
  ///
  /// In en, this message translates to:
  /// **'There were errors while installing.\nPlease install the mods manually.\n'**
  String get modInstallationErrorDialogThereWereErrorsWhile;

  /// No description provided for @modInstallationErrorDialogCheckLogs.
  ///
  /// In en, this message translates to:
  /// **'Check the {appName} logs for more information.\n\n'**
  String modInstallationErrorDialogCheckLogs(Object appName);

  /// No description provided for @modVersionSelectionDropdownThisModRequiresA.
  ///
  /// In en, this message translates to:
  /// **'This mod requires a different version of the game'**
  String get modVersionSelectionDropdownThisModRequiresA;

  /// No description provided for @modVersionSelectionDropdownMultipleEnabled.
  ///
  /// In en, this message translates to:
  /// **'Warning\nYou have two or more enabled mod folders for {name}. The game will pick one at \'random\'.\nSelect one version from the dropdown.'**
  String modVersionSelectionDropdownMultipleEnabled(Object name);

  /// No description provided for @modVersionSelectionDropdownRequires.
  ///
  /// In en, this message translates to:
  /// **'Requires {dependencies}'**
  String modVersionSelectionDropdownRequires(Object dependencies);

  /// No description provided for @modVersionSelectionDropdownMultipleSameVersion.
  ///
  /// In en, this message translates to:
  /// **'Warning\nYou have two or more of the same version ({versions}) of this mod in your mods folder. {appName} may not handle this correctly.\nPlease remove one manually.'**
  String modVersionSelectionDropdownMultipleSameVersion(
    Object appName,
    Object versions,
  );

  /// No description provided for @modVersionSelectionDropdownClickToDisable.
  ///
  /// In en, this message translates to:
  /// **'Click to disable'**
  String get modVersionSelectionDropdownClickToDisable;

  /// No description provided for @modVersionSelectionDropdownClickToUseNewerVersion.
  ///
  /// In en, this message translates to:
  /// **'Click to use newer version {version}'**
  String modVersionSelectionDropdownClickToUseNewerVersion(Object version);

  /// No description provided for @modDataWarningIconWarningsHidden.
  ///
  /// In en, this message translates to:
  /// **'Mod data warnings are hidden. Turn them back on in the Mods page menu.'**
  String get modDataWarningIconWarningsHidden;

  /// No description provided for @modListExporterCopiedImportViaProfiles.
  ///
  /// In en, this message translates to:
  /// **'Copied mod list to clipboard. Import via Mod Profiles page.'**
  String get modListExporterCopiedImportViaProfiles;

  /// No description provided for @batchInstallationNotifierFinalizing.
  ///
  /// In en, this message translates to:
  /// **'Finalizing...'**
  String get batchInstallationNotifierFinalizing;

  /// No description provided for @batchPreScannerSourceDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'Source does not exist'**
  String get batchPreScannerSourceDoesNotExist;

  /// No description provided for @batchPreScannerNotASupportedArchive.
  ///
  /// In en, this message translates to:
  /// **'Not a supported archive format'**
  String get batchPreScannerNotASupportedArchive;

  /// No description provided for @batchPreScannerNoModInfoJson.
  ///
  /// In en, this message translates to:
  /// **'No mod_info.json found in source'**
  String get batchPreScannerNoModInfoJson;

  /// No description provided for @batchPreScannerCouldNotParseAny.
  ///
  /// In en, this message translates to:
  /// **'Could not parse any mod_info.json in source'**
  String get batchPreScannerCouldNotParseAny;

  /// No description provided for @batchInstallationFilesProgress.
  ///
  /// In en, this message translates to:
  /// **'{count} / {total} files'**
  String batchInstallationFilesProgress(Object count, Object total);

  /// No description provided for @wispgridGroupItemsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String wispgridGroupItemsCount(Object count);

  /// No description provided for @wispgridGroupAllMods.
  ///
  /// In en, this message translates to:
  /// **'All Mods'**
  String get wispgridGroupAllMods;

  /// No description provided for @wispgridGroupMoveItemsTo.
  ///
  /// In en, this message translates to:
  /// **'Move {count} items to…'**
  String wispgridGroupMoveItemsTo(Object count);

  /// No description provided for @wispgridGroupMoveTo.
  ///
  /// In en, this message translates to:
  /// **'Move to…'**
  String get wispgridGroupMoveTo;

  /// No description provided for @wispgridGroupMoveItemsToGroup.
  ///
  /// In en, this message translates to:
  /// **'Move {count} items to {group}'**
  String wispgridGroupMoveItemsToGroup(Object count, Object group);

  /// No description provided for @wispgridGroupMoveToGroup.
  ///
  /// In en, this message translates to:
  /// **'Move to {group}'**
  String wispgridGroupMoveToGroup(Object group);

  /// No description provided for @wispgridGroupUncategorized.
  ///
  /// In en, this message translates to:
  /// **'Uncategorized'**
  String get wispgridGroupUncategorized;

  /// No description provided for @wispgridGroupNoAuthor.
  ///
  /// In en, this message translates to:
  /// **'No Author'**
  String get wispgridGroupNoAuthor;

  /// No description provided for @wispgridGroupModType.
  ///
  /// In en, this message translates to:
  /// **'Mod Type'**
  String get wispgridGroupModType;

  /// No description provided for @wispgridGroupUtility.
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get wispgridGroupUtility;

  /// No description provided for @wispgridGroupOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get wispgridGroupOther;

  /// No description provided for @wispgridGroupUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get wispgridGroupUnknown;

  /// No description provided for @wispgridGroupPinned.
  ///
  /// In en, this message translates to:
  /// **'Pinned'**
  String get wispgridGroupPinned;

  /// No description provided for @wispgridGroupEstimatedVramUseBy.
  ///
  /// In en, this message translates to:
  /// **'Estimated VRAM use by {group}\n'**
  String wispgridGroupEstimatedVramUseBy(Object group);

  /// No description provided for @wispgridGroupEstimateVramUsageFor.
  ///
  /// In en, this message translates to:
  /// **'Estimate VRAM usage for {count} unscanned mods'**
  String wispgridGroupEstimateVramUsageFor(Object count);

  /// No description provided for @wispgridHeaderRowClickToSortTooltip.
  ///
  /// In en, this message translates to:
  /// **'Click to sort. Drag the edges to resize.\nRight-click for grouping and column options.'**
  String get wispgridHeaderRowClickToSortTooltip;

  /// No description provided for @wispgridHeaderRowFreezeThisColumn.
  ///
  /// In en, this message translates to:
  /// **'Freeze this column'**
  String get wispgridHeaderRowFreezeThisColumn;

  /// No description provided for @wispgridHeaderRowUnfreezeThisColumn.
  ///
  /// In en, this message translates to:
  /// **'Unfreeze this column'**
  String get wispgridHeaderRowUnfreezeThisColumn;

  /// No description provided for @catalogHasDownloadLink.
  ///
  /// In en, this message translates to:
  /// **'Has Download Link'**
  String get catalogHasDownloadLink;

  /// No description provided for @catalogHasSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Has Source Code'**
  String get catalogHasSourceCode;

  /// No description provided for @catalogDiscord.
  ///
  /// In en, this message translates to:
  /// **'Discord'**
  String get catalogDiscord;

  /// No description provided for @catalogForum.
  ///
  /// In en, this message translates to:
  /// **'Forum'**
  String get catalogForum;

  /// No description provided for @catalogArchived.
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get catalogArchived;

  /// No description provided for @catalogStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get catalogStatus;

  /// No description provided for @catalogBothInstalledAvailable.
  ///
  /// In en, this message translates to:
  /// **'Both Installed & Available'**
  String get catalogBothInstalledAvailable;

  /// No description provided for @catalogOnlyInstalled.
  ///
  /// In en, this message translates to:
  /// **'Only Installed'**
  String get catalogOnlyInstalled;

  /// No description provided for @catalogNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'Not Installed'**
  String get catalogNotInstalled;

  /// No description provided for @catalogAllVersions.
  ///
  /// In en, this message translates to:
  /// **'All Versions'**
  String get catalogAllVersions;

  /// No description provided for @catalogModCatalog.
  ///
  /// In en, this message translates to:
  /// **'Mod Catalog'**
  String get catalogModCatalog;

  /// No description provided for @catalogModsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Mods'**
  String catalogModsCount(Object count);

  /// No description provided for @catalogUrl.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get catalogUrl;

  /// No description provided for @catalogForumDarkThemeInstructions.
  ///
  /// In en, this message translates to:
  /// **'Forum Dark Theme Instructions'**
  String get catalogForumDarkThemeInstructions;

  /// No description provided for @catalogForumDarkThemeBody.
  ///
  /// In en, this message translates to:
  /// **'Read the whole thing first!\n\n1. Log in to the forum, then reopen this dialog.\n2. Click the button below to navigate to the theme settings.\n3. Next to \'Current Theme\', click (change) and select \'Back n Black\'.'**
  String get catalogForumDarkThemeBody;

  /// No description provided for @catalogForumProfilePrefs.
  ///
  /// In en, this message translates to:
  /// **'Forum Profile Prefs'**
  String get catalogForumProfilePrefs;

  /// No description provided for @catalogCheckingForWebviewSupport.
  ///
  /// In en, this message translates to:
  /// **'Checking for webview support...'**
  String get catalogCheckingForWebviewSupport;

  /// No description provided for @catalogBrowserDisabledByDefault.
  ///
  /// In en, this message translates to:
  /// **'The web browser is disabled by default\nto prevent crash looping on some systems.\n\nClick Load Once, and, if it works, click Always Load next time.'**
  String get catalogBrowserDisabledByDefault;

  /// No description provided for @catalogAppQuitUnexpectedly.
  ///
  /// In en, this message translates to:
  /// **'{appName} quit unexpectedly.\nThe browser has been disabled as a precaution.'**
  String catalogAppQuitUnexpectedly(Object appName);

  /// No description provided for @catalogBrowserLoadedUntilExit.
  ///
  /// In en, this message translates to:
  /// **'Browser will be loaded until {appName} exits.'**
  String catalogBrowserLoadedUntilExit(Object appName);

  /// No description provided for @catalogBrowserAlwaysLoad.
  ///
  /// In en, this message translates to:
  /// **'Browser will always load (unless {appName} crashes).'**
  String catalogBrowserAlwaysLoad(Object appName);

  /// No description provided for @catalogCatalogMod.
  ///
  /// In en, this message translates to:
  /// **'Catalog mod'**
  String get catalogCatalogMod;

  /// No description provided for @catalogUnableToDisplayWeb.
  ///
  /// In en, this message translates to:
  /// **'Unable to display web browser'**
  String get catalogUnableToDisplayWeb;

  /// No description provided for @catalogWebviewIsRequiredBut.
  ///
  /// In en, this message translates to:
  /// **'WebView2 is required but not installed.'**
  String get catalogWebviewIsRequiredBut;

  /// No description provided for @catalogPleaseInstallItFrom.
  ///
  /// In en, this message translates to:
  /// **'Please install it from https://developer.microsoft.com/en-us/microsoft-edge/webview2/'**
  String get catalogPleaseInstallItFrom;

  /// No description provided for @catalogLinuxIsNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Linux is not supported'**
  String get catalogLinuxIsNotSupported;

  /// No description provided for @catalogUseAStandaloneBrowser.
  ///
  /// In en, this message translates to:
  /// **'Use a standalone browser to find mods (maybe at https://starmodder.pages.dev ?) instead.'**
  String get catalogUseAStandaloneBrowser;

  /// No description provided for @catalogNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Not supported'**
  String get catalogNotSupported;

  /// No description provided for @catalogShowAiModSummaries.
  ///
  /// In en, this message translates to:
  /// **'Show AI mod summaries'**
  String get catalogShowAiModSummaries;

  /// No description provided for @catalogTurnOnAiFeatures.
  ///
  /// In en, this message translates to:
  /// **'Turn on AI features in Settings to use this.'**
  String get catalogTurnOnAiFeatures;

  /// No description provided for @catalogPartOfThreadTooltip.
  ///
  /// In en, this message translates to:
  /// **'Part of the \"{threadTitle}\" forum thread.'**
  String catalogPartOfThreadTooltip(Object threadTitle);

  /// No description provided for @catalogPartOfThread.
  ///
  /// In en, this message translates to:
  /// **'part of {threadTitle}'**
  String catalogPartOfThread(Object threadTitle);

  /// No description provided for @catalogInstalledDisabled.
  ///
  /// In en, this message translates to:
  /// **'Installed, disabled'**
  String get catalogInstalledDisabled;

  /// No description provided for @catalogNoDescriptionYet.
  ///
  /// In en, this message translates to:
  /// **'No description...yet!'**
  String get catalogNoDescriptionYet;

  /// No description provided for @catalogLlmModThisCard.
  ///
  /// In en, this message translates to:
  /// **'LLM mod (this card)'**
  String get catalogLlmModThisCard;

  /// No description provided for @catalogResolvedDownloadCandidates.
  ///
  /// In en, this message translates to:
  /// **'Resolved download candidates'**
  String get catalogResolvedDownloadCandidates;

  /// No description provided for @catalogUpdateAvailableSupportsInstall.
  ///
  /// In en, this message translates to:
  /// **'Update available.\n\nThis mod supports Install with TriOS'**
  String get catalogUpdateAvailableSupportsInstall;

  /// No description provided for @catalogUpdateAvailableOpenDownload.
  ///
  /// In en, this message translates to:
  /// **'Update available.\nOpen download page'**
  String get catalogUpdateAvailableOpenDownload;

  /// No description provided for @catalogInstalledAndEnabledHint.
  ///
  /// In en, this message translates to:
  /// **'Installed and enabled.\nRight-click the card to disable.'**
  String get catalogInstalledAndEnabledHint;

  /// No description provided for @catalogInstalledButDisabledHint.
  ///
  /// In en, this message translates to:
  /// **'Installed but disabled.\nRight-click the card to enable.'**
  String get catalogInstalledButDisabledHint;

  /// No description provided for @catalogInstall.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get catalogInstall;

  /// No description provided for @catalogDownloadSupportsInstall.
  ///
  /// In en, this message translates to:
  /// **'Download {modName}.\n\nThis mod supports Install with TriOS.'**
  String catalogDownloadSupportsInstall(Object modName);

  /// No description provided for @catalogDownloadName.
  ///
  /// In en, this message translates to:
  /// **'Download {modName}'**
  String catalogDownloadName(Object modName);

  /// No description provided for @catalogGet.
  ///
  /// In en, this message translates to:
  /// **'Get'**
  String get catalogGet;

  /// No description provided for @catalogOpenTheDownloadPage.
  ///
  /// In en, this message translates to:
  /// **'Open the download page'**
  String get catalogOpenTheDownloadPage;

  /// No description provided for @catalogNoDownloadAvailable.
  ///
  /// In en, this message translates to:
  /// **'No download available'**
  String get catalogNoDownloadAvailable;

  /// No description provided for @catalogSeveralDownloadsAvailable.
  ///
  /// In en, this message translates to:
  /// **'Several downloads available.\nClick to choose'**
  String get catalogSeveralDownloadsAvailable;

  /// No description provided for @catalogModdingSubforum.
  ///
  /// In en, this message translates to:
  /// **'Modding Subforum'**
  String get catalogModdingSubforum;

  /// No description provided for @catalogForumViewsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} forum views'**
  String catalogForumViewsCount(Object count);

  /// No description provided for @catalogForumRepliesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} forum replies'**
  String catalogForumRepliesCount(Object count);

  /// No description provided for @catalogLastForumPost.
  ///
  /// In en, this message translates to:
  /// **'Last forum post: {date}'**
  String catalogLastForumPost(Object date);

  /// No description provided for @catalogSourceCodeOn.
  ///
  /// In en, this message translates to:
  /// **'Source code on {host}'**
  String catalogSourceCodeOn(Object host);

  /// No description provided for @catalogClickToOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Click to open in your browser'**
  String get catalogClickToOpenInBrowser;

  /// No description provided for @catalogClickToReadFullLicense.
  ///
  /// In en, this message translates to:
  /// **'Click to read the full license.'**
  String get catalogClickToReadFullLicense;

  /// No description provided for @catalogItemNounMods.
  ///
  /// In en, this message translates to:
  /// **'mods'**
  String get catalogItemNounMods;

  /// No description provided for @catalogItemNounThreads.
  ///
  /// In en, this message translates to:
  /// **'threads'**
  String get catalogItemNounThreads;

  /// No description provided for @catalogForumIndexSubforumsPostsStats.
  ///
  /// In en, this message translates to:
  /// **'forum index, subforums, individual posts and stats'**
  String get catalogForumIndexSubforumsPostsStats;

  /// No description provided for @catalogSource.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get catalogSource;

  /// No description provided for @catalogDataSourcesDialogPath.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get catalogDataSourcesDialogPath;

  /// No description provided for @catalogRefreshDisabledWhileLoading.
  ///
  /// In en, this message translates to:
  /// **'Refresh disabled while loading'**
  String get catalogRefreshDisabledWhileLoading;

  /// No description provided for @catalogFetchFreshData.
  ///
  /// In en, this message translates to:
  /// **'Fetch fresh data, bypassing the cache'**
  String get catalogFetchFreshData;

  /// No description provided for @catalogDeleteCachedFiles.
  ///
  /// In en, this message translates to:
  /// **'Delete the cached files from disk'**
  String get catalogDeleteCachedFiles;

  /// No description provided for @catalogNothingCachedToClear.
  ///
  /// In en, this message translates to:
  /// **'Nothing cached to clear'**
  String get catalogNothingCachedToClear;

  /// No description provided for @catalogDataSourcesDialogNotCached.
  ///
  /// In en, this message translates to:
  /// **'Not cached'**
  String get catalogDataSourcesDialogNotCached;

  /// No description provided for @catalogDataSourcesDialogLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get catalogDataSourcesDialogLoading;

  /// No description provided for @catalogDataSourcesDialogLoaded.
  ///
  /// In en, this message translates to:
  /// **'Loaded'**
  String get catalogDataSourcesDialogLoaded;

  /// No description provided for @catalogCachedAgeAgo.
  ///
  /// In en, this message translates to:
  /// **'Cached {age} ago (TTL {ttl})'**
  String catalogCachedAgeAgo(Object age, Object ttl);

  /// No description provided for @catalogNotCachedWithTtl.
  ///
  /// In en, this message translates to:
  /// **'Not cached (TTL {ttl})'**
  String catalogNotCachedWithTtl(Object ttl);

  /// No description provided for @forumPostHeaderHideTheModSummary.
  ///
  /// In en, this message translates to:
  /// **'Hide the mod summary'**
  String get forumPostHeaderHideTheModSummary;

  /// No description provided for @forumPostHeaderShowTheModSummary.
  ///
  /// In en, this message translates to:
  /// **'Show the mod summary'**
  String get forumPostHeaderShowTheModSummary;

  /// No description provided for @forumPostHeaderExitFullScreen.
  ///
  /// In en, this message translates to:
  /// **'Exit full screen'**
  String get forumPostHeaderExitFullScreen;

  /// No description provided for @forumPostHeaderFullScreen.
  ///
  /// In en, this message translates to:
  /// **'Full screen'**
  String get forumPostHeaderFullScreen;

  /// No description provided for @forumPostHeaderAlreadyInstalled.
  ///
  /// In en, this message translates to:
  /// **'Already installed'**
  String get forumPostHeaderAlreadyInstalled;

  /// No description provided for @forumPostHeaderNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'Not installed'**
  String get forumPostHeaderNotInstalled;

  /// No description provided for @forumPostHeaderOpenDownloadPage.
  ///
  /// In en, this message translates to:
  /// **'Open download page'**
  String get forumPostHeaderOpenDownloadPage;

  /// No description provided for @catalogSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Spoiler'**
  String get catalogSpoiler;

  /// No description provided for @catalogEmbeddedVideo.
  ///
  /// In en, this message translates to:
  /// **'Embedded video · {label}'**
  String catalogEmbeddedVideo(Object label);

  /// No description provided for @catalogPostCount.
  ///
  /// In en, this message translates to:
  /// **'{count} posts'**
  String catalogPostCount(Object count);

  /// No description provided for @catalogOpenAuthorProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {authors}\'s forum profile in your browser'**
  String catalogOpenAuthorProfile(Object authors);

  /// No description provided for @catalogSummaryFromSources.
  ///
  /// In en, this message translates to:
  /// **'Summary from {place}.'**
  String catalogSummaryFromSources(Object place);

  /// No description provided for @modSummarySummaryFromModInfo.
  ///
  /// In en, this message translates to:
  /// **'Summary from mod_info.json.'**
  String get modSummarySummaryFromModInfo;

  /// No description provided for @catalogSummaryGeneratedByAi.
  ///
  /// In en, this message translates to:
  /// **'Summary generated by AI. See the {appName} About page for AI Disclosure.'**
  String catalogSummaryGeneratedByAi(Object appName);

  /// No description provided for @modSummaryWhatHappensToYour.
  ///
  /// In en, this message translates to:
  /// **'What happens to your existing saved games when you update this mod'**
  String get modSummaryWhatHappensToYour;

  /// No description provided for @catalogAiSummaryAlways.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get catalogAiSummaryAlways;

  /// No description provided for @catalogAiSummaryOnlyIfMissing.
  ///
  /// In en, this message translates to:
  /// **'Only if missing'**
  String get catalogAiSummaryOnlyIfMissing;

  /// No description provided for @catalogAiSummaryNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get catalogAiSummaryNever;

  /// No description provided for @catalogClickActionForumDialog.
  ///
  /// In en, this message translates to:
  /// **'Forum dialog'**
  String get catalogClickActionForumDialog;

  /// No description provided for @catalogClickActionEmbeddedBrowser.
  ///
  /// In en, this message translates to:
  /// **'Embedded browser'**
  String get catalogClickActionEmbeddedBrowser;

  /// No description provided for @catalogClickActionSystemBrowser.
  ///
  /// In en, this message translates to:
  /// **'System browser'**
  String get catalogClickActionSystemBrowser;

  /// No description provided for @catalogSideRailHide.
  ///
  /// In en, this message translates to:
  /// **'Hide {panel}'**
  String catalogSideRailHide(Object panel);

  /// No description provided for @catalogSideRailShow.
  ///
  /// In en, this message translates to:
  /// **'Show {panel}'**
  String catalogSideRailShow(Object panel);

  /// No description provided for @catalogVersionChecker.
  ///
  /// In en, this message translates to:
  /// **'Version checker'**
  String get catalogVersionChecker;

  /// No description provided for @catalogVersionCheckerWithVersion.
  ///
  /// In en, this message translates to:
  /// **'Version checker ({version})'**
  String catalogVersionCheckerWithVersion(Object version);

  /// No description provided for @catalogInstallWithAppName.
  ///
  /// In en, this message translates to:
  /// **'Install with {appName}'**
  String catalogInstallWithAppName(Object appName);

  /// No description provided for @catalogMirror.
  ///
  /// In en, this message translates to:
  /// **'Mirror'**
  String get catalogMirror;

  /// No description provided for @app_action_buttonsYouMustEnableAllowReporting.
  ///
  /// In en, this message translates to:
  /// **'You must enable \'Allow Crash Reporting\' in Settings to report bugs.\nThis icon may be hidden on the Settings page.'**
  String get app_action_buttonsYouMustEnableAllowReporting;

  /// No description provided for @app_action_buttonsContinuingWillSendA.
  ///
  /// In en, this message translates to:
  /// **'Continuing will send a bug report. You will be able to enter additional details about the issue on the next page.'**
  String get app_action_buttonsContinuingWillSendA;

  /// No description provided for @app_action_buttonsIWantToReportA.
  ///
  /// In en, this message translates to:
  /// **'I want to report a {appName} bug'**
  String app_action_buttonsIWantToReportA(Object appName);

  /// No description provided for @app_action_buttonsSwitchToSidebarLayout.
  ///
  /// In en, this message translates to:
  /// **'Switch to sidebar layout'**
  String get app_action_buttonsSwitchToSidebarLayout;

  /// No description provided for @app_action_buttonsSwitchToTopToolbarLayout.
  ///
  /// In en, this message translates to:
  /// **'Switch to top toolbar layout'**
  String get app_action_buttonsSwitchToTopToolbarLayout;

  /// No description provided for @app_action_buttonsWhenEnabledModifyingA.
  ///
  /// In en, this message translates to:
  /// **'When enabled, modifying a mod\'s rules.csv will\nreload in-game rules as long as dev mode is enabled.'**
  String get app_action_buttonsWhenEnabledModifyingA;

  /// No description provided for @app_action_buttonsRulesHotReloadIs.
  ///
  /// In en, this message translates to:
  /// **'\n\nrules.csv hot reload is {state}.'**
  String app_action_buttonsRulesHotReloadIs(Object state);

  /// No description provided for @app_action_buttonsClickTo.
  ///
  /// In en, this message translates to:
  /// **'\nClick to {action}.'**
  String app_action_buttonsClickTo(Object action);

  /// No description provided for @app_action_buttonsGameDetection.
  ///
  /// In en, this message translates to:
  /// **'Game Detection'**
  String get app_action_buttonsGameDetection;

  /// No description provided for @app_action_buttonsRunning.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get app_action_buttonsRunning;

  /// No description provided for @app_action_buttonsNotRunning.
  ///
  /// In en, this message translates to:
  /// **'Not running'**
  String get app_action_buttonsNotRunning;

  /// No description provided for @app_action_buttonsMatchedBy.
  ///
  /// In en, this message translates to:
  /// **'Matched by'**
  String get app_action_buttonsMatchedBy;

  /// No description provided for @app_action_buttonsDetectors.
  ///
  /// In en, this message translates to:
  /// **'Detectors'**
  String get app_action_buttonsDetectors;

  /// No description provided for @app_action_buttonsCheckDuration.
  ///
  /// In en, this message translates to:
  /// **'Check Duration'**
  String get app_action_buttonsCheckDuration;

  /// No description provided for @app_action_buttonsPeriod.
  ///
  /// In en, this message translates to:
  /// **'Period'**
  String get app_action_buttonsPeriod;

  /// No description provided for @app_action_buttonsErrors.
  ///
  /// In en, this message translates to:
  /// **'Errors'**
  String get app_action_buttonsErrors;

  /// No description provided for @app_sidebarExpandSidebar.
  ///
  /// In en, this message translates to:
  /// **'Expand sidebar'**
  String get app_sidebarExpandSidebar;

  /// No description provided for @app_sidebarCollapseSidebar.
  ///
  /// In en, this message translates to:
  /// **'Collapse sidebar'**
  String get app_sidebarCollapseSidebar;

  /// No description provided for @app_sidebarSwitchToTopToolbar.
  ///
  /// In en, this message translates to:
  /// **'Switch to top toolbar'**
  String get app_sidebarSwitchToTopToolbar;

  /// No description provided for @app_right_toolbarUnableToFindOr.
  ///
  /// In en, this message translates to:
  /// **'Unable to find or modify file(s).'**
  String get app_right_toolbarUnableToFindOr;

  /// No description provided for @app_right_toolbarRightClickTriosExe.
  ///
  /// In en, this message translates to:
  /// **'Right-click TriOS.exe and select \'Run as Administrator\'.'**
  String get app_right_toolbarRightClickTriosExe;

  /// No description provided for @app_right_toolbarEnsureTheyExist.
  ///
  /// In en, this message translates to:
  /// **'\nEnsure that they exist and are not read-only.\n'**
  String get app_right_toolbarEnsureTheyExist;

  /// No description provided for @app_right_toolbarTriosMayNotBeAble.
  ///
  /// In en, this message translates to:
  /// **'\nTriOS may not be able to modify game files, otherwise.\n'**
  String get app_right_toolbarTriosMayNotBeAble;

  /// No description provided for @app_right_toolbarUnableToEditFile.
  ///
  /// In en, this message translates to:
  /// **'❌ Unable to edit {description}.\n    ({path}).'**
  String app_right_toolbarUnableToEditFile(Object description, Object path);

  /// No description provided for @app_right_toolbarUnknownPath.
  ///
  /// In en, this message translates to:
  /// **'unknown path'**
  String get app_right_toolbarUnknownPath;

  /// No description provided for @warningTitle.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warningTitle;

  /// No description provided for @app_right_toolbarMustRunAsAdmin.
  ///
  /// In en, this message translates to:
  /// **'Must Run as Admin'**
  String get app_right_toolbarMustRunAsAdmin;

  /// No description provided for @app_right_toolbarRunningAsAdministratorNdrag.
  ///
  /// In en, this message translates to:
  /// **'Running as Administrator.\nDrag\'n\'drop will not work due to Windows security limits.'**
  String get app_right_toolbarRunningAsAdministratorNdrag;

  /// No description provided for @app_right_toolbarTriosLikeSmolBefore.
  ///
  /// In en, this message translates to:
  /// **'TriOS, like SMOL before it, is a hobby that I do because I enjoy it, and because I enjoy giving to Starsector.'**
  String get app_right_toolbarTriosLikeSmolBefore;

  /// No description provided for @app_right_toolbarNtheyReTheResult.
  ///
  /// In en, this message translates to:
  /// **'\nThey\'re the result of many hundreds of hours of coding, and I hope they have been useful (and even enjoyable) for you.'**
  String get app_right_toolbarNtheyReTheResult;

  /// No description provided for @app_right_toolbarNifYouFeelLike.
  ///
  /// In en, this message translates to:
  /// **'\nIf you feel like donating, thank you. If you can\'t donate but wish you were rich enough to just give money away, thank you anyway :)'**
  String get app_right_toolbarNifYouFeelLike;

  /// No description provided for @app_right_toolbarNtakeCareOfYourself.
  ///
  /// In en, this message translates to:
  /// **'\nTake care of yourself,'**
  String get app_right_toolbarNtakeCareOfYourself;

  /// No description provided for @activityIconDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get activityIconDownloading;

  /// No description provided for @activityIconInstalling.
  ///
  /// In en, this message translates to:
  /// **'Installing...'**
  String get activityIconInstalling;

  /// No description provided for @activityIconModInstalled.
  ///
  /// In en, this message translates to:
  /// **'Mod installed'**
  String get activityIconModInstalled;

  /// No description provided for @activityIconModsInstalled.
  ///
  /// In en, this message translates to:
  /// **'Mods installed'**
  String get activityIconModsInstalled;

  /// No description provided for @nav_reorder_menuThisRestoresTheDefault.
  ///
  /// In en, this message translates to:
  /// **'This restores the default order of the navigation icons.'**
  String get nav_reorder_menuThisRestoresTheDefault;

  /// No description provided for @settingsGroupStarsector.
  ///
  /// In en, this message translates to:
  /// **'Starsector'**
  String get settingsGroupStarsector;

  /// No description provided for @settingsGroupTriosUpdates.
  ///
  /// In en, this message translates to:
  /// **'{appName} Updates'**
  String settingsGroupTriosUpdates(String appName);

  /// No description provided for @settingsSelfUpdateUnavailableMac.
  ///
  /// In en, this message translates to:
  /// **'Self-update is not available on macOS. Please download new versions from the Releases page.'**
  String get settingsSelfUpdateUnavailableMac;

  /// No description provided for @settingsPrereleasesTooltip.
  ///
  /// In en, this message translates to:
  /// **'Play with fire.\nEnabling this will include Previews when checking for updates.\nPreviews are *usually* stable, but no guarantees. They contain bugfixes and often add a feature or two that may not be totally finished.'**
  String get settingsPrereleasesTooltip;

  /// No description provided for @settingsEnableTriosPreviewReleases.
  ///
  /// In en, this message translates to:
  /// **'Enable {appName} preview releases'**
  String settingsEnableTriosPreviewReleases(String appName);

  /// No description provided for @settingsInterface.
  ///
  /// In en, this message translates to:
  /// **'Interface'**
  String get settingsInterface;

  /// No description provided for @settingsWindowScaleTooltip.
  ///
  /// In en, this message translates to:
  /// **'Makes the UI larger or smaller.\nMin 25%, max 300%.'**
  String get settingsWindowScaleTooltip;

  /// No description provided for @settingsTriosScale.
  ///
  /// In en, this message translates to:
  /// **'{appName} scale'**
  String settingsTriosScale(String appName);

  /// No description provided for @settingsScaleCautionTooltip.
  ///
  /// In en, this message translates to:
  /// **'Make small changes at a time.\nTri-Tachyon is not responsible if you set it to 300% and it\'s so big you can\'t get to the setting to fix it.'**
  String get settingsScaleCautionTooltip;

  /// No description provided for @settingsModOrganization.
  ///
  /// In en, this message translates to:
  /// **'Mod Organization'**
  String get settingsModOrganization;

  /// No description provided for @settingsFolderNamingTooltip.
  ///
  /// In en, this message translates to:
  /// **'If enabled, TriOS will always add the version number to the folder name when installing a mod.\nFor example; LazyLib-1.8b, LazyLib-1.8, LazyLib-1.7.\n\nIf disabled, the latest mod won\'t change folder name, even when you update the mod.\nOlder versions of a mod will still include the version number in order to tell them apart.\nFor example; LazyLib, LazyLib-1.8, LazyLib-1.7.'**
  String get settingsFolderNamingTooltip;

  /// No description provided for @settingsManualNamingTooltip.
  ///
  /// In en, this message translates to:
  /// **'Manual mode. TriOS will not rename folders.\nThis may result in TriOS overwriting mods when updating or installing new versions, if the folder already exists.\nFor example, if you have folder `LazyLib` and install a new version where the folder name is also `LazyLib`, the older one will be overwritten.\n\nTODO: clean up this UI and use a dropdown or something :)'**
  String get settingsManualNamingTooltip;

  /// No description provided for @settingsOldModVersions.
  ///
  /// In en, this message translates to:
  /// **'Old mod versions'**
  String get settingsOldModVersions;

  /// No description provided for @settingsKeepOnlyOneModVersion.
  ///
  /// In en, this message translates to:
  /// **'Keep only one mod version'**
  String get settingsKeepOnlyOneModVersion;

  /// No description provided for @settingsKeepAllModVersions.
  ///
  /// In en, this message translates to:
  /// **'Keep all mod versions'**
  String get settingsKeepAllModVersions;

  /// No description provided for @settingsKeepVersionsNeverRemove.
  ///
  /// In en, this message translates to:
  /// **'TriOS will never automatically remove mod versions.'**
  String get settingsKeepVersionsNeverRemove;

  /// No description provided for @settingsKeepVersionsReplaceMod.
  ///
  /// In en, this message translates to:
  /// **'Installing or updating a mod will replace the mod.'**
  String get settingsKeepVersionsReplaceMod;

  /// No description provided for @settingsKeepVersionsKeepLastN.
  ///
  /// In en, this message translates to:
  /// **'Installing or updating a mod will remove all but the last {count} highest versions.'**
  String settingsKeepVersionsKeepLastN(num count);

  /// No description provided for @settingsRemoveAllButNewest.
  ///
  /// In en, this message translates to:
  /// **'Remove all but the newest version of each mod.'**
  String get settingsRemoveAllButNewest;

  /// No description provided for @settingsRemoveAllButNewestCount.
  ///
  /// In en, this message translates to:
  /// **'Remove all but the newest {count} versions of each mod.'**
  String settingsRemoveAllButNewestCount(num count);

  /// No description provided for @settingsCleanUpPrompt.
  ///
  /// In en, this message translates to:
  /// **'Prompts for confirmation before deleting anything.'**
  String get settingsCleanUpPrompt;

  /// No description provided for @settingsConcurrentExtractionsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Number of mod archives to extract at the same time during batch installation.\nHigher values install faster but use more CPU and disk I/O.'**
  String get settingsConcurrentExtractionsTooltip;

  /// No description provided for @settingsCompanionMod.
  ///
  /// In en, this message translates to:
  /// **'Companion Mod'**
  String get settingsCompanionMod;

  /// No description provided for @settingsCompanionModDescription.
  ///
  /// In en, this message translates to:
  /// **'The {appName} Companion Mod is required to replace portraits without touching the actual mods (see Portraits tab).\nIt does nothing else and has effectively no impact on loading or performance.'**
  String settingsCompanionModDescription(String appName);

  /// No description provided for @settingsCompanionModNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'The Companion Mod is not installed.'**
  String get settingsCompanionModNotInstalled;

  /// No description provided for @settingsCompanionModSetUpCorrectly.
  ///
  /// In en, this message translates to:
  /// **'The Companion Mod is set up correctly.'**
  String get settingsCompanionModSetUpCorrectly;

  /// No description provided for @settingsCompanionModNotEnabled.
  ///
  /// In en, this message translates to:
  /// **'The Companion Mod is installed but not enabled.'**
  String get settingsCompanionModNotEnabled;

  /// No description provided for @settingsReinstallCompanionTooltip.
  ///
  /// In en, this message translates to:
  /// **'If the Companion Mod already exists, it\'ll be replaced with a fresh version.\nPortrait replacements that show in {appName} will NOT be lost.'**
  String settingsReinstallCompanionTooltip(String appName);

  /// No description provided for @settingsReinstallCompanionMod.
  ///
  /// In en, this message translates to:
  /// **'Reinstall Companion Mod'**
  String get settingsReinstallCompanionMod;

  /// No description provided for @settingsInstallCompanionMod.
  ///
  /// In en, this message translates to:
  /// **'Install Companion Mod'**
  String get settingsInstallCompanionMod;

  /// No description provided for @settingsOpenCompanionModFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Companion Mod Folder'**
  String get settingsOpenCompanionModFolder;

  /// No description provided for @settingsMisc.
  ///
  /// In en, this message translates to:
  /// **'Misc'**
  String get settingsMisc;

  /// No description provided for @settingsRescanTooltip.
  ///
  /// In en, this message translates to:
  /// **'This sets how often we check if there are new or changed mods in your folder.\nA shorter time means more frequent checks.\nDoes not scan when {appName} is in the background.'**
  String settingsRescanTooltip(String appName);

  /// No description provided for @settingsRescanEvery.
  ///
  /// In en, this message translates to:
  /// **'Rescan mod folder every: {count} seconds'**
  String settingsRescanEvery(num count);

  /// No description provided for @settingsNotificationDuration.
  ///
  /// In en, this message translates to:
  /// **'Notification duration: {count} seconds'**
  String settingsNotificationDuration(num count);

  /// No description provided for @settingsMaxHttpRequests.
  ///
  /// In en, this message translates to:
  /// **'Max HTTP requests at once: {count}'**
  String settingsMaxHttpRequests(num count);

  /// No description provided for @settingsErrorReportingTooltip.
  ///
  /// In en, this message translates to:
  /// **'This allows {appName} to send crash/error reports to get fixed.\nNo personal/identifiable data is sent.\nWill soft-restart {appName} to apply.'**
  String settingsErrorReportingTooltip(String appName);

  /// No description provided for @settingsRestartToApply.
  ///
  /// In en, this message translates to:
  /// **'{appName} must be restarted to apply this change.'**
  String settingsRestartToApply(String appName);

  /// No description provided for @settingsErrorReportingDialogContent.
  ///
  /// In en, this message translates to:
  /// **'If allowed, {appName} uses Sentry.io to collect error reports.\nIf not allowed, the Sentry SDK will be completely disabled; it will not be initialized on startup, which is why the soft restart is required to toggle this setting and why \'Report A Bug\' is not available if it is disabled.\n\nIf error reporting is enabled, care is taken to avoid sending any personal/identifiable data such as IP addresses, usernames (even in file paths), device names, location, etc.\nMod names, device info (OS, CPU count, RAM, etc) is sent.'**
  String settingsErrorReportingDialogContent(String appName);

  /// No description provided for @settingsLaunchPrecheckTooltip.
  ///
  /// In en, this message translates to:
  /// **'Whether to check for mod dependencies and prevent launching if they aren\'t met.\nDisable if {appName} is getting them wrong, or you\'d just like to use vanilla dependency check behavior.'**
  String settingsLaunchPrecheckTooltip(String appName);

  /// No description provided for @settingsCheckGameRunningTooltip.
  ///
  /// In en, this message translates to:
  /// **'Whether to check if the game is running and lock parts of {appName}.\nDisable if {appName} is detecting incorrectly.'**
  String settingsCheckGameRunningTooltip(String appName);

  /// No description provided for @settingsGameRunningCheckError.
  ///
  /// In en, this message translates to:
  /// **'Error checking if game is running!'**
  String get settingsGameRunningCheckError;

  /// No description provided for @settingsAccessibilitySemanticsTooltip.
  ///
  /// In en, this message translates to:
  /// **'The Flutter framework (what {appName} uses) has a bug that causes freezes related to text fields on some Linux distros.\nDisabling accessibility semantics fixes those freezes.\nYou may need to fully restart {appName} to apply the changes.'**
  String settingsAccessibilitySemanticsTooltip(String appName);

  /// No description provided for @settingsAiFeatures.
  ///
  /// In en, this message translates to:
  /// **'AI Features'**
  String get settingsAiFeatures;

  /// No description provided for @settingsDisableAiTooltip.
  ///
  /// In en, this message translates to:
  /// **'When checked, {appName} never shows anything AI-related:\n- Generated mod summaries on the Catalog page'**
  String settingsDisableAiTooltip(String appName);

  /// No description provided for @settingsJunkDrawerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Junk drawer of developer actions and info'**
  String get settingsJunkDrawerSubtitle;

  /// No description provided for @settingsAlreadyLatestVersion.
  ///
  /// In en, this message translates to:
  /// **'You are already on the latest version (current: {current}, found: {found}{prerelease})'**
  String settingsAlreadyLatestVersion(
    String current,
    String found,
    String prerelease,
  );

  /// No description provided for @settingsDeepLinkTooltip.
  ///
  /// In en, this message translates to:
  /// **'Registers or unregisters {appName} as the handler for \'Install with {appName}\' links,\nwhich lets you install mods with one click from websites.'**
  String settingsDeepLinkTooltip(String appName);

  /// No description provided for @settingsDisableOpenWithTrios.
  ///
  /// In en, this message translates to:
  /// **'Disable \'Open with TriOS\''**
  String get settingsDisableOpenWithTrios;

  /// No description provided for @settingsEnableOpenWithTrios.
  ///
  /// In en, this message translates to:
  /// **'Enable \'Open with TriOS\''**
  String get settingsEnableOpenWithTrios;

  /// No description provided for @settingsYourThemes.
  ///
  /// In en, this message translates to:
  /// **'Your themes'**
  String get settingsYourThemes;

  /// No description provided for @settingsBuiltIn.
  ///
  /// In en, this message translates to:
  /// **'Built-in'**
  String get settingsBuiltIn;

  /// No description provided for @settingsThemeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Change up the colors.\nNote: only the default theme (StarsectorTriOSTheme) is regularly tested.'**
  String get settingsThemeTooltip;

  /// No description provided for @settingsCopyThemeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy theme as JSON\nPuts the selected theme on the clipboard, ready to paste into your own themes file.'**
  String get settingsCopyThemeTooltip;

  /// No description provided for @settingsThemeCopiedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'\"{name}\" copied. Paste it into your themes file.'**
  String settingsThemeCopiedSnackbar(String name);

  /// No description provided for @settingsOpenThemesFileTooltip.
  ///
  /// In en, this message translates to:
  /// **'Open my themes file\n{path}'**
  String settingsOpenThemesFileTooltip(String path);

  /// No description provided for @settingsFontTooltip.
  ///
  /// In en, this message translates to:
  /// **'The font all of TriOS\'s text is drawn in.\nSystem uses whatever font your operating system provides.'**
  String get settingsFontTooltip;

  /// No description provided for @debugSectionShowDiagnosticsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Shows internal diagnostics in the toolbar, including\nprocess detection status and cache statistics.'**
  String get debugSectionShowDiagnosticsTooltip;

  /// No description provided for @debugSectionEngineTrailsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Draws the trail of smoke or glow behind a ship\'s lit engines\nin the ship viewer. Still being worked on.'**
  String get debugSectionEngineTrailsTooltip;

  /// No description provided for @debugSectionRestoreWarningTooltip.
  ///
  /// In en, this message translates to:
  /// **'CAUTION: May mess up TriOS\'s settings (not mods).\nGoing back in time is not tested. Recommend backing up your settings first (click Log File button to open folder).'**
  String get debugSectionRestoreWarningTooltip;

  /// No description provided for @debugSectionSelectARelease.
  ///
  /// In en, this message translates to:
  /// **'← Select a release'**
  String get debugSectionSelectARelease;

  /// No description provided for @debugSectionConsoleLogLevel.
  ///
  /// In en, this message translates to:
  /// **'← Select {appName} console logging level (resets at restart)'**
  String debugSectionConsoleLogLevel(String appName);

  /// No description provided for @debugSectionFileLogLevel.
  ///
  /// In en, this message translates to:
  /// **'← Select {appName} file logging level (resets at restart)'**
  String debugSectionFileLogLevel(String appName);

  /// No description provided for @debugSectionResetCategoriesDialog.
  ///
  /// In en, this message translates to:
  /// **'This will reset categories to defaults, removing any user-created categories.\nMod assignments to default categories will be kept.'**
  String get debugSectionResetCategoriesDialog;

  /// No description provided for @debugSectionTestError.
  ///
  /// In en, this message translates to:
  /// **'This is a test error'**
  String get debugSectionTestError;

  /// No description provided for @debugSectionDetectedFiles.
  ///
  /// In en, this message translates to:
  /// **'Detected ({count}):'**
  String debugSectionDetectedFiles(num count);

  /// No description provided for @debugSectionCacheAgeHours.
  ///
  /// In en, this message translates to:
  /// **'{hours}h ago'**
  String debugSectionCacheAgeHours(num hours);

  /// No description provided for @debugSectionCacheAgeMinutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m ago'**
  String debugSectionCacheAgeMinutes(num minutes);

  /// No description provided for @debugSectionCachedWithCount.
  ///
  /// In en, this message translates to:
  /// **'Cached {age}, {count} entries'**
  String debugSectionCachedWithCount(String age, num count);

  /// No description provided for @debugSectionCached.
  ///
  /// In en, this message translates to:
  /// **'Cached {age}'**
  String debugSectionCached(String age);

  /// No description provided for @debugSectionNotCached.
  ///
  /// In en, this message translates to:
  /// **'Not cached'**
  String get debugSectionNotCached;

  /// No description provided for @debugSectionForumDataRefreshed.
  ///
  /// In en, this message translates to:
  /// **'Forum data refreshed.'**
  String get debugSectionForumDataRefreshed;

  /// No description provided for @debugSectionForumUpdated.
  ///
  /// In en, this message translates to:
  /// **'Updated: {time}'**
  String debugSectionForumUpdated(String time);

  /// No description provided for @debugSectionForumTotalEntries.
  ///
  /// In en, this message translates to:
  /// **'Total entries: {count}'**
  String debugSectionForumTotalEntries(num count);

  /// No description provided for @debugSectionForumMatchedCount.
  ///
  /// In en, this message translates to:
  /// **'Matched to ModRecords: {count}'**
  String debugSectionForumMatchedCount(num count);

  /// No description provided for @debugSectionForumEntryLine.
  ///
  /// In en, this message translates to:
  /// **'#{topicId}  {title}  ({views} views, {replies} replies)'**
  String debugSectionForumEntryLine(
    String topicId,
    String title,
    num views,
    num replies,
  );

  /// No description provided for @debugSectionNotCollectedNote.
  ///
  /// In en, this message translates to:
  /// **'Note: the below information is not collected by TriOS.\nThis is here in case TriOS is misbehaving, to hopefully see if anything looks wrong.'**
  String get debugSectionNotCollectedNote;

  /// No description provided for @debugSectionCurrentDirectoryEnv.
  ///
  /// In en, this message translates to:
  /// **'Current directory (env variable): {path}'**
  String debugSectionCurrentDirectoryEnv(String path);

  /// No description provided for @debugSectionCurrentDirectoryExecutable.
  ///
  /// In en, this message translates to:
  /// **'Current directory based on executable: {path}'**
  String debugSectionCurrentDirectoryExecutable(String path);

  /// No description provided for @debugSectionLocaleIntl.
  ///
  /// In en, this message translates to:
  /// **'Locale (using Intl package): {locale}'**
  String debugSectionLocaleIntl(String locale);

  /// No description provided for @debugSectionRamUsage.
  ///
  /// In en, this message translates to:
  /// **'RAM usage: {amount}'**
  String debugSectionRamUsage(String amount);

  /// No description provided for @debugSectionMaxRamUsage.
  ///
  /// In en, this message translates to:
  /// **'Max RAM usage: {amount}'**
  String debugSectionMaxRamUsage(String amount);

  /// No description provided for @debugSectionTriosVersion.
  ///
  /// In en, this message translates to:
  /// **'TriOS version: {version}'**
  String debugSectionTriosVersion(String version);

  /// No description provided for @debugSectionDartVersion.
  ///
  /// In en, this message translates to:
  /// **'Dart version: {version}'**
  String debugSectionDartVersion(String version);

  /// No description provided for @debugSectionOs.
  ///
  /// In en, this message translates to:
  /// **'OS: {os} {version}'**
  String debugSectionOs(String os, String version);

  /// No description provided for @debugSectionProcessors.
  ///
  /// In en, this message translates to:
  /// **'Processors: {count}'**
  String debugSectionProcessors(num count);

  /// No description provided for @debugSectionFilterByVariantId.
  ///
  /// In en, this message translates to:
  /// **'Filter by variant id'**
  String get debugSectionFilterByVariantId;

  /// No description provided for @debugSectionNoSearch.
  ///
  /// In en, this message translates to:
  /// **'(no search)'**
  String get debugSectionNoSearch;

  /// No description provided for @debugSectionIdNotFound.
  ///
  /// In en, this message translates to:
  /// **'(id not found)'**
  String get debugSectionIdNotFound;

  /// No description provided for @debugSectionAllMods.
  ///
  /// In en, this message translates to:
  /// **'ALL Mods'**
  String get debugSectionAllMods;

  /// No description provided for @navLabelDash.
  ///
  /// In en, this message translates to:
  /// **'Dash'**
  String get navLabelDash;

  /// No description provided for @navLabelMods.
  ///
  /// In en, this message translates to:
  /// **'Mods'**
  String get navLabelMods;

  /// No description provided for @navLabelProfiles.
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get navLabelProfiles;

  /// No description provided for @navLabelCatalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get navLabelCatalog;

  /// No description provided for @navLabelLogs.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get navLabelLogs;

  /// No description provided for @navLabelVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimator'**
  String get navLabelVramEstimator;

  /// No description provided for @navLabelCodex.
  ///
  /// In en, this message translates to:
  /// **'Codex'**
  String get navLabelCodex;

  /// No description provided for @navLabelShips.
  ///
  /// In en, this message translates to:
  /// **'Ships'**
  String get navLabelShips;

  /// No description provided for @navLabelWeapons.
  ///
  /// In en, this message translates to:
  /// **'Weapons'**
  String get navLabelWeapons;

  /// No description provided for @navLabelHullmods.
  ///
  /// In en, this message translates to:
  /// **'Hullmods'**
  String get navLabelHullmods;

  /// No description provided for @navLabelFactions.
  ///
  /// In en, this message translates to:
  /// **'Factions'**
  String get navLabelFactions;

  /// No description provided for @navLabelPortraits.
  ///
  /// In en, this message translates to:
  /// **'Portraits'**
  String get navLabelPortraits;

  /// No description provided for @navLabelSector.
  ///
  /// In en, this message translates to:
  /// **'Sector'**
  String get navLabelSector;

  /// No description provided for @navLabelTips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get navLabelTips;

  /// No description provided for @navLabelSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navLabelSettings;

  /// No description provided for @navTooltipDashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get navTooltipDashboard;

  /// No description provided for @navTooltipModManager.
  ///
  /// In en, this message translates to:
  /// **'Mod Manager'**
  String get navTooltipModManager;

  /// No description provided for @navTooltipModProfiles.
  ///
  /// In en, this message translates to:
  /// **'Mod Profiles'**
  String get navTooltipModProfiles;

  /// No description provided for @navTooltipModCatalog.
  ///
  /// In en, this message translates to:
  /// **'Mod Catalog'**
  String get navTooltipModCatalog;

  /// No description provided for @navTooltipLogViewer.
  ///
  /// In en, this message translates to:
  /// **'Log Viewer'**
  String get navTooltipLogViewer;

  /// No description provided for @navTooltipVramEstimator.
  ///
  /// In en, this message translates to:
  /// **'VRAM Estimator'**
  String get navTooltipVramEstimator;

  /// No description provided for @navTooltipCodex.
  ///
  /// In en, this message translates to:
  /// **'Codex'**
  String get navTooltipCodex;

  /// No description provided for @navTooltipShipViewer.
  ///
  /// In en, this message translates to:
  /// **'Ship Viewer'**
  String get navTooltipShipViewer;

  /// No description provided for @navTooltipWeaponViewer.
  ///
  /// In en, this message translates to:
  /// **'Weapon Viewer'**
  String get navTooltipWeaponViewer;

  /// No description provided for @navTooltipHullmodViewer.
  ///
  /// In en, this message translates to:
  /// **'Hullmod Viewer'**
  String get navTooltipHullmodViewer;

  /// No description provided for @navTooltipFactionViewer.
  ///
  /// In en, this message translates to:
  /// **'Faction Viewer'**
  String get navTooltipFactionViewer;

  /// No description provided for @navTooltipPortraitViewer.
  ///
  /// In en, this message translates to:
  /// **'Portrait Viewer & Replacer'**
  String get navTooltipPortraitViewer;

  /// No description provided for @navTooltipSectorMap.
  ///
  /// In en, this message translates to:
  /// **'Sector Map'**
  String get navTooltipSectorMap;

  /// No description provided for @navTooltipTipsManager.
  ///
  /// In en, this message translates to:
  /// **'Tips Manager'**
  String get navTooltipTipsManager;

  /// No description provided for @navTooltipSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navTooltipSettings;

  /// No description provided for @downloadStatusQueued.
  ///
  /// In en, this message translates to:
  /// **'Queued'**
  String get downloadStatusQueued;

  /// No description provided for @downloadStatusRetrievingFileInfo.
  ///
  /// In en, this message translates to:
  /// **'Retrieving File Info'**
  String get downloadStatusRetrievingFileInfo;

  /// No description provided for @downloadStatusDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get downloadStatusDownloading;

  /// No description provided for @downloadStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get downloadStatusCompleted;

  /// No description provided for @downloadStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get downloadStatusFailed;

  /// No description provided for @downloadStatusPaused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get downloadStatusPaused;

  /// No description provided for @downloadStatusCanceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get downloadStatusCanceled;

  /// No description provided for @toastGroupAllModsInstalled.
  ///
  /// In en, this message translates to:
  /// **'All mods installed'**
  String get toastGroupAllModsInstalled;

  /// No description provided for @toastGroupInstallingMods.
  ///
  /// In en, this message translates to:
  /// **'Installing mods'**
  String get toastGroupInstallingMods;

  /// No description provided for @toastGroupDownloadingMods.
  ///
  /// In en, this message translates to:
  /// **'Downloading mods'**
  String get toastGroupDownloadingMods;

  /// No description provided for @toastGroupInstalledOne.
  ///
  /// In en, this message translates to:
  /// **'Installed {count} mod'**
  String toastGroupInstalledOne(num count);

  /// No description provided for @toastGroupInstalledMany.
  ///
  /// In en, this message translates to:
  /// **'Installed {count} mods'**
  String toastGroupInstalledMany(num count);

  /// No description provided for @toastGroupInstallingOne.
  ///
  /// In en, this message translates to:
  /// **'Installing {count} mod'**
  String toastGroupInstallingOne(num count);

  /// No description provided for @toastGroupInstallingMany.
  ///
  /// In en, this message translates to:
  /// **'Installing {count} mods'**
  String toastGroupInstallingMany(num count);

  /// No description provided for @toastGroupDownloadingOne.
  ///
  /// In en, this message translates to:
  /// **'Downloading {count} mod'**
  String toastGroupDownloadingOne(num count);

  /// No description provided for @toastGroupDownloadingMany.
  ///
  /// In en, this message translates to:
  /// **'Downloading {count} mods'**
  String toastGroupDownloadingMany(num count);

  /// No description provided for @toastGroupSuccessFailed.
  ///
  /// In en, this message translates to:
  /// **'{successCount} successful, {failedCount} failed'**
  String toastGroupSuccessFailed(num successCount, num failedCount);

  /// No description provided for @toastGroupComplete.
  ///
  /// In en, this message translates to:
  /// **'{completed} of {total} complete'**
  String toastGroupComplete(num completed, num total);

  /// No description provided for @toastGroupMoreCount.
  ///
  /// In en, this message translates to:
  /// **'+{count} more'**
  String toastGroupMoreCount(num count);

  /// No description provided for @toastGroupRemoveFromGroup.
  ///
  /// In en, this message translates to:
  /// **'Remove from group'**
  String get toastGroupRemoveFromGroup;

  /// No description provided for @commonInstalling.
  ///
  /// In en, this message translates to:
  /// **'Installing...'**
  String get commonInstalling;

  /// No description provided for @commonDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get commonDownloading;

  /// No description provided for @commonCollapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse'**
  String get commonCollapse;

  /// No description provided for @commonExpand.
  ///
  /// In en, this message translates to:
  /// **'Expand'**
  String get commonExpand;

  /// No description provided for @toastInstallationFailed.
  ///
  /// In en, this message translates to:
  /// **'Installation failed'**
  String get toastInstallationFailed;

  /// No description provided for @toastDownloadedArchiveSize.
  ///
  /// In en, this message translates to:
  /// **'Downloaded archive size'**
  String get toastDownloadedArchiveSize;

  /// No description provided for @toastInstalledSizeOnDisk.
  ///
  /// In en, this message translates to:
  /// **'Installed size on disk'**
  String get toastInstalledSizeOnDisk;

  /// No description provided for @toastPreviouslyEnabled.
  ///
  /// In en, this message translates to:
  /// **'Previously enabled: {version}'**
  String toastPreviouslyEnabled(String version);

  /// No description provided for @toastUpdatedToVersion.
  ///
  /// In en, this message translates to:
  /// **'{appName} was updated to {version}!'**
  String toastUpdatedToVersion(String appName, String version);

  /// No description provided for @toastVersionNowAvailable.
  ///
  /// In en, this message translates to:
  /// **'{version} is now available!'**
  String toastVersionNowAvailable(String version);

  /// No description provided for @updateToVersion.
  ///
  /// In en, this message translates to:
  /// **'Update to {version}'**
  String updateToVersion(String version);

  /// No description provided for @aprilFoolsActuallyJoke.
  ///
  /// In en, this message translates to:
  /// **'Ok, it\'s actually an April Fool\'s joke. It\'s completely offline and harmless, promise.'**
  String get aprilFoolsActuallyJoke;

  /// No description provided for @aprilFoolsChatbotAvailable.
  ///
  /// In en, this message translates to:
  /// **'New! {chatbotName} is now available in TriOS.'**
  String aprilFoolsChatbotAvailable(String chatbotName);

  /// No description provided for @contextMenuOpenForumPage.
  ///
  /// In en, this message translates to:
  /// **'Open Forum Page'**
  String get contextMenuOpenForumPage;

  /// No description provided for @contextMenuOpenNexusPage.
  ///
  /// In en, this message translates to:
  /// **'Open Nexus Page'**
  String get contextMenuOpenNexusPage;

  /// No description provided for @contextMenuOpenForumPageUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Open Forum Page (unavailable)'**
  String get contextMenuOpenForumPageUnavailable;

  /// No description provided for @contextMenuNoVersionCheckerForumId.
  ///
  /// In en, this message translates to:
  /// **'Mod has not set up Version Checker, or it does not contain a forum thread id.'**
  String get contextMenuNoVersionCheckerForumId;

  /// No description provided for @contextMenuCopyInstallLink.
  ///
  /// In en, this message translates to:
  /// **'Copy install link'**
  String get contextMenuCopyInstallLink;

  /// No description provided for @contextMenuCopyInstallLinkUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Copy install link (unavailable)'**
  String get contextMenuCopyInstallLinkUnavailable;

  /// No description provided for @contextMenuNoInstallLinkSource.
  ///
  /// In en, this message translates to:
  /// **'This mod has no Version Checker URL or direct download link to build an install link from.'**
  String get contextMenuNoInstallLinkSource;

  /// No description provided for @contextMenuRedownloadReinstall.
  ///
  /// In en, this message translates to:
  /// **'Redownload & Reinstall'**
  String get contextMenuRedownloadReinstall;

  /// No description provided for @contextMenuRedownloadUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Redownload unavailable'**
  String get contextMenuRedownloadUnavailable;

  /// No description provided for @contextMenuNoDirectDownload.
  ///
  /// In en, this message translates to:
  /// **'This mod does not support direct download. Please manually redownload/reinstall.'**
  String get contextMenuNoDirectDownload;

  /// No description provided for @contextMenuViewChangelogUnavailable.
  ///
  /// In en, this message translates to:
  /// **'View Changelog (unavailable)'**
  String get contextMenuViewChangelogUnavailable;

  /// No description provided for @contextMenuNoChangelog.
  ///
  /// In en, this message translates to:
  /// **'This mod has no changelog. It needs Version Checker with a changelog link.'**
  String get contextMenuNoChangelog;

  /// No description provided for @contextMenuMuteThisUpdate.
  ///
  /// In en, this message translates to:
  /// **'Mute this update ({version})'**
  String contextMenuMuteThisUpdate(String version);

  /// No description provided for @contextMenuUnmuteThisUpdate.
  ///
  /// In en, this message translates to:
  /// **'Unmute this update ({version})'**
  String contextMenuUnmuteThisUpdate(String version);

  /// No description provided for @deepLinkAlreadyInstalled.
  ///
  /// In en, this message translates to:
  /// **'Already installed'**
  String get deepLinkAlreadyInstalled;

  /// No description provided for @deepLinkInstallModFromLink.
  ///
  /// In en, this message translates to:
  /// **'Install Mod from Link'**
  String get deepLinkInstallModFromLink;

  /// No description provided for @deepLinkInstallModsFromLink.
  ///
  /// In en, this message translates to:
  /// **'Install Mods from Link'**
  String get deepLinkInstallModsFromLink;

  /// No description provided for @deepLinkDependencies.
  ///
  /// In en, this message translates to:
  /// **'Dependencies ({count})'**
  String deepLinkDependencies(num count);

  /// No description provided for @deepLinkNoModsSelected.
  ///
  /// In en, this message translates to:
  /// **'No mods selected'**
  String get deepLinkNoModsSelected;

  /// No description provided for @deepLinkDownloadAndInstall.
  ///
  /// In en, this message translates to:
  /// **'Download & Install ({count})'**
  String deepLinkDownloadAndInstall(num count);

  /// No description provided for @deepLinkRequiresVersion.
  ///
  /// In en, this message translates to:
  /// **'Requires ≥ {version}'**
  String deepLinkRequiresVersion(String version);

  /// No description provided for @deepLinkVersionFile.
  ///
  /// In en, this message translates to:
  /// **'Version file'**
  String get deepLinkVersionFile;

  /// No description provided for @deepLinkCannotInstallWhileGameRunning.
  ///
  /// In en, this message translates to:
  /// **'Cannot install mods while Starsector is running.'**
  String get deepLinkCannotInstallWhileGameRunning;

  /// No description provided for @deepLinkConfigureGameDirectory.
  ///
  /// In en, this message translates to:
  /// **'Please configure your Starsector game directory before installing mods via links.'**
  String get deepLinkConfigureGameDirectory;

  /// No description provided for @deepLinkVersionFileNoDownloadLink.
  ///
  /// In en, this message translates to:
  /// **'The mod\'s version file has no download link and cannot be automatically installed.'**
  String get deepLinkVersionFileNoDownloadLink;

  /// No description provided for @deepLinkInvalidDownloadUrl.
  ///
  /// In en, this message translates to:
  /// **'The mod\'s download link isn\'t a valid http/https URL.'**
  String get deepLinkInvalidDownloadUrl;

  /// No description provided for @deepLinkVersionFileFetchFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t fetch the mod\'s version file (HTTP {statusCode}).'**
  String deepLinkVersionFileFetchFailed(String statusCode);

  /// No description provided for @deepLinkVersionFileReadFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t read the mod\'s version file.'**
  String get deepLinkVersionFileReadFailed;

  /// No description provided for @dragDropWebLinkDownload.
  ///
  /// In en, this message translates to:
  /// **'Web link download'**
  String get dragDropWebLinkDownload;

  /// No description provided for @dragDropGameRunningClose.
  ///
  /// In en, this message translates to:
  /// **'Game is running. Close to install mods.'**
  String get dragDropGameRunningClose;

  /// No description provided for @activityToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get activityToday;

  /// No description provided for @activityYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get activityYesterday;

  /// No description provided for @activityClearHistoryWarning.
  ///
  /// In en, this message translates to:
  /// **'This permanently clears the installation activity history. This action cannot be undone.'**
  String get activityClearHistoryWarning;

  /// No description provided for @activityUnpinOverlay.
  ///
  /// In en, this message translates to:
  /// **'Unpin (overlay)'**
  String get activityUnpinOverlay;

  /// No description provided for @activityPinSidePanel.
  ///
  /// In en, this message translates to:
  /// **'Pin (side panel)'**
  String get activityPinSidePanel;

  /// No description provided for @activityNoActivityYet.
  ///
  /// In en, this message translates to:
  /// **'No activity yet'**
  String get activityNoActivityYet;

  /// No description provided for @activityInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get activityInProgress;

  /// No description provided for @activityScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get activityScanning;

  /// No description provided for @activityDownloadedFrom.
  ///
  /// In en, this message translates to:
  /// **'Downloaded from\n{source}'**
  String activityDownloadedFrom(String source);

  /// No description provided for @activityInstalledFromArchive.
  ///
  /// In en, this message translates to:
  /// **'Installed from archive'**
  String get activityInstalledFromArchive;

  /// No description provided for @downloadManagerFailedToInstall.
  ///
  /// In en, this message translates to:
  /// **'Failed to install {name}.'**
  String downloadManagerFailedToInstall(String name);

  /// No description provided for @downloadManagerDownloadUrl.
  ///
  /// In en, this message translates to:
  /// **'Download URL: {url}'**
  String downloadManagerDownloadUrl(String url);

  /// No description provided for @shipsEntityName.
  ///
  /// In en, this message translates to:
  /// **'Ships'**
  String get shipsEntityName;

  /// No description provided for @shipsGroupAllShips.
  ///
  /// In en, this message translates to:
  /// **'All Ships'**
  String get shipsGroupAllShips;

  /// No description provided for @shipsColumnId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get shipsColumnId;

  /// No description provided for @shipsColumnHull.
  ///
  /// In en, this message translates to:
  /// **'Hull'**
  String get shipsColumnHull;

  /// No description provided for @shipsColumnWpns.
  ///
  /// In en, this message translates to:
  /// **'Wpns'**
  String get shipsColumnWpns;

  /// No description provided for @shipsColumnBuiltInWpns.
  ///
  /// In en, this message translates to:
  /// **'Built-in Wpns'**
  String get shipsColumnBuiltInWpns;

  /// No description provided for @shipsColumnBuiltInMods.
  ///
  /// In en, this message translates to:
  /// **'Built-in Mods'**
  String get shipsColumnBuiltInMods;

  /// No description provided for @shipsColumnBuiltInWings.
  ///
  /// In en, this message translates to:
  /// **'Built-in Wings'**
  String get shipsColumnBuiltInWings;

  /// No description provided for @shipsColumnTech.
  ///
  /// In en, this message translates to:
  /// **'Tech'**
  String get shipsColumnTech;

  /// No description provided for @shipsColumnDesignation.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get shipsColumnDesignation;

  /// No description provided for @shipsColumnSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get shipsColumnSystem;

  /// No description provided for @shipsColumnDp.
  ///
  /// In en, this message translates to:
  /// **'DP'**
  String get shipsColumnDp;

  /// No description provided for @shipsColumnFleetPts.
  ///
  /// In en, this message translates to:
  /// **'Fleet Pts'**
  String get shipsColumnFleetPts;

  /// No description provided for @shipsColumnHitpoints.
  ///
  /// In en, this message translates to:
  /// **'Hitpoints'**
  String get shipsColumnHitpoints;

  /// No description provided for @shipsColumnArmor.
  ///
  /// In en, this message translates to:
  /// **'Armor'**
  String get shipsColumnArmor;

  /// No description provided for @shipsColumnMaxFlux.
  ///
  /// In en, this message translates to:
  /// **'Max Flux'**
  String get shipsColumnMaxFlux;

  /// No description provided for @shipsColumnFluxDiss.
  ///
  /// In en, this message translates to:
  /// **'Flux Diss'**
  String get shipsColumnFluxDiss;

  /// No description provided for @shipsColumnOrdnance.
  ///
  /// In en, this message translates to:
  /// **'Ordnance'**
  String get shipsColumnOrdnance;

  /// No description provided for @shipsColumnFighterBays.
  ///
  /// In en, this message translates to:
  /// **'Fighter Bays'**
  String get shipsColumnFighterBays;

  /// No description provided for @shipsColumnMaxSpeed.
  ///
  /// In en, this message translates to:
  /// **'Max Speed'**
  String get shipsColumnMaxSpeed;

  /// No description provided for @shipsColumnAccel.
  ///
  /// In en, this message translates to:
  /// **'Accel'**
  String get shipsColumnAccel;

  /// No description provided for @shipsColumnDecel.
  ///
  /// In en, this message translates to:
  /// **'Decel'**
  String get shipsColumnDecel;

  /// No description provided for @shipsColumnTurnRate.
  ///
  /// In en, this message translates to:
  /// **'Turn Rate'**
  String get shipsColumnTurnRate;

  /// No description provided for @shipsColumnTurnAccel.
  ///
  /// In en, this message translates to:
  /// **'Turn Accel'**
  String get shipsColumnTurnAccel;

  /// No description provided for @shipsColumnMass.
  ///
  /// In en, this message translates to:
  /// **'Mass'**
  String get shipsColumnMass;

  /// No description provided for @shipsColumnShield.
  ///
  /// In en, this message translates to:
  /// **'Shield'**
  String get shipsColumnShield;

  /// No description provided for @shipsColumnDefenseId.
  ///
  /// In en, this message translates to:
  /// **'Defense ID'**
  String get shipsColumnDefenseId;

  /// No description provided for @shipsColumnShieldArc.
  ///
  /// In en, this message translates to:
  /// **'Shield Arc'**
  String get shipsColumnShieldArc;

  /// No description provided for @shipsColumnShieldUpkeep.
  ///
  /// In en, this message translates to:
  /// **'Shield Upkeep'**
  String get shipsColumnShieldUpkeep;

  /// No description provided for @shipsColumnShieldEff.
  ///
  /// In en, this message translates to:
  /// **'Shield Eff.'**
  String get shipsColumnShieldEff;

  /// No description provided for @shipsColumnPhaseCost.
  ///
  /// In en, this message translates to:
  /// **'Phase Cost'**
  String get shipsColumnPhaseCost;

  /// No description provided for @shipsColumnPhaseUpkeep.
  ///
  /// In en, this message translates to:
  /// **'Phase Upkeep'**
  String get shipsColumnPhaseUpkeep;

  /// No description provided for @shipsColumnMinCrew.
  ///
  /// In en, this message translates to:
  /// **'Min Crew'**
  String get shipsColumnMinCrew;

  /// No description provided for @shipsColumnMaxCrew.
  ///
  /// In en, this message translates to:
  /// **'Max Crew'**
  String get shipsColumnMaxCrew;

  /// No description provided for @shipsColumnCargo.
  ///
  /// In en, this message translates to:
  /// **'Cargo'**
  String get shipsColumnCargo;

  /// No description provided for @shipsColumnFuel.
  ///
  /// In en, this message translates to:
  /// **'Fuel'**
  String get shipsColumnFuel;

  /// No description provided for @shipsColumnFuelLy.
  ///
  /// In en, this message translates to:
  /// **'Fuel/LY'**
  String get shipsColumnFuelLy;

  /// No description provided for @shipsColumnRange.
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get shipsColumnRange;

  /// No description provided for @shipsColumnMaxBurn.
  ///
  /// In en, this message translates to:
  /// **'Max Burn'**
  String get shipsColumnMaxBurn;

  /// No description provided for @shipsColumnSensorProfile.
  ///
  /// In en, this message translates to:
  /// **'Sensor Profile'**
  String get shipsColumnSensorProfile;

  /// No description provided for @shipsColumnSensorStrength.
  ///
  /// In en, this message translates to:
  /// **'Sensor Strength'**
  String get shipsColumnSensorStrength;

  /// No description provided for @shipsColumnCreditsBase.
  ///
  /// In en, this message translates to:
  /// **'Credits (base)'**
  String get shipsColumnCreditsBase;

  /// No description provided for @shipsColumnCrPerDay.
  ///
  /// In en, this message translates to:
  /// **'CR%/Day'**
  String get shipsColumnCrPerDay;

  /// No description provided for @shipsColumnCrToDeploy.
  ///
  /// In en, this message translates to:
  /// **'CR to Deploy'**
  String get shipsColumnCrToDeploy;

  /// No description provided for @shipsColumnPpt.
  ///
  /// In en, this message translates to:
  /// **'PPT'**
  String get shipsColumnPpt;

  /// No description provided for @shipsColumnCrLossSec.
  ///
  /// In en, this message translates to:
  /// **'CR Loss/Sec'**
  String get shipsColumnCrLossSec;

  /// No description provided for @shipsColumnSuppliesMon.
  ///
  /// In en, this message translates to:
  /// **'Supplies/Mon'**
  String get shipsColumnSuppliesMon;

  /// No description provided for @shipsColumnRarity.
  ///
  /// In en, this message translates to:
  /// **'Rarity'**
  String get shipsColumnRarity;

  /// No description provided for @shipsColumnBreakProb.
  ///
  /// In en, this message translates to:
  /// **'Break Prob'**
  String get shipsColumnBreakProb;

  /// No description provided for @shipsColumnMinPieces.
  ///
  /// In en, this message translates to:
  /// **'Min Pieces'**
  String get shipsColumnMinPieces;

  /// No description provided for @shipsColumnMaxPieces.
  ///
  /// In en, this message translates to:
  /// **'Max Pieces'**
  String get shipsColumnMaxPieces;

  /// No description provided for @shipsColumnTravelDrive.
  ///
  /// In en, this message translates to:
  /// **'Travel Drive'**
  String get shipsColumnTravelDrive;

  /// No description provided for @shipsColumnStyle.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get shipsColumnStyle;

  /// No description provided for @shipsFilterGroupType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get shipsFilterGroupType;

  /// No description provided for @shipsFilterValueSkin.
  ///
  /// In en, this message translates to:
  /// **'Skin'**
  String get shipsFilterValueSkin;

  /// No description provided for @shipsFilterValueBaseHull.
  ///
  /// In en, this message translates to:
  /// **'Base Hull'**
  String get shipsFilterValueBaseHull;

  /// No description provided for @shipsFilterHullSize.
  ///
  /// In en, this message translates to:
  /// **'Hull Size'**
  String get shipsFilterHullSize;

  /// No description provided for @shipsFilterWeaponSlotType.
  ///
  /// In en, this message translates to:
  /// **'Weapon Slot Type'**
  String get shipsFilterWeaponSlotType;

  /// No description provided for @shipsFilterWeaponSize.
  ///
  /// In en, this message translates to:
  /// **'Weapon Size'**
  String get shipsFilterWeaponSize;

  /// No description provided for @shipsFilterMountType.
  ///
  /// In en, this message translates to:
  /// **'Mount Type'**
  String get shipsFilterMountType;

  /// No description provided for @shipsFilterShieldType.
  ///
  /// In en, this message translates to:
  /// **'Shield Type'**
  String get shipsFilterShieldType;

  /// No description provided for @shipsFilterTechManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Tech/Manufacturer'**
  String get shipsFilterTechManufacturer;

  /// No description provided for @shipsFilterDesignation.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get shipsFilterDesignation;

  /// No description provided for @shipsFilterDeploymentPoints.
  ///
  /// In en, this message translates to:
  /// **'Deployment Points'**
  String get shipsFilterDeploymentPoints;

  /// No description provided for @shipsFilterOrdnancePoints.
  ///
  /// In en, this message translates to:
  /// **'Ordnance Points'**
  String get shipsFilterOrdnancePoints;

  /// No description provided for @shipsFilterFluxDissipation.
  ///
  /// In en, this message translates to:
  /// **'Flux Dissipation'**
  String get shipsFilterFluxDissipation;

  /// No description provided for @shipsFilterFluxCapacity.
  ///
  /// In en, this message translates to:
  /// **'Flux Capacity'**
  String get shipsFilterFluxCapacity;

  /// No description provided for @shipsFilterFuelCapacity.
  ///
  /// In en, this message translates to:
  /// **'Fuel Capacity'**
  String get shipsFilterFuelCapacity;

  /// No description provided for @shipsFilterCargoCapacity.
  ///
  /// In en, this message translates to:
  /// **'Cargo Capacity'**
  String get shipsFilterCargoCapacity;

  /// No description provided for @shipsFilterCrewCapacity.
  ///
  /// In en, this message translates to:
  /// **'Crew Capacity'**
  String get shipsFilterCrewCapacity;

  /// No description provided for @shipsLabelOrdnancePoints.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points'**
  String get shipsLabelOrdnancePoints;

  /// No description provided for @shipsLabelCargoCapacity.
  ///
  /// In en, this message translates to:
  /// **'Cargo capacity'**
  String get shipsLabelCargoCapacity;

  /// No description provided for @shipsLabelMaximumCrew.
  ///
  /// In en, this message translates to:
  /// **'Maximum crew'**
  String get shipsLabelMaximumCrew;

  /// No description provided for @shipsLabelFuelCapacity.
  ///
  /// In en, this message translates to:
  /// **'Fuel capacity'**
  String get shipsLabelFuelCapacity;

  /// No description provided for @shipsLabelArmorRating.
  ///
  /// In en, this message translates to:
  /// **'Armor rating'**
  String get shipsLabelArmorRating;

  /// No description provided for @shipsLabelSensorProfile.
  ///
  /// In en, this message translates to:
  /// **'Sensor profile'**
  String get shipsLabelSensorProfile;

  /// No description provided for @shipsLabelSensorStrength.
  ///
  /// In en, this message translates to:
  /// **'Sensor strength'**
  String get shipsLabelSensorStrength;

  /// No description provided for @shipsSearchHullSize.
  ///
  /// In en, this message translates to:
  /// **'Hull size (frigate, destroyer, cruiser, capital_ship)'**
  String get shipsSearchHullSize;

  /// No description provided for @shipsSearchShieldType.
  ///
  /// In en, this message translates to:
  /// **'Shield type (FRONT, OMNI, PHASE, NONE)'**
  String get shipsSearchShieldType;

  /// No description provided for @shipsSearchSystemId.
  ///
  /// In en, this message translates to:
  /// **'Ship system ID'**
  String get shipsSearchSystemId;

  /// No description provided for @shipsSearchDefenseId.
  ///
  /// In en, this message translates to:
  /// **'Defense system ID'**
  String get shipsSearchDefenseId;

  /// No description provided for @shipsSearchTechManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Tech/manufacturer'**
  String get shipsSearchTechManufacturer;

  /// No description provided for @shipsSearchDesignation.
  ///
  /// In en, this message translates to:
  /// **'Ship designation'**
  String get shipsSearchDesignation;

  /// No description provided for @shipsSearchStyle.
  ///
  /// In en, this message translates to:
  /// **'Visual style'**
  String get shipsSearchStyle;

  /// No description provided for @shipsSearchModSubstring.
  ///
  /// In en, this message translates to:
  /// **'Mod name substring match'**
  String get shipsSearchModSubstring;

  /// No description provided for @shipsSearchBuiltInHullmod.
  ///
  /// In en, this message translates to:
  /// **'Built-in hullmod, by name or ID'**
  String get shipsSearchBuiltInHullmod;

  /// No description provided for @shipsSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Ship hint; matches any hint in a multi-value set'**
  String get shipsSearchHint;

  /// No description provided for @shipsSearchTag.
  ///
  /// In en, this message translates to:
  /// **'Ship CSV tag; matches any tag in a multi-value set'**
  String get shipsSearchTag;

  /// No description provided for @shipsSearchHitpoints.
  ///
  /// In en, this message translates to:
  /// **'Hull hitpoints'**
  String get shipsSearchHitpoints;

  /// No description provided for @shipsSearchArmorRating.
  ///
  /// In en, this message translates to:
  /// **'Armor rating'**
  String get shipsSearchArmorRating;

  /// No description provided for @shipsSearchMaxFlux.
  ///
  /// In en, this message translates to:
  /// **'Max flux capacity'**
  String get shipsSearchMaxFlux;

  /// No description provided for @shipsSearchFluxDissipation.
  ///
  /// In en, this message translates to:
  /// **'Flux dissipation'**
  String get shipsSearchFluxDissipation;

  /// No description provided for @shipsSearchOrdnancePoints.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points'**
  String get shipsSearchOrdnancePoints;

  /// No description provided for @shipsSearchMaxSpeed.
  ///
  /// In en, this message translates to:
  /// **'Max speed'**
  String get shipsSearchMaxSpeed;

  /// No description provided for @shipsSearchAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Acceleration'**
  String get shipsSearchAcceleration;

  /// No description provided for @shipsSearchDeceleration.
  ///
  /// In en, this message translates to:
  /// **'Deceleration'**
  String get shipsSearchDeceleration;

  /// No description provided for @shipsSearchMaxTurnRate.
  ///
  /// In en, this message translates to:
  /// **'Max turn rate'**
  String get shipsSearchMaxTurnRate;

  /// No description provided for @shipsSearchTurnAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Turn acceleration'**
  String get shipsSearchTurnAcceleration;

  /// No description provided for @shipsSearchFighterBays.
  ///
  /// In en, this message translates to:
  /// **'Fighter bays'**
  String get shipsSearchFighterBays;

  /// No description provided for @shipsSearchShieldArc.
  ///
  /// In en, this message translates to:
  /// **'Shield arc'**
  String get shipsSearchShieldArc;

  /// No description provided for @shipsSearchShieldEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Shield efficiency'**
  String get shipsSearchShieldEfficiency;

  /// No description provided for @shipsSearchShieldUpkeep.
  ///
  /// In en, this message translates to:
  /// **'Shield upkeep'**
  String get shipsSearchShieldUpkeep;

  /// No description provided for @shipsSearchPhaseCost.
  ///
  /// In en, this message translates to:
  /// **'Phase cost'**
  String get shipsSearchPhaseCost;

  /// No description provided for @shipsSearchPhaseUpkeep.
  ///
  /// In en, this message translates to:
  /// **'Phase upkeep'**
  String get shipsSearchPhaseUpkeep;

  /// No description provided for @shipsSearchMinCrew.
  ///
  /// In en, this message translates to:
  /// **'Minimum crew'**
  String get shipsSearchMinCrew;

  /// No description provided for @shipsSearchMaxCrew.
  ///
  /// In en, this message translates to:
  /// **'Maximum crew'**
  String get shipsSearchMaxCrew;

  /// No description provided for @shipsSearchCargoCapacity.
  ///
  /// In en, this message translates to:
  /// **'Cargo capacity'**
  String get shipsSearchCargoCapacity;

  /// No description provided for @shipsSearchFuelCapacity.
  ///
  /// In en, this message translates to:
  /// **'Fuel capacity'**
  String get shipsSearchFuelCapacity;

  /// No description provided for @shipsSearchFuelPerLy.
  ///
  /// In en, this message translates to:
  /// **'Fuel used per light year'**
  String get shipsSearchFuelPerLy;

  /// No description provided for @shipsSearchRange.
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get shipsSearchRange;

  /// No description provided for @shipsSearchMaxBurn.
  ///
  /// In en, this message translates to:
  /// **'Max burn'**
  String get shipsSearchMaxBurn;

  /// No description provided for @shipsSearchMass.
  ///
  /// In en, this message translates to:
  /// **'Ship mass'**
  String get shipsSearchMass;

  /// No description provided for @shipsSearchDeploymentPoints.
  ///
  /// In en, this message translates to:
  /// **'Deployment points'**
  String get shipsSearchDeploymentPoints;

  /// No description provided for @shipsSearchFleetPoints.
  ///
  /// In en, this message translates to:
  /// **'Fleet points'**
  String get shipsSearchFleetPoints;

  /// No description provided for @shipsSearchBaseValue.
  ///
  /// In en, this message translates to:
  /// **'Base credit value'**
  String get shipsSearchBaseValue;

  /// No description provided for @shipsSearchWeaponSlots.
  ///
  /// In en, this message translates to:
  /// **'Weapon slots'**
  String get shipsSearchWeaponSlots;

  /// No description provided for @shipsSearchPeakCr.
  ///
  /// In en, this message translates to:
  /// **'Peak CR seconds'**
  String get shipsSearchPeakCr;

  /// No description provided for @shipsSearchCrPerDay.
  ///
  /// In en, this message translates to:
  /// **'CR recovered per day'**
  String get shipsSearchCrPerDay;

  /// No description provided for @shipsSearchCrToDeploy.
  ///
  /// In en, this message translates to:
  /// **'CR cost to deploy'**
  String get shipsSearchCrToDeploy;

  /// No description provided for @shipsSearchCrLoss.
  ///
  /// In en, this message translates to:
  /// **'CR lost per second past peak'**
  String get shipsSearchCrLoss;

  /// No description provided for @shipsSearchSuppliesPerMonth.
  ///
  /// In en, this message translates to:
  /// **'Supplies per month'**
  String get shipsSearchSuppliesPerMonth;

  /// No description provided for @shipsSearchSensorProfile.
  ///
  /// In en, this message translates to:
  /// **'Sensor profile'**
  String get shipsSearchSensorProfile;

  /// No description provided for @shipsSearchSensorStrength.
  ///
  /// In en, this message translates to:
  /// **'Sensor strength'**
  String get shipsSearchSensorStrength;

  /// No description provided for @shipsSearchMinPieces.
  ///
  /// In en, this message translates to:
  /// **'Minimum debris pieces'**
  String get shipsSearchMinPieces;

  /// No description provided for @shipsSearchMaxPieces.
  ///
  /// In en, this message translates to:
  /// **'Maximum debris pieces'**
  String get shipsSearchMaxPieces;

  /// No description provided for @shipsSearchBuiltInWeapons.
  ///
  /// In en, this message translates to:
  /// **'Number of built-in weapons'**
  String get shipsSearchBuiltInWeapons;

  /// No description provided for @shipsSearchBuiltInHullmods.
  ///
  /// In en, this message translates to:
  /// **'Number of built-in hullmods'**
  String get shipsSearchBuiltInHullmods;

  /// No description provided for @shipsSearchBuiltInWings.
  ///
  /// In en, this message translates to:
  /// **'Number of built-in fighter wings'**
  String get shipsSearchBuiltInWings;

  /// No description provided for @shipsSearchSizeSlots.
  ///
  /// In en, this message translates to:
  /// **'{size} slots'**
  String shipsSearchSizeSlots(Object size);

  /// No description provided for @shipsSearchTypeSlots.
  ///
  /// In en, this message translates to:
  /// **'{type} mountable slots'**
  String shipsSearchTypeSlots(Object type);

  /// No description provided for @shipsSearchSizeTypeSlots.
  ///
  /// In en, this message translates to:
  /// **'{size} {type} slots'**
  String shipsSearchSizeTypeSlots(Object size, Object type);

  /// No description provided for @shipsSkinBadgeTooltip.
  ///
  /// In en, this message translates to:
  /// **'This ship comes from a .skin file.\nSkins are variations of standard hulls. For example, the Falcon (P) is a skin of the Falcon.'**
  String get shipsSkinBadgeTooltip;

  /// No description provided for @shipCodexPhaseCloak.
  ///
  /// In en, this message translates to:
  /// **'Phase cloak'**
  String get shipCodexPhaseCloak;

  /// No description provided for @shipCodexShieldType.
  ///
  /// In en, this message translates to:
  /// **'{shieldType} shield'**
  String shipCodexShieldType(Object shieldType);

  /// No description provided for @shipCodexLabelSpecial.
  ///
  /// In en, this message translates to:
  /// **'Special'**
  String get shipCodexLabelSpecial;

  /// No description provided for @shipCodexLabelDefense.
  ///
  /// In en, this message translates to:
  /// **'Defense'**
  String get shipCodexLabelDefense;

  /// No description provided for @shipCodexSectionLogistical.
  ///
  /// In en, this message translates to:
  /// **'Logistical data'**
  String get shipCodexSectionLogistical;

  /// No description provided for @shipCodexCrPerDeployment.
  ///
  /// In en, this message translates to:
  /// **'CR per deployment'**
  String get shipCodexCrPerDeployment;

  /// No description provided for @shipCodexRecoveryPerDay.
  ///
  /// In en, this message translates to:
  /// **'Recovery (/day)'**
  String get shipCodexRecoveryPerDay;

  /// No description provided for @shipCodexRecoverySupplies.
  ///
  /// In en, this message translates to:
  /// **'Recovery (supplies)'**
  String get shipCodexRecoverySupplies;

  /// No description provided for @shipCodexDeploymentPoints.
  ///
  /// In en, this message translates to:
  /// **'Deployment points'**
  String get shipCodexDeploymentPoints;

  /// No description provided for @shipCodexPeakPerformance.
  ///
  /// In en, this message translates to:
  /// **'Peak performance (sec)'**
  String get shipCodexPeakPerformance;

  /// No description provided for @shipCodexHullSize.
  ///
  /// In en, this message translates to:
  /// **'Hull size'**
  String get shipCodexHullSize;

  /// No description provided for @shipCodexMaintenanceShort.
  ///
  /// In en, this message translates to:
  /// **'Maintenance (sup/mo)'**
  String get shipCodexMaintenanceShort;

  /// No description provided for @shipCodexMaintenanceFull.
  ///
  /// In en, this message translates to:
  /// **'Maintenance (supplies/month)'**
  String get shipCodexMaintenanceFull;

  /// No description provided for @shipCodexSkeletonCrew.
  ///
  /// In en, this message translates to:
  /// **'Skeleton crew'**
  String get shipCodexSkeletonCrew;

  /// No description provided for @shipCodexMaximumBurn.
  ///
  /// In en, this message translates to:
  /// **'Maximum burn'**
  String get shipCodexMaximumBurn;

  /// No description provided for @shipCodexFuelLyJumpCost.
  ///
  /// In en, this message translates to:
  /// **'Fuel/ly, jump cost'**
  String get shipCodexFuelLyJumpCost;

  /// No description provided for @shipCodexSectionCombat.
  ///
  /// In en, this message translates to:
  /// **'Combat performance'**
  String get shipCodexSectionCombat;

  /// No description provided for @shipCodexHullIntegrity.
  ///
  /// In en, this message translates to:
  /// **'Hull integrity'**
  String get shipCodexHullIntegrity;

  /// No description provided for @shipCodexShieldArc.
  ///
  /// In en, this message translates to:
  /// **'Shield arc'**
  String get shipCodexShieldArc;

  /// No description provided for @shipCodexShieldUpkeepSec.
  ///
  /// In en, this message translates to:
  /// **'Shield upkeep/sec'**
  String get shipCodexShieldUpkeepSec;

  /// No description provided for @shipCodexShieldFluxDamage.
  ///
  /// In en, this message translates to:
  /// **'Shield flux/damage'**
  String get shipCodexShieldFluxDamage;

  /// No description provided for @shipCodexCloakActivationCost.
  ///
  /// In en, this message translates to:
  /// **'Cloak activation cost'**
  String get shipCodexCloakActivationCost;

  /// No description provided for @shipCodexCloakUpkeepSec.
  ///
  /// In en, this message translates to:
  /// **'Cloak upkeep/sec'**
  String get shipCodexCloakUpkeepSec;

  /// No description provided for @shipCodexFluxCapacity.
  ///
  /// In en, this message translates to:
  /// **'Flux capacity'**
  String get shipCodexFluxCapacity;

  /// No description provided for @shipCodexFluxDissipation.
  ///
  /// In en, this message translates to:
  /// **'Flux dissipation'**
  String get shipCodexFluxDissipation;

  /// No description provided for @shipCodexTopSpeed.
  ///
  /// In en, this message translates to:
  /// **'Top speed'**
  String get shipCodexTopSpeed;

  /// No description provided for @shipCodexLabelSystem.
  ///
  /// In en, this message translates to:
  /// **'System:'**
  String get shipCodexLabelSystem;

  /// No description provided for @shipCodexLabelMounts.
  ///
  /// In en, this message translates to:
  /// **'Mounts:'**
  String get shipCodexLabelMounts;

  /// No description provided for @shipCodexLabelArmaments.
  ///
  /// In en, this message translates to:
  /// **'Armaments:'**
  String get shipCodexLabelArmaments;

  /// No description provided for @shipCodexLabelHullMods.
  ///
  /// In en, this message translates to:
  /// **'Hull Mods:'**
  String get shipCodexLabelHullMods;

  /// No description provided for @shipDetailsLabelDefense.
  ///
  /// In en, this message translates to:
  /// **'Defense'**
  String get shipDetailsLabelDefense;

  /// No description provided for @shipDetailsSectionCombat.
  ///
  /// In en, this message translates to:
  /// **'Combat'**
  String get shipDetailsSectionCombat;

  /// No description provided for @shipDetailsOrdnancePts.
  ///
  /// In en, this message translates to:
  /// **'Ordnance Pts'**
  String get shipDetailsOrdnancePts;

  /// No description provided for @shipDetailsWeapons.
  ///
  /// In en, this message translates to:
  /// **'Weapons'**
  String get shipDetailsWeapons;

  /// No description provided for @shipDetailsSectionShieldPhase.
  ///
  /// In en, this message translates to:
  /// **'Shield / Phase'**
  String get shipDetailsSectionShieldPhase;

  /// No description provided for @shipDetailsShieldEfficiency.
  ///
  /// In en, this message translates to:
  /// **'Shield Efficiency'**
  String get shipDetailsShieldEfficiency;

  /// No description provided for @shipDetailsSectionMobility.
  ///
  /// In en, this message translates to:
  /// **'Mobility'**
  String get shipDetailsSectionMobility;

  /// No description provided for @shipDetailsSectionCrewLogistics.
  ///
  /// In en, this message translates to:
  /// **'Crew & Logistics'**
  String get shipDetailsSectionCrewLogistics;

  /// No description provided for @shipDetailsSectionEconomicsCr.
  ///
  /// In en, this message translates to:
  /// **'Economics & CR'**
  String get shipDetailsSectionEconomicsCr;

  /// No description provided for @shipDetailsBaseValue.
  ///
  /// In en, this message translates to:
  /// **'Base Value'**
  String get shipDetailsBaseValue;

  /// No description provided for @shipDetailsPptSec.
  ///
  /// In en, this message translates to:
  /// **'PPT (s)'**
  String get shipDetailsPptSec;

  /// No description provided for @shipDetailsSuppliesMo.
  ///
  /// In en, this message translates to:
  /// **'Supplies/Mo'**
  String get shipDetailsSuppliesMo;

  /// No description provided for @shipDetailsSectionMisc.
  ///
  /// In en, this message translates to:
  /// **'Misc'**
  String get shipDetailsSectionMisc;

  /// No description provided for @shipDetailsCollisionRadius.
  ///
  /// In en, this message translates to:
  /// **'Collision Radius'**
  String get shipDetailsCollisionRadius;

  /// No description provided for @shipDetailsHints.
  ///
  /// In en, this message translates to:
  /// **'Hints'**
  String get shipDetailsHints;

  /// No description provided for @shipDetailsTags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get shipDetailsTags;

  /// No description provided for @shipDetailsBuiltInWeapons.
  ///
  /// In en, this message translates to:
  /// **'Built-in Weapons'**
  String get shipDetailsBuiltInWeapons;

  /// No description provided for @shipBlueprintResetZoom.
  ///
  /// In en, this message translates to:
  /// **'Reset zoom'**
  String get shipBlueprintResetZoom;

  /// No description provided for @shipBlueprintShowBounds.
  ///
  /// In en, this message translates to:
  /// **'Show bounds'**
  String get shipBlueprintShowBounds;

  /// No description provided for @shipBlueprintShowModules.
  ///
  /// In en, this message translates to:
  /// **'Show modules'**
  String get shipBlueprintShowModules;

  /// No description provided for @shipBlueprintShowMounts.
  ///
  /// In en, this message translates to:
  /// **'Show mounts'**
  String get shipBlueprintShowMounts;

  /// No description provided for @shipBlueprintShowArcs.
  ///
  /// In en, this message translates to:
  /// **'Show arcs'**
  String get shipBlueprintShowArcs;

  /// No description provided for @shipBlueprintShowBuiltInWeapons.
  ///
  /// In en, this message translates to:
  /// **'Show built-in weapons'**
  String get shipBlueprintShowBuiltInWeapons;

  /// No description provided for @shipBlueprintShowDecorativeWeapons.
  ///
  /// In en, this message translates to:
  /// **'Show decorative weapons'**
  String get shipBlueprintShowDecorativeWeapons;

  /// No description provided for @shipBlueprintShowEngineGlow.
  ///
  /// In en, this message translates to:
  /// **'Show engine glow'**
  String get shipBlueprintShowEngineGlow;

  /// No description provided for @shipBlueprintShowShields.
  ///
  /// In en, this message translates to:
  /// **'Show shields'**
  String get shipBlueprintShowShields;

  /// No description provided for @shipBlueprintBackgroundTransparent.
  ///
  /// In en, this message translates to:
  /// **'Transparent'**
  String get shipBlueprintBackgroundTransparent;

  /// No description provided for @shipBlueprintBackgroundBlack.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get shipBlueprintBackgroundBlack;

  /// No description provided for @shipBlueprintBackgroundDarkGrey.
  ///
  /// In en, this message translates to:
  /// **'Dark grey'**
  String get shipBlueprintBackgroundDarkGrey;

  /// No description provided for @shipBlueprintBackgroundLightGrey.
  ///
  /// In en, this message translates to:
  /// **'Light grey'**
  String get shipBlueprintBackgroundLightGrey;

  /// No description provided for @shipBlueprintBackgroundWhite.
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get shipBlueprintBackgroundWhite;

  /// No description provided for @shipBlueprintBackgroundDarkBlue.
  ///
  /// In en, this message translates to:
  /// **'Dark blue'**
  String get shipBlueprintBackgroundDarkBlue;

  /// No description provided for @shipBlueprintBackgroundDarkRed.
  ///
  /// In en, this message translates to:
  /// **'Dark red'**
  String get shipBlueprintBackgroundDarkRed;

  /// No description provided for @shipBlueprintBackgroundSpace1.
  ///
  /// In en, this message translates to:
  /// **'Space 1'**
  String get shipBlueprintBackgroundSpace1;

  /// No description provided for @shipBlueprintBackgroundSpace2.
  ///
  /// In en, this message translates to:
  /// **'Space 2'**
  String get shipBlueprintBackgroundSpace2;

  /// No description provided for @shipBlueprintBackgroundSpace3.
  ///
  /// In en, this message translates to:
  /// **'Space 3'**
  String get shipBlueprintBackgroundSpace3;

  /// No description provided for @shipBlueprintBackgroundSpace4.
  ///
  /// In en, this message translates to:
  /// **'Space 4'**
  String get shipBlueprintBackgroundSpace4;

  /// No description provided for @shipBlueprintBackgroundSpace5.
  ///
  /// In en, this message translates to:
  /// **'Space 5'**
  String get shipBlueprintBackgroundSpace5;

  /// No description provided for @shipBlueprintBackgroundSpace6.
  ///
  /// In en, this message translates to:
  /// **'Space 6'**
  String get shipBlueprintBackgroundSpace6;

  /// No description provided for @shipBlueprintBackgroundGalatia.
  ///
  /// In en, this message translates to:
  /// **'Galatia'**
  String get shipBlueprintBackgroundGalatia;

  /// No description provided for @shipBlueprintBackgroundHyperspace.
  ///
  /// In en, this message translates to:
  /// **'Hyperspace'**
  String get shipBlueprintBackgroundHyperspace;

  /// No description provided for @shipBlueprintBackgroundHyperspaceCool.
  ///
  /// In en, this message translates to:
  /// **'Hyperspace (cool)'**
  String get shipBlueprintBackgroundHyperspaceCool;

  /// No description provided for @weaponsEntityName.
  ///
  /// In en, this message translates to:
  /// **'Weapons'**
  String get weaponsEntityName;

  /// No description provided for @weaponsGroupAllWeapons.
  ///
  /// In en, this message translates to:
  /// **'All Weapons'**
  String get weaponsGroupAllWeapons;

  /// No description provided for @weaponsColumnId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get weaponsColumnId;

  /// No description provided for @weaponsColumnWeaponType.
  ///
  /// In en, this message translates to:
  /// **'Weapon Type'**
  String get weaponsColumnWeaponType;

  /// No description provided for @weaponsColumnSize.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get weaponsColumnSize;

  /// No description provided for @weaponsColumnDmgType.
  ///
  /// In en, this message translates to:
  /// **'Dmg Type'**
  String get weaponsColumnDmgType;

  /// No description provided for @weaponsColumnTechManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Tech/Manufacturer'**
  String get weaponsColumnTechManufacturer;

  /// No description provided for @weaponsColumnSpecClass.
  ///
  /// In en, this message translates to:
  /// **'Spec Class'**
  String get weaponsColumnSpecClass;

  /// No description provided for @weaponsColumnRole.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get weaponsColumnRole;

  /// No description provided for @weaponsColumnAccuracy.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get weaponsColumnAccuracy;

  /// No description provided for @weaponsColumnTracking.
  ///
  /// In en, this message translates to:
  /// **'Tracking'**
  String get weaponsColumnTracking;

  /// No description provided for @weaponsColumnSpeed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get weaponsColumnSpeed;

  /// No description provided for @weaponsColumnTurnRateText.
  ///
  /// In en, this message translates to:
  /// **'Turn Rate (text)'**
  String get weaponsColumnTurnRateText;

  /// No description provided for @weaponsColumnDmgShot.
  ///
  /// In en, this message translates to:
  /// **'Dmg/Shot'**
  String get weaponsColumnDmgShot;

  /// No description provided for @weaponsColumnImpact.
  ///
  /// In en, this message translates to:
  /// **'Impact'**
  String get weaponsColumnImpact;

  /// No description provided for @weaponsColumnOp.
  ///
  /// In en, this message translates to:
  /// **'OP'**
  String get weaponsColumnOp;

  /// No description provided for @weaponsColumnCost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get weaponsColumnCost;

  /// No description provided for @weaponsColumnFluxShot.
  ///
  /// In en, this message translates to:
  /// **'Flux/Shot'**
  String get weaponsColumnFluxShot;

  /// No description provided for @weaponsColumnFluxSec.
  ///
  /// In en, this message translates to:
  /// **'Flux/Sec'**
  String get weaponsColumnFluxSec;

  /// No description provided for @weaponsColumnRange.
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get weaponsColumnRange;

  /// No description provided for @weaponsColumnDmgSec.
  ///
  /// In en, this message translates to:
  /// **'Dmg/Sec'**
  String get weaponsColumnDmgSec;

  /// No description provided for @weaponsColumnAmmo.
  ///
  /// In en, this message translates to:
  /// **'Ammo'**
  String get weaponsColumnAmmo;

  /// No description provided for @weaponsColumnAmmoSec.
  ///
  /// In en, this message translates to:
  /// **'Ammo/Sec'**
  String get weaponsColumnAmmoSec;

  /// No description provided for @weaponsColumnReloadSize.
  ///
  /// In en, this message translates to:
  /// **'Reload Size'**
  String get weaponsColumnReloadSize;

  /// No description provided for @weaponsColumnEmp.
  ///
  /// In en, this message translates to:
  /// **'EMP'**
  String get weaponsColumnEmp;

  /// No description provided for @weaponsColumnChargeup.
  ///
  /// In en, this message translates to:
  /// **'Chargeup'**
  String get weaponsColumnChargeup;

  /// No description provided for @weaponsColumnChargedown.
  ///
  /// In en, this message translates to:
  /// **'Chargedown'**
  String get weaponsColumnChargedown;

  /// No description provided for @weaponsColumnBurstSize.
  ///
  /// In en, this message translates to:
  /// **'Burst Size'**
  String get weaponsColumnBurstSize;

  /// No description provided for @weaponsColumnBurstDelay.
  ///
  /// In en, this message translates to:
  /// **'Burst Delay'**
  String get weaponsColumnBurstDelay;

  /// No description provided for @weaponsColumnMinSpread.
  ///
  /// In en, this message translates to:
  /// **'Min Spread'**
  String get weaponsColumnMinSpread;

  /// No description provided for @weaponsColumnMaxSpread.
  ///
  /// In en, this message translates to:
  /// **'Max Spread'**
  String get weaponsColumnMaxSpread;

  /// No description provided for @weaponsColumnSpreadShot.
  ///
  /// In en, this message translates to:
  /// **'Spread/Shot'**
  String get weaponsColumnSpreadShot;

  /// No description provided for @weaponsColumnSpreadDecay.
  ///
  /// In en, this message translates to:
  /// **'Spread Decay'**
  String get weaponsColumnSpreadDecay;

  /// No description provided for @weaponsColumnAfAccBonus.
  ///
  /// In en, this message translates to:
  /// **'AF Acc Bonus'**
  String get weaponsColumnAfAccBonus;

  /// No description provided for @weaponsColumnProjSpeed.
  ///
  /// In en, this message translates to:
  /// **'Proj Speed'**
  String get weaponsColumnProjSpeed;

  /// No description provided for @weaponsColumnBeamSpeed.
  ///
  /// In en, this message translates to:
  /// **'Beam Speed'**
  String get weaponsColumnBeamSpeed;

  /// No description provided for @weaponsColumnLaunchSpeed.
  ///
  /// In en, this message translates to:
  /// **'Launch Speed'**
  String get weaponsColumnLaunchSpeed;

  /// No description provided for @weaponsColumnFlightTime.
  ///
  /// In en, this message translates to:
  /// **'Flight Time'**
  String get weaponsColumnFlightTime;

  /// No description provided for @weaponsColumnProjHp.
  ///
  /// In en, this message translates to:
  /// **'Proj HP'**
  String get weaponsColumnProjHp;

  /// No description provided for @weaponsColumnTurnRate.
  ///
  /// In en, this message translates to:
  /// **'Turn Rate'**
  String get weaponsColumnTurnRate;

  /// No description provided for @weaponsColumnTier.
  ///
  /// In en, this message translates to:
  /// **'Tier'**
  String get weaponsColumnTier;

  /// No description provided for @weaponsColumnRarity.
  ///
  /// In en, this message translates to:
  /// **'Rarity'**
  String get weaponsColumnRarity;

  /// No description provided for @weaponsColumnHints.
  ///
  /// In en, this message translates to:
  /// **'Hints'**
  String get weaponsColumnHints;

  /// No description provided for @weaponsColumnTags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get weaponsColumnTags;

  /// No description provided for @weaponsColumnGroupTag.
  ///
  /// In en, this message translates to:
  /// **'Group Tag'**
  String get weaponsColumnGroupTag;

  /// No description provided for @weaponsFilterHint.
  ///
  /// In en, this message translates to:
  /// **'Hint'**
  String get weaponsFilterHint;

  /// No description provided for @weaponsFilterDamagePerShot.
  ///
  /// In en, this message translates to:
  /// **'Damage per Shot'**
  String get weaponsFilterDamagePerShot;

  /// No description provided for @weaponsFilterDamagePerSecond.
  ///
  /// In en, this message translates to:
  /// **'Damage per Second'**
  String get weaponsFilterDamagePerSecond;

  /// No description provided for @weaponsFilterFluxPerSecond.
  ///
  /// In en, this message translates to:
  /// **'Flux per Second'**
  String get weaponsFilterFluxPerSecond;

  /// No description provided for @weaponsSearchTrackingQuality.
  ///
  /// In en, this message translates to:
  /// **'Tracking quality (excellent, good, poor, none)'**
  String get weaponsSearchTrackingQuality;

  /// No description provided for @weaponsSearchAmmoCount.
  ///
  /// In en, this message translates to:
  /// **'Ammo count (none = unlimited); supports numeric operators'**
  String get weaponsSearchAmmoCount;

  /// No description provided for @weaponsSearchWeaponType.
  ///
  /// In en, this message translates to:
  /// **'Weapon type (missile, energy, ballistic, hybrid)'**
  String get weaponsSearchWeaponType;

  /// No description provided for @weaponsSearchMountSize.
  ///
  /// In en, this message translates to:
  /// **'Mount size (small, medium, large)'**
  String get weaponsSearchMountSize;

  /// No description provided for @weaponsSearchDamageType.
  ///
  /// In en, this message translates to:
  /// **'Damage type (kinetic, he, energy, fragmentation)'**
  String get weaponsSearchDamageType;

  /// No description provided for @weaponsSearchWeaponRange.
  ///
  /// In en, this message translates to:
  /// **'Weapon range'**
  String get weaponsSearchWeaponRange;

  /// No description provided for @weaponsSearchOpCost.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points cost'**
  String get weaponsSearchOpCost;

  /// No description provided for @weaponsSearchDps.
  ///
  /// In en, this message translates to:
  /// **'Damage per second'**
  String get weaponsSearchDps;

  /// No description provided for @weaponsSearchHintTag.
  ///
  /// In en, this message translates to:
  /// **'Weapon hint tag; matches any hint in a multi-value set'**
  String get weaponsSearchHintTag;

  /// No description provided for @weaponsSearchTag.
  ///
  /// In en, this message translates to:
  /// **'Weapon CSV tag; matches any tag in a multi-value set'**
  String get weaponsSearchTag;

  /// No description provided for @weaponsSearchDamagePerShot.
  ///
  /// In en, this message translates to:
  /// **'Damage per shot'**
  String get weaponsSearchDamagePerShot;

  /// No description provided for @weaponsSearchEmpDamage.
  ///
  /// In en, this message translates to:
  /// **'EMP damage'**
  String get weaponsSearchEmpDamage;

  /// No description provided for @weaponsSearchFluxPerShot.
  ///
  /// In en, this message translates to:
  /// **'Flux per shot'**
  String get weaponsSearchFluxPerShot;

  /// No description provided for @weaponsSearchFluxPerSecond.
  ///
  /// In en, this message translates to:
  /// **'Flux per second'**
  String get weaponsSearchFluxPerSecond;

  /// No description provided for @weaponsSearchChargeUp.
  ///
  /// In en, this message translates to:
  /// **'Charge-up time in seconds'**
  String get weaponsSearchChargeUp;

  /// No description provided for @weaponsSearchChargeDown.
  ///
  /// In en, this message translates to:
  /// **'Charge-down time in seconds'**
  String get weaponsSearchChargeDown;

  /// No description provided for @weaponsSearchBurstSize.
  ///
  /// In en, this message translates to:
  /// **'Burst size (number of shots)'**
  String get weaponsSearchBurstSize;

  /// No description provided for @weaponsSearchBurstDelay.
  ///
  /// In en, this message translates to:
  /// **'Delay between burst shots'**
  String get weaponsSearchBurstDelay;

  /// No description provided for @weaponsSearchBarrelsTogether.
  ///
  /// In en, this message translates to:
  /// **'Barrels fired together per shot (LINKED and DUAL barrel modes)'**
  String get weaponsSearchBarrelsTogether;

  /// No description provided for @weaponsSearchTurnRate.
  ///
  /// In en, this message translates to:
  /// **'Projectile/beam turn rate'**
  String get weaponsSearchTurnRate;

  /// No description provided for @weaponsSearchProjectileSpeed.
  ///
  /// In en, this message translates to:
  /// **'Projectile speed'**
  String get weaponsSearchProjectileSpeed;

  /// No description provided for @weaponsSearchBeamSpeed.
  ///
  /// In en, this message translates to:
  /// **'Beam speed'**
  String get weaponsSearchBeamSpeed;

  /// No description provided for @weaponsSearchLaunchSpeed.
  ///
  /// In en, this message translates to:
  /// **'Missile launch speed'**
  String get weaponsSearchLaunchSpeed;

  /// No description provided for @weaponsSearchFlightTime.
  ///
  /// In en, this message translates to:
  /// **'Projectile flight time'**
  String get weaponsSearchFlightTime;

  /// No description provided for @weaponsSearchProjectileHitpoints.
  ///
  /// In en, this message translates to:
  /// **'Projectile hitpoints'**
  String get weaponsSearchProjectileHitpoints;

  /// No description provided for @weaponsSearchAmmoRegen.
  ///
  /// In en, this message translates to:
  /// **'Ammo regeneration per second'**
  String get weaponsSearchAmmoRegen;

  /// No description provided for @weaponsSearchReloadSize.
  ///
  /// In en, this message translates to:
  /// **'Reload size'**
  String get weaponsSearchReloadSize;

  /// No description provided for @weaponsSearchImpact.
  ///
  /// In en, this message translates to:
  /// **'Impact/force value'**
  String get weaponsSearchImpact;

  /// No description provided for @weaponsSearchAutofireBonus.
  ///
  /// In en, this message translates to:
  /// **'Autofire accuracy bonus'**
  String get weaponsSearchAutofireBonus;

  /// No description provided for @weaponsSearchMaxSpread.
  ///
  /// In en, this message translates to:
  /// **'Maximum spread'**
  String get weaponsSearchMaxSpread;

  /// No description provided for @weaponsSearchMinSpread.
  ///
  /// In en, this message translates to:
  /// **'Minimum spread'**
  String get weaponsSearchMinSpread;

  /// No description provided for @weaponsSearchSpreadPerShot.
  ///
  /// In en, this message translates to:
  /// **'Spread added per shot'**
  String get weaponsSearchSpreadPerShot;

  /// No description provided for @weaponsSearchEffectiveDps.
  ///
  /// In en, this message translates to:
  /// **'Damage per second, allowing for charge-up and bursts'**
  String get weaponsSearchEffectiveDps;

  /// No description provided for @weaponsSearchSustainedDps.
  ///
  /// In en, this message translates to:
  /// **'Damage per second once ammo regeneration is the limit'**
  String get weaponsSearchSustainedDps;

  /// No description provided for @weaponsSearchBurstDamage.
  ///
  /// In en, this message translates to:
  /// **'Damage dealt by one burst (burst beams only)'**
  String get weaponsSearchBurstDamage;

  /// No description provided for @weaponsSearchRefireDelay.
  ///
  /// In en, this message translates to:
  /// **'Seconds between shots or bursts'**
  String get weaponsSearchRefireDelay;

  /// No description provided for @weaponsSearchFluxPerDamage.
  ///
  /// In en, this message translates to:
  /// **'Flux spent per point of damage; lower is more efficient'**
  String get weaponsSearchFluxPerDamage;

  /// No description provided for @weaponsSearchFluxPerSecFiring.
  ///
  /// In en, this message translates to:
  /// **'Flux spent per second while firing'**
  String get weaponsSearchFluxPerSecFiring;

  /// No description provided for @weaponsSearchSustainedFlux.
  ///
  /// In en, this message translates to:
  /// **'Flux spent per second at the sustained rate of fire'**
  String get weaponsSearchSustainedFlux;

  /// No description provided for @weaponsSearchEmpPerActivation.
  ///
  /// In en, this message translates to:
  /// **'EMP damage per activation'**
  String get weaponsSearchEmpPerActivation;

  /// No description provided for @weaponsSearchSpecClass.
  ///
  /// In en, this message translates to:
  /// **'Weapon spec class (beam, projectile, missile, etc.)'**
  String get weaponsSearchSpecClass;

  /// No description provided for @weaponsSearchMountType.
  ///
  /// In en, this message translates to:
  /// **'Effective mount type (TURRET, HARDPOINT, HIDDEN)'**
  String get weaponsSearchMountType;

  /// No description provided for @weaponsSearchPrimaryRole.
  ///
  /// In en, this message translates to:
  /// **'Primary role description'**
  String get weaponsSearchPrimaryRole;

  /// No description provided for @weaponsSearchGroupTag.
  ///
  /// In en, this message translates to:
  /// **'Weapon group tag'**
  String get weaponsSearchGroupTag;

  /// No description provided for @weaponsSearchTier.
  ///
  /// In en, this message translates to:
  /// **'Weapon tier'**
  String get weaponsSearchTier;

  /// No description provided for @weaponsSearchRarityValue.
  ///
  /// In en, this message translates to:
  /// **'Rarity value'**
  String get weaponsSearchRarityValue;

  /// No description provided for @weaponCodexSectionPrimary.
  ///
  /// In en, this message translates to:
  /// **'Primary data'**
  String get weaponCodexSectionPrimary;

  /// No description provided for @weaponCodexPrimaryRole.
  ///
  /// In en, this message translates to:
  /// **'Primary role'**
  String get weaponCodexPrimaryRole;

  /// No description provided for @weaponCodexMountType.
  ///
  /// In en, this message translates to:
  /// **'Mount type'**
  String get weaponCodexMountType;

  /// No description provided for @weaponCodexCountsAs.
  ///
  /// In en, this message translates to:
  /// **'Counts as {type} for stat modifiers'**
  String weaponCodexCountsAs(Object type);

  /// No description provided for @weaponCodexDamage.
  ///
  /// In en, this message translates to:
  /// **'Damage'**
  String get weaponCodexDamage;

  /// No description provided for @weaponCodexDps.
  ///
  /// In en, this message translates to:
  /// **'Damage / second'**
  String get weaponCodexDps;

  /// No description provided for @weaponCodexDpsSustained.
  ///
  /// In en, this message translates to:
  /// **'Damage / second (sustained)'**
  String get weaponCodexDpsSustained;

  /// No description provided for @weaponCodexEmpDamage.
  ///
  /// In en, this message translates to:
  /// **'EMP damage'**
  String get weaponCodexEmpDamage;

  /// No description provided for @weaponCodexEmpDps.
  ///
  /// In en, this message translates to:
  /// **'EMP DPS'**
  String get weaponCodexEmpDps;

  /// No description provided for @weaponCodexFluxSec.
  ///
  /// In en, this message translates to:
  /// **'Flux / second'**
  String get weaponCodexFluxSec;

  /// No description provided for @weaponCodexFluxSecSustained.
  ///
  /// In en, this message translates to:
  /// **'Flux / second (sustained)'**
  String get weaponCodexFluxSecSustained;

  /// No description provided for @weaponCodexFluxShot.
  ///
  /// In en, this message translates to:
  /// **'Flux / shot'**
  String get weaponCodexFluxShot;

  /// No description provided for @weaponCodexFluxPerDamage.
  ///
  /// In en, this message translates to:
  /// **'Flux / damage'**
  String get weaponCodexFluxPerDamage;

  /// No description provided for @weaponCodexFluxPerNonEmpDamage.
  ///
  /// In en, this message translates to:
  /// **'Flux / non-EMP damage'**
  String get weaponCodexFluxPerNonEmpDamage;

  /// No description provided for @weaponCodexLimitedCharges.
  ///
  /// In en, this message translates to:
  /// **'Limited charges ({count})'**
  String weaponCodexLimitedCharges(Object count);

  /// No description provided for @weaponCodexLimitedAmmo.
  ///
  /// In en, this message translates to:
  /// **'Limited ammo ({count})'**
  String weaponCodexLimitedAmmo(Object count);

  /// No description provided for @weaponCodexNoFluxLimitedCharges.
  ///
  /// In en, this message translates to:
  /// **'No flux cost to fire, limited charges ({count})'**
  String weaponCodexNoFluxLimitedCharges(Object count);

  /// No description provided for @weaponCodexNoFluxLimitedAmmo.
  ///
  /// In en, this message translates to:
  /// **'No flux cost to fire, limited ammo ({count})'**
  String weaponCodexNoFluxLimitedAmmo(Object count);

  /// No description provided for @weaponCodexNoFluxCost.
  ///
  /// In en, this message translates to:
  /// **'No flux cost to fire'**
  String get weaponCodexNoFluxCost;

  /// No description provided for @weaponCodexSectionAncillary.
  ///
  /// In en, this message translates to:
  /// **'Ancillary data'**
  String get weaponCodexSectionAncillary;

  /// No description provided for @weaponCodexDamageType.
  ///
  /// In en, this message translates to:
  /// **'Damage type'**
  String get weaponCodexDamageType;

  /// No description provided for @weaponCodexHitpoints.
  ///
  /// In en, this message translates to:
  /// **'Hitpoints'**
  String get weaponCodexHitpoints;

  /// No description provided for @weaponCodexTurnRate.
  ///
  /// In en, this message translates to:
  /// **'Turn rate'**
  String get weaponCodexTurnRate;

  /// No description provided for @weaponCodexMaxCharges.
  ///
  /// In en, this message translates to:
  /// **'Max charges'**
  String get weaponCodexMaxCharges;

  /// No description provided for @weaponCodexMaxAmmo.
  ///
  /// In en, this message translates to:
  /// **'Max ammo'**
  String get weaponCodexMaxAmmo;

  /// No description provided for @weaponCodexSecondsRecharge.
  ///
  /// In en, this message translates to:
  /// **'Seconds / recharge'**
  String get weaponCodexSecondsRecharge;

  /// No description provided for @weaponCodexSecondsReload.
  ///
  /// In en, this message translates to:
  /// **'Seconds / reload'**
  String get weaponCodexSecondsReload;

  /// No description provided for @weaponCodexChargesGained.
  ///
  /// In en, this message translates to:
  /// **'Charges gained'**
  String get weaponCodexChargesGained;

  /// No description provided for @weaponCodexReloadSize.
  ///
  /// In en, this message translates to:
  /// **'Reload size'**
  String get weaponCodexReloadSize;

  /// No description provided for @weaponCodexBurstSize.
  ///
  /// In en, this message translates to:
  /// **'Burst size'**
  String get weaponCodexBurstSize;

  /// No description provided for @weaponCodexRefireDelay.
  ///
  /// In en, this message translates to:
  /// **'Refire delay (seconds)'**
  String get weaponCodexRefireDelay;

  /// No description provided for @weaponCodexDamageKinetic.
  ///
  /// In en, this message translates to:
  /// **'Kinetic'**
  String get weaponCodexDamageKinetic;

  /// No description provided for @weaponCodexDamageHighExplosive.
  ///
  /// In en, this message translates to:
  /// **'High Explosive'**
  String get weaponCodexDamageHighExplosive;

  /// No description provided for @weaponCodexDamageFragmentation.
  ///
  /// In en, this message translates to:
  /// **'Fragmentation'**
  String get weaponCodexDamageFragmentation;

  /// No description provided for @weaponCodexDamageEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get weaponCodexDamageEnergy;

  /// No description provided for @weaponCodexDamageOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get weaponCodexDamageOther;

  /// No description provided for @weaponCodexDamageTypeBeam.
  ///
  /// In en, this message translates to:
  /// **'{name} (Beam)'**
  String weaponCodexDamageTypeBeam(Object name);

  /// No description provided for @weaponCodexDescKinetic.
  ///
  /// In en, this message translates to:
  /// **'200% vs shields, 50% vs armor'**
  String get weaponCodexDescKinetic;

  /// No description provided for @weaponCodexDescHighExplosive.
  ///
  /// In en, this message translates to:
  /// **'200% vs armor, 50% vs shields'**
  String get weaponCodexDescHighExplosive;

  /// No description provided for @weaponCodexDescFragmentation.
  ///
  /// In en, this message translates to:
  /// **'25% vs shields and armor, 100% vs hull'**
  String get weaponCodexDescFragmentation;

  /// No description provided for @weaponCodexDescEnergy.
  ///
  /// In en, this message translates to:
  /// **'100% vs shields, armor, and hull'**
  String get weaponCodexDescEnergy;

  /// No description provided for @weaponCodexNoHardFlux.
  ///
  /// In en, this message translates to:
  /// **'{desc} (no hard flux)'**
  String weaponCodexNoHardFlux(Object desc);

  /// No description provided for @weaponCodexRequiresBallisticEnergyHybrid.
  ///
  /// In en, this message translates to:
  /// **'Requires a Ballistic, Energy, or Hybrid slot'**
  String get weaponCodexRequiresBallisticEnergyHybrid;

  /// No description provided for @weaponCodexRequiresEnergyMissileSynergy.
  ///
  /// In en, this message translates to:
  /// **'Requires an Energy, Missile, or Synergy slot'**
  String get weaponCodexRequiresEnergyMissileSynergy;

  /// No description provided for @weaponCodexRequiresBallisticMissileComposite.
  ///
  /// In en, this message translates to:
  /// **'Requires a Ballistic, Missile, or Composite slot'**
  String get weaponCodexRequiresBallisticMissileComposite;

  /// No description provided for @weaponCodexUniversalSlot.
  ///
  /// In en, this message translates to:
  /// **'Can be installed in any type of slot'**
  String get weaponCodexUniversalSlot;

  /// No description provided for @weaponCodexQualityPerfect.
  ///
  /// In en, this message translates to:
  /// **'Perfect'**
  String get weaponCodexQualityPerfect;

  /// No description provided for @weaponCodexQualityExcellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get weaponCodexQualityExcellent;

  /// No description provided for @weaponCodexQualityGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get weaponCodexQualityGood;

  /// No description provided for @weaponCodexQualityMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get weaponCodexQualityMedium;

  /// No description provided for @weaponCodexQualityPoor.
  ///
  /// In en, this message translates to:
  /// **'Poor'**
  String get weaponCodexQualityPoor;

  /// No description provided for @weaponCodexQualityVeryPoor.
  ///
  /// In en, this message translates to:
  /// **'Very Poor'**
  String get weaponCodexQualityVeryPoor;

  /// No description provided for @weaponCodexQualityTerrible.
  ///
  /// In en, this message translates to:
  /// **'Terrible'**
  String get weaponCodexQualityTerrible;

  /// No description provided for @weaponCodexCantTurn.
  ///
  /// In en, this message translates to:
  /// **'Can\'t turn'**
  String get weaponCodexCantTurn;

  /// No description provided for @weaponCodexQualityVerySlow.
  ///
  /// In en, this message translates to:
  /// **'Very Slow'**
  String get weaponCodexQualityVerySlow;

  /// No description provided for @weaponCodexQualitySlow.
  ///
  /// In en, this message translates to:
  /// **'Slow'**
  String get weaponCodexQualitySlow;

  /// No description provided for @weaponCodexQualityFast.
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get weaponCodexQualityFast;

  /// No description provided for @weaponCodexQualityVeryFast.
  ///
  /// In en, this message translates to:
  /// **'Very Fast'**
  String get weaponCodexQualityVeryFast;

  /// No description provided for @weaponDetailsLabelType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get weaponDetailsLabelType;

  /// No description provided for @weaponDetailsRawType.
  ///
  /// In en, this message translates to:
  /// **'Raw Type'**
  String get weaponDetailsRawType;

  /// No description provided for @weaponDetailsSectionCombat.
  ///
  /// In en, this message translates to:
  /// **'Combat'**
  String get weaponDetailsSectionCombat;

  /// No description provided for @weaponDetailsSectionFireMechanics.
  ///
  /// In en, this message translates to:
  /// **'Fire Mechanics'**
  String get weaponDetailsSectionFireMechanics;

  /// No description provided for @weaponDetailsSectionAccuracySpread.
  ///
  /// In en, this message translates to:
  /// **'Accuracy & Spread'**
  String get weaponDetailsSectionAccuracySpread;

  /// No description provided for @weaponDetailsSectionProjectile.
  ///
  /// In en, this message translates to:
  /// **'Projectile'**
  String get weaponDetailsSectionProjectile;

  /// No description provided for @weaponDetailsSectionMisc.
  ///
  /// In en, this message translates to:
  /// **'Misc'**
  String get weaponDetailsSectionMisc;

  /// No description provided for @weaponDetailsEnergyShot.
  ///
  /// In en, this message translates to:
  /// **'Energy/Shot'**
  String get weaponDetailsEnergyShot;

  /// No description provided for @weaponDetailsEnergySec.
  ///
  /// In en, this message translates to:
  /// **'Energy/Sec'**
  String get weaponDetailsEnergySec;

  /// No description provided for @weaponDetailsSpreadDecaySec.
  ///
  /// In en, this message translates to:
  /// **'Spread Decay/Sec'**
  String get weaponDetailsSpreadDecaySec;

  /// No description provided for @weaponDetailsExtraArcAi.
  ///
  /// In en, this message translates to:
  /// **'Extra Arc (AI)'**
  String get weaponDetailsExtraArcAi;

  /// No description provided for @weaponDetailsNoDpsInTooltip.
  ///
  /// In en, this message translates to:
  /// **'No DPS In Tooltip'**
  String get weaponDetailsNoDpsInTooltip;

  /// No description provided for @weaponDetailsYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get weaponDetailsYes;

  /// No description provided for @weaponDetailsHints.
  ///
  /// In en, this message translates to:
  /// **'Hints'**
  String get weaponDetailsHints;

  /// No description provided for @weaponDetailsTags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get weaponDetailsTags;

  /// No description provided for @weaponDetailsForWeaponTooltip.
  ///
  /// In en, this message translates to:
  /// **'For Weapon Tooltip'**
  String get weaponDetailsForWeaponTooltip;

  /// No description provided for @weaponDetailsPrimaryRole.
  ///
  /// In en, this message translates to:
  /// **'Primary Role'**
  String get weaponDetailsPrimaryRole;

  /// No description provided for @weaponDetailsTurnRateTxt.
  ///
  /// In en, this message translates to:
  /// **'Turn Rate (txt)'**
  String get weaponDetailsTurnRateTxt;

  /// No description provided for @vramNoImages.
  ///
  /// In en, this message translates to:
  /// **'No images.'**
  String get vramNoImages;

  /// No description provided for @vramTopImagesTitle.
  ///
  /// In en, this message translates to:
  /// **'Images Estimated to Use the Most VRAM'**
  String get vramTopImagesTitle;

  /// No description provided for @vramTopImagesNote.
  ///
  /// In en, this message translates to:
  /// **'Note: Image dimensions in VRAM are usually bigger than actual.'**
  String get vramTopImagesNote;

  /// No description provided for @vramScanFileProgress.
  ///
  /// In en, this message translates to:
  /// **'{scanned} / {total} ({percent})'**
  String vramScanFileProgress(Object percent, Object scanned, Object total);

  /// No description provided for @vramDurationMinSec.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m {seconds}s'**
  String vramDurationMinSec(Object minutes, Object seconds);

  /// No description provided for @vramDurationSec.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String vramDurationSec(Object seconds);

  /// No description provided for @vramSelectorScanAllDeprecated.
  ///
  /// In en, this message translates to:
  /// **'Scan All (deprecated)'**
  String get vramSelectorScanAllDeprecated;

  /// No description provided for @vramSelectorFolderScanDesc.
  ///
  /// In en, this message translates to:
  /// **'Counts every image in mod folders, even unused ones. Overestimates VRAM use.'**
  String get vramSelectorFolderScanDesc;

  /// No description provided for @vramSelectorReferencedDesc.
  ///
  /// In en, this message translates to:
  /// **'Searches the mod\'s text files and code for image paths. More accurate than folder scan, but takes longer.'**
  String get vramSelectorReferencedDesc;

  /// No description provided for @vramRefShips.
  ///
  /// In en, this message translates to:
  /// **'Ship hulls (.ship + ship_data.csv)'**
  String get vramRefShips;

  /// No description provided for @vramRefShipsDesc.
  ///
  /// In en, this message translates to:
  /// **'Sprite paths referenced by .ship JSON files and ship_data.csv.'**
  String get vramRefShipsDesc;

  /// No description provided for @vramRefWeapons.
  ///
  /// In en, this message translates to:
  /// **'Weapons (.wpn + .proj + weapon_data.csv)'**
  String get vramRefWeapons;

  /// No description provided for @vramRefWeaponsDesc.
  ///
  /// In en, this message translates to:
  /// **'Sprite paths referenced by weapon JSON files, projectile JSON files, and weapon_data.csv.'**
  String get vramRefWeaponsDesc;

  /// No description provided for @vramRefFactions.
  ///
  /// In en, this message translates to:
  /// **'Factions (.faction)'**
  String get vramRefFactions;

  /// No description provided for @vramRefFactionsDesc.
  ///
  /// In en, this message translates to:
  /// **'Logo, crest, and portrait paths referenced by .faction JSON files.'**
  String get vramRefFactionsDesc;

  /// No description provided for @vramRefPortraits.
  ///
  /// In en, this message translates to:
  /// **'Portraits (portraits.csv)'**
  String get vramRefPortraits;

  /// No description provided for @vramRefPortraitsDesc.
  ///
  /// In en, this message translates to:
  /// **'Portrait paths listed in data/characters/portraits/portraits.csv.'**
  String get vramRefPortraitsDesc;

  /// No description provided for @vramRefSettingsGraphics.
  ///
  /// In en, this message translates to:
  /// **'settings.json graphics block'**
  String get vramRefSettingsGraphics;

  /// No description provided for @vramRefSettingsGraphicsDesc.
  ///
  /// In en, this message translates to:
  /// **'Paths declared in data/config/settings.json under the graphics block.'**
  String get vramRefSettingsGraphicsDesc;

  /// No description provided for @vramRefDataConfigJson.
  ///
  /// In en, this message translates to:
  /// **'data/config JSON files'**
  String get vramRefDataConfigJson;

  /// No description provided for @vramRefDataConfigJsonDesc.
  ///
  /// In en, this message translates to:
  /// **'Image paths found in JSON files under data/config/ (beyond settings.json).'**
  String get vramRefDataConfigJsonDesc;

  /// No description provided for @vramRefDataCsv.
  ///
  /// In en, this message translates to:
  /// **'data/ CSV files'**
  String get vramRefDataCsv;

  /// No description provided for @vramRefDataCsvDesc.
  ///
  /// In en, this message translates to:
  /// **'Image paths found in any CSV under data/ beyond the hull, weapon, and portrait tables (e.g. mod-defined campaign / world tables).'**
  String get vramRefDataCsvDesc;

  /// No description provided for @vramRefGraphicsLibMaps.
  ///
  /// In en, this message translates to:
  /// **'GraphicsLib maps (CSV + cache folder)'**
  String get vramRefGraphicsLibMaps;

  /// No description provided for @vramRefGraphicsLibMapsDesc.
  ///
  /// In en, this message translates to:
  /// **'Map paths declared in the mod\'s GraphicsLib CSV, plus GraphicsLib mod\'s own cache/ folder. Kept independently of base-sprite references.'**
  String get vramRefGraphicsLibMapsDesc;

  /// No description provided for @vramRefJarStrings.
  ///
  /// In en, this message translates to:
  /// **'JAR string literals'**
  String get vramRefJarStrings;

  /// No description provided for @vramRefJarStringsDesc.
  ///
  /// In en, this message translates to:
  /// **'Path-like string literals in compiled classes of every .jar in the mod.'**
  String get vramRefJarStringsDesc;

  /// No description provided for @vramRefJavaSources.
  ///
  /// In en, this message translates to:
  /// **'Loose .java sources'**
  String get vramRefJavaSources;

  /// No description provided for @vramRefJavaSourcesDesc.
  ///
  /// In en, this message translates to:
  /// **'Path-like string literals in any .java source file in the mod.'**
  String get vramRefJavaSourcesDesc;

  /// No description provided for @vramRefFrameAnimations.
  ///
  /// In en, this message translates to:
  /// **'Frame animations'**
  String get vramRefFrameAnimations;

  /// No description provided for @vramRefFrameAnimationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Finds auto-loaded frame siblings of referenced sprites. When a weapon/effect references e.g. foo_00.png, Starsector\'s engine also loads foo_01.png, foo_02.png, ... from the same folder.'**
  String get vramRefFrameAnimationsDesc;

  /// No description provided for @vramRefPhaseGlows.
  ///
  /// In en, this message translates to:
  /// **'Phase glows'**
  String get vramRefPhaseGlows;

  /// No description provided for @vramRefPhaseGlowsDesc.
  ///
  /// In en, this message translates to:
  /// **'Finds ship phase-glow siblings (e.g. foo_glow.png, foo_glow1.png) of referenced sprites. Starsector auto-loads these from the same folder when the base ship sprite is referenced.'**
  String get vramRefPhaseGlowsDesc;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get commonYes;

  /// No description provided for @commonId.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get commonId;

  /// No description provided for @commonTags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get commonTags;

  /// No description provided for @commonTier.
  ///
  /// In en, this message translates to:
  /// **'Tier'**
  String get commonTier;

  /// No description provided for @commonTechManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Tech/manufacturer'**
  String get commonTechManufacturer;

  /// No description provided for @commonLabelCount.
  ///
  /// In en, this message translates to:
  /// **'{label} ({count})'**
  String commonLabelCount(Object count, Object label);

  /// No description provided for @commonLabelValue.
  ///
  /// In en, this message translates to:
  /// **'{label}: {value}'**
  String commonLabelValue(Object label, Object value);

  /// No description provided for @shipSizeFrigate.
  ///
  /// In en, this message translates to:
  /// **'Frigate'**
  String get shipSizeFrigate;

  /// No description provided for @shipSizeDestroyer.
  ///
  /// In en, this message translates to:
  /// **'Destroyer'**
  String get shipSizeDestroyer;

  /// No description provided for @shipSizeCruiser.
  ///
  /// In en, this message translates to:
  /// **'Cruiser'**
  String get shipSizeCruiser;

  /// No description provided for @shipSizeCapital.
  ///
  /// In en, this message translates to:
  /// **'Capital'**
  String get shipSizeCapital;

  /// No description provided for @shipSizeFighter.
  ///
  /// In en, this message translates to:
  /// **'Fighter'**
  String get shipSizeFighter;

  /// No description provided for @factionViewerVanillaPercent.
  ///
  /// In en, this message translates to:
  /// **'Vanilla %'**
  String get factionViewerVanillaPercent;

  /// No description provided for @factionViewerAddedBy.
  ///
  /// In en, this message translates to:
  /// **'Added by'**
  String get factionViewerAddedBy;

  /// No description provided for @factionViewerAllFactions.
  ///
  /// In en, this message translates to:
  /// **'All Factions'**
  String get factionViewerAllFactions;

  /// No description provided for @factionViewerModifiedBy.
  ///
  /// In en, this message translates to:
  /// **'Modified by: {names}'**
  String factionViewerModifiedBy(Object names);

  /// No description provided for @factionViewerSource.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get factionViewerSource;

  /// No description provided for @factionViewerVisibility.
  ///
  /// In en, this message translates to:
  /// **'Visibility'**
  String get factionViewerVisibility;

  /// No description provided for @factionViewerSearchFactionId.
  ///
  /// In en, this message translates to:
  /// **'Faction ID'**
  String get factionViewerSearchFactionId;

  /// No description provided for @factionViewerSearchFactionDisplayName.
  ///
  /// In en, this message translates to:
  /// **'Faction display name'**
  String get factionViewerSearchFactionDisplayName;

  /// No description provided for @factionViewerSearchSourceModOrVanilla.
  ///
  /// In en, this message translates to:
  /// **'Source mod or vanilla'**
  String get factionViewerSearchSourceModOrVanilla;

  /// No description provided for @factionViewerSearchKnownShips.
  ///
  /// In en, this message translates to:
  /// **'Number of known ships'**
  String get factionViewerSearchKnownShips;

  /// No description provided for @factionViewerSearchKnownWeapons.
  ///
  /// In en, this message translates to:
  /// **'Number of known weapons'**
  String get factionViewerSearchKnownWeapons;

  /// No description provided for @factionViewerSearchKnownFighters.
  ///
  /// In en, this message translates to:
  /// **'Number of known fighters'**
  String get factionViewerSearchKnownFighters;

  /// No description provided for @factionViewerSearchHiddenFromIntel.
  ///
  /// In en, this message translates to:
  /// **'Whether faction is hidden from intel tab (true/false)'**
  String get factionViewerSearchHiddenFromIntel;

  /// No description provided for @factionViewerSearchDoctrineAggressionLevel.
  ///
  /// In en, this message translates to:
  /// **'Doctrine aggression level'**
  String get factionViewerSearchDoctrineAggressionLevel;

  /// No description provided for @factionViewerSearchDoctrineWarshipWeight.
  ///
  /// In en, this message translates to:
  /// **'Doctrine warship weight'**
  String get factionViewerSearchDoctrineWarshipWeight;

  /// No description provided for @factionViewerSearchDoctrineCarrierWeight.
  ///
  /// In en, this message translates to:
  /// **'Doctrine carrier weight'**
  String get factionViewerSearchDoctrineCarrierWeight;

  /// No description provided for @factionViewerSearchDoctrinePhaseShipWeight.
  ///
  /// In en, this message translates to:
  /// **'Doctrine phase ship weight'**
  String get factionViewerSearchDoctrinePhaseShipWeight;

  /// No description provided for @factionViewerSearchDoctrineFleetSize.
  ///
  /// In en, this message translates to:
  /// **'Doctrine fleet size (number of ships)'**
  String get factionViewerSearchDoctrineFleetSize;

  /// No description provided for @factionViewerSearchDoctrineShipSizePreference.
  ///
  /// In en, this message translates to:
  /// **'Doctrine ship size preference'**
  String get factionViewerSearchDoctrineShipSizePreference;

  /// No description provided for @factionViewerSearchDoctrineOfficerQuality.
  ///
  /// In en, this message translates to:
  /// **'Doctrine officer quality'**
  String get factionViewerSearchDoctrineOfficerQuality;

  /// No description provided for @factionViewerSearchDoctrineShipQuality.
  ///
  /// In en, this message translates to:
  /// **'Doctrine ship quality'**
  String get factionViewerSearchDoctrineShipQuality;

  /// No description provided for @factionProfileDialogFileSourceSuffix.
  ///
  /// In en, this message translates to:
  /// **' ({modName})'**
  String factionProfileDialogFileSourceSuffix(Object modName);

  /// No description provided for @finderPresetColonyHunter.
  ///
  /// In en, this message translates to:
  /// **'Colony Hunter'**
  String get finderPresetColonyHunter;

  /// No description provided for @finderPresetResourceBaron.
  ///
  /// In en, this message translates to:
  /// **'Resource Baron'**
  String get finderPresetResourceBaron;

  /// No description provided for @finderPresetCryosleeperNearby.
  ///
  /// In en, this message translates to:
  /// **'Cryosleeper Nearby'**
  String get finderPresetCryosleeperNearby;

  /// No description provided for @finderPresetSelfSufficient.
  ///
  /// In en, this message translates to:
  /// **'Self-Sufficient'**
  String get finderPresetSelfSufficient;

  /// No description provided for @finderNearbyRangeLyLabel.
  ///
  /// In en, this message translates to:
  /// **'{ly} LY'**
  String finderNearbyRangeLyLabel(Object ly);

  /// No description provided for @finderBottleneckHabitable.
  ///
  /// In en, this message translates to:
  /// **'Habitable'**
  String get finderBottleneckHabitable;

  /// No description provided for @finderBottleneckGasGiant.
  ///
  /// In en, this message translates to:
  /// **'Gas giant'**
  String get finderBottleneckGasGiant;

  /// No description provided for @finderBottleneckUnclaimedOnly.
  ///
  /// In en, this message translates to:
  /// **'Unclaimed only'**
  String get finderBottleneckUnclaimedOnly;

  /// No description provided for @finderBottleneckStableLocations.
  ///
  /// In en, this message translates to:
  /// **'Stable locations'**
  String get finderBottleneckStableLocations;

  /// No description provided for @finderBottleneckDistanceFromCore.
  ///
  /// In en, this message translates to:
  /// **'Distance from core'**
  String get finderBottleneckDistanceFromCore;

  /// No description provided for @finderBottleneckResourceFloor.
  ///
  /// In en, this message translates to:
  /// **'{resource} floor'**
  String finderBottleneckResourceFloor(Object resource);

  /// No description provided for @finderBottleneckNearLandmark.
  ///
  /// In en, this message translates to:
  /// **'Near {landmark}'**
  String finderBottleneckNearLandmark(Object landmark);

  /// No description provided for @sectorMapUninhabited.
  ///
  /// In en, this message translates to:
  /// **'Uninhabited'**
  String get sectorMapUninhabited;

  /// No description provided for @sectorMapSizeLabel.
  ///
  /// In en, this message translates to:
  /// **'size {size}'**
  String sectorMapSizeLabel(Object size);

  /// No description provided for @portraitsViewerReplacerTooltip.
  ///
  /// In en, this message translates to:
  /// **'Portrait Viewer: View and search portraits from your mods.\nPortrait Replacer: Drag and drop portraits from the right pane to replace portraits on the left pane.'**
  String get portraitsViewerReplacerTooltip;

  /// No description provided for @portraitsViewer.
  ///
  /// In en, this message translates to:
  /// **'Viewer'**
  String get portraitsViewer;

  /// No description provided for @portraitsReplacer.
  ///
  /// In en, this message translates to:
  /// **'Replacer'**
  String get portraitsReplacer;

  /// No description provided for @portraitsViewerInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'Displays images that are *likely* to be portraits from the highest version of each mod.\n\nBecause mods may use any image as a portrait and load images dynamically in code, this is not an exact science, but best guesses.\nPortraits must be:\n- Square\n- Between 128x128 and 256x256\n- An image file'**
  String get portraitsViewerInfoTooltip;

  /// No description provided for @portraitsTutorial.
  ///
  /// In en, this message translates to:
  /// **'Tutorial'**
  String get portraitsTutorial;

  /// No description provided for @portraitsHowToUse.
  ///
  /// In en, this message translates to:
  /// **'How To Use'**
  String get portraitsHowToUse;

  /// No description provided for @portraitsHowToUseBody.
  ///
  /// In en, this message translates to:
  /// **'On the left side are the portraits that you will see in-game.\nOn the right side is the {pool} - your options for replacing images on the left.\n\nGrab portraits from the right side and move them to the left side to replace what you see in-game.'**
  String portraitsHowToUseBody(Object pool);

  /// No description provided for @portraitsPortraitPool.
  ///
  /// In en, this message translates to:
  /// **'Portrait Pool'**
  String get portraitsPortraitPool;

  /// No description provided for @portraitsUnderTheHoodBody.
  ///
  /// In en, this message translates to:
  /// **'A list of portraits to replace is saved as a json file (in the {appName} data folder, which is synced one-way to the Companion Mod).\nThe {appName} Companion Mod reads that file when you load your game, then swaps the portraits for that game session only.\nIt does not change any mod files - replacement is all done in-memory, in-game.'**
  String portraitsUnderTheHoodBody(Object appName);

  /// No description provided for @portraitsImagesCount.
  ///
  /// In en, this message translates to:
  /// **'{total} images'**
  String portraitsImagesCount(Object total);

  /// No description provided for @portraitsImagesCountWithShown.
  ///
  /// In en, this message translates to:
  /// **'{total} images ({visible} shown)'**
  String portraitsImagesCountWithShown(num total, num visible);

  /// No description provided for @portraitsCompanionModNotFound.
  ///
  /// In en, this message translates to:
  /// **'{appName} Companion mod not found!\nPortrait Replacement will not work.\n\nClick to install it.'**
  String portraitsCompanionModNotFound(Object appName);

  /// No description provided for @portraitsCompanionModNotEnabled.
  ///
  /// In en, this message translates to:
  /// **'{appName} Companion mod is not enabled. Portrait replacements will not work.\n\nClick to enable it.'**
  String portraitsCompanionModNotEnabled(Object appName);

  /// No description provided for @portraitsCompanionModInstallFirst.
  ///
  /// In en, this message translates to:
  /// **'{appName} Companion Mod not found. Please install it first from Settings.'**
  String portraitsCompanionModInstallFirst(Object appName);

  /// No description provided for @portraitsImportCustomImages.
  ///
  /// In en, this message translates to:
  /// **'Import custom images to use as portrait replacements'**
  String get portraitsImportCustomImages;

  /// No description provided for @portraitsErrorLoading.
  ///
  /// In en, this message translates to:
  /// **'Error loading portraits: {error}'**
  String portraitsErrorLoading(Object error);

  /// No description provided for @portraitsReplacementAdded.
  ///
  /// In en, this message translates to:
  /// **'Replacement added: {original} -> {replacement}'**
  String portraitsReplacementAdded(Object original, Object replacement);

  /// No description provided for @portraitsOriginalFile.
  ///
  /// In en, this message translates to:
  /// **'Original: {file}'**
  String portraitsOriginalFile(Object file);

  /// No description provided for @portraitsOriginalFileNotFound.
  ///
  /// In en, this message translates to:
  /// **'Original file not found'**
  String get portraitsOriginalFileNotFound;

  /// No description provided for @portraitsReplacementFile.
  ///
  /// In en, this message translates to:
  /// **'Replacement: {file}'**
  String portraitsReplacementFile(Object file);

  /// No description provided for @portraitsReplacementFileNotFound.
  ///
  /// In en, this message translates to:
  /// **'Replacement file not found'**
  String get portraitsReplacementFileNotFound;

  /// No description provided for @portraitsReplacementModLabel.
  ///
  /// In en, this message translates to:
  /// **'Replacement Mod: {mod}'**
  String portraitsReplacementModLabel(Object mod);

  /// No description provided for @portraitsOpenOriginalImage.
  ///
  /// In en, this message translates to:
  /// **'Open original image'**
  String get portraitsOpenOriginalImage;

  /// No description provided for @portraitsOpenReplacementImage.
  ///
  /// In en, this message translates to:
  /// **'Open replacement image'**
  String get portraitsOpenReplacementImage;

  /// No description provided for @portraitsOpenFolder.
  ///
  /// In en, this message translates to:
  /// **'Open folder'**
  String get portraitsOpenFolder;

  /// No description provided for @portraitsRemoveReplacement.
  ///
  /// In en, this message translates to:
  /// **'Remove replacement'**
  String get portraitsRemoveReplacement;

  /// No description provided for @portraitsFactionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Factions: {factions}'**
  String portraitsFactionsLabel(Object factions);

  /// No description provided for @portraitsDimensionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Dimensions: {width} x {height}'**
  String portraitsDimensionsLabel(Object height, Object width);

  /// No description provided for @portraitsModLabel.
  ///
  /// In en, this message translates to:
  /// **'Mod: {mod}'**
  String portraitsModLabel(Object mod);

  /// No description provided for @portraitsFilterConfirmedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show images that are confirmed portraits.\n\nPortraits defined in .faction files have genders.\nPortraits from settings.json files do not.'**
  String get portraitsFilterConfirmedTooltip;

  /// No description provided for @portraitsFilterReplacedTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show images that have replacements.'**
  String get portraitsFilterReplacedTooltip;

  /// No description provided for @portraitsFilterEnabledModsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Only show images from enabled mods.'**
  String get portraitsFilterEnabledModsTooltip;

  /// No description provided for @portraitsFilterGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get portraitsFilterGender;

  /// No description provided for @portraitsFilePathNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'File path not available'**
  String get portraitsFilePathNotAvailable;

  /// No description provided for @portraitsFailedToCopy.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy: {error}'**
  String portraitsFailedToCopy(Object error);

  /// No description provided for @portraitsFailedToReadImage.
  ///
  /// In en, this message translates to:
  /// **'Failed to read image: {error}'**
  String portraitsFailedToReadImage(Object error);

  /// No description provided for @portraitsImageMustBeSquare.
  ///
  /// In en, this message translates to:
  /// **'Image must be square ({size} is not square)'**
  String portraitsImageMustBeSquare(Object size);

  /// No description provided for @portraitsImageSizeRange.
  ///
  /// In en, this message translates to:
  /// **'Image must be between {min}x{min} and {max}x{max} (got {size})'**
  String portraitsImageSizeRange(Object max, Object min, Object size);

  /// No description provided for @portraitsImportSummary.
  ///
  /// In en, this message translates to:
  /// **'{imported} imported successfully, {failed} failed'**
  String portraitsImportSummary(Object failed, Object imported);

  /// No description provided for @portraitsValidPortraitSingular.
  ///
  /// In en, this message translates to:
  /// **'{count} valid portrait'**
  String portraitsValidPortraitSingular(Object count);

  /// No description provided for @portraitsValidPortraitsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} valid portraits'**
  String portraitsValidPortraitsCount(Object count);

  /// No description provided for @portraitsFailedValidationSuffix.
  ///
  /// In en, this message translates to:
  /// **', {count} failed validation'**
  String portraitsFailedValidationSuffix(Object count);

  /// No description provided for @portraitsSelectGenderHint.
  ///
  /// In en, this message translates to:
  /// **'Select male or female for each portrait.\nPortraits in .faction files only support male and female.'**
  String get portraitsSelectGenderHint;

  /// No description provided for @portraitsAllMale.
  ///
  /// In en, this message translates to:
  /// **'All Male'**
  String get portraitsAllMale;

  /// No description provided for @portraitsAllFemale.
  ///
  /// In en, this message translates to:
  /// **'All Female'**
  String get portraitsAllFemale;

  /// No description provided for @hullmodsTechManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Tech/Manufacturer'**
  String get hullmodsTechManufacturer;

  /// No description provided for @hullmodsUiTags.
  ///
  /// In en, this message translates to:
  /// **'UI Tags'**
  String get hullmodsUiTags;

  /// No description provided for @hullmodsShortDesc.
  ///
  /// In en, this message translates to:
  /// **'Short Desc.'**
  String get hullmodsShortDesc;

  /// No description provided for @hullmodsOpFrigate.
  ///
  /// In en, this message translates to:
  /// **'OP (Frig)'**
  String get hullmodsOpFrigate;

  /// No description provided for @hullmodsOpDestroyer.
  ///
  /// In en, this message translates to:
  /// **'OP (Dest)'**
  String get hullmodsOpDestroyer;

  /// No description provided for @hullmodsOpCruiser.
  ///
  /// In en, this message translates to:
  /// **'OP (Cru)'**
  String get hullmodsOpCruiser;

  /// No description provided for @hullmodsOpCapital.
  ///
  /// In en, this message translates to:
  /// **'OP (Cap)'**
  String get hullmodsOpCapital;

  /// No description provided for @hullmodsAllHullmods.
  ///
  /// In en, this message translates to:
  /// **'All Hullmods'**
  String get hullmodsAllHullmods;

  /// No description provided for @hullmodsSearchTier.
  ///
  /// In en, this message translates to:
  /// **'Hullmod tier (1, 2, 3)'**
  String get hullmodsSearchTier;

  /// No description provided for @hullmodsSearchModNameSubstring.
  ///
  /// In en, this message translates to:
  /// **'Mod name substring match'**
  String get hullmodsSearchModNameSubstring;

  /// No description provided for @hullmodsSearchCsvTagMatchesAny.
  ///
  /// In en, this message translates to:
  /// **'CSV tag; matches any tag'**
  String get hullmodsSearchCsvTagMatchesAny;

  /// No description provided for @hullmodsSearchUiTagMatchesAny.
  ///
  /// In en, this message translates to:
  /// **'UI tag; matches any UI tag'**
  String get hullmodsSearchUiTagMatchesAny;

  /// No description provided for @hullmodsSearchRarityValue.
  ///
  /// In en, this message translates to:
  /// **'Rarity value'**
  String get hullmodsSearchRarityValue;

  /// No description provided for @hullmodsSearchBaseCreditValue.
  ///
  /// In en, this message translates to:
  /// **'Base credit value'**
  String get hullmodsSearchBaseCreditValue;

  /// No description provided for @hullmodsSearchOpCostFrigates.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points cost for frigates'**
  String get hullmodsSearchOpCostFrigates;

  /// No description provided for @hullmodsSearchOpCostDestroyers.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points cost for destroyers'**
  String get hullmodsSearchOpCostDestroyers;

  /// No description provided for @hullmodsSearchOpCostCruisers.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points cost for cruisers'**
  String get hullmodsSearchOpCostCruisers;

  /// No description provided for @hullmodsSearchOpCostCapitalShips.
  ///
  /// In en, this message translates to:
  /// **'Ordnance points cost for capital ships'**
  String get hullmodsSearchOpCostCapitalShips;

  /// No description provided for @hullmodCodexCardData.
  ///
  /// In en, this message translates to:
  /// **'Hullmod data'**
  String get hullmodCodexCardData;

  /// No description provided for @hullmodCodexCardOpCost.
  ///
  /// In en, this message translates to:
  /// **'OP cost'**
  String get hullmodCodexCardOpCost;

  /// No description provided for @hullmodCodexCardOpCostFrigate.
  ///
  /// In en, this message translates to:
  /// **'OP cost (Frigate)'**
  String get hullmodCodexCardOpCostFrigate;

  /// No description provided for @hullmodCodexCardOpCostDestroyer.
  ///
  /// In en, this message translates to:
  /// **'OP cost (Destroyer)'**
  String get hullmodCodexCardOpCostDestroyer;

  /// No description provided for @hullmodCodexCardOpCostCruiser.
  ///
  /// In en, this message translates to:
  /// **'OP cost (Cruiser)'**
  String get hullmodCodexCardOpCostCruiser;

  /// No description provided for @hullmodCodexCardOpCostCapital.
  ///
  /// In en, this message translates to:
  /// **'OP cost (Capital)'**
  String get hullmodCodexCardOpCostCapital;

  /// No description provided for @hullmodCodexCardTags.
  ///
  /// In en, this message translates to:
  /// **'Tags: {tags}'**
  String hullmodCodexCardTags(Object tags);

  /// No description provided for @hullmodCodexCardSModBonus.
  ///
  /// In en, this message translates to:
  /// **'S-Mod bonus'**
  String get hullmodCodexCardSModBonus;

  /// No description provided for @codexFacetType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get codexFacetType;

  /// No description provided for @codexFacetMountType.
  ///
  /// In en, this message translates to:
  /// **'Mount type'**
  String get codexFacetMountType;

  /// No description provided for @codexFacetDamageType.
  ///
  /// In en, this message translates to:
  /// **'Damage type'**
  String get codexFacetDamageType;

  /// No description provided for @codexFacetTypeSpecial.
  ///
  /// In en, this message translates to:
  /// **'Special'**
  String get codexFacetTypeSpecial;

  /// No description provided for @codexShipTypeCarrier.
  ///
  /// In en, this message translates to:
  /// **'Carrier'**
  String get codexShipTypeCarrier;

  /// No description provided for @codexShipTypeCivilian.
  ///
  /// In en, this message translates to:
  /// **'Civilian'**
  String get codexShipTypeCivilian;

  /// No description provided for @codexShipTypePhase.
  ///
  /// In en, this message translates to:
  /// **'Phase'**
  String get codexShipTypePhase;

  /// No description provided for @codexShipTypeWarship.
  ///
  /// In en, this message translates to:
  /// **'Warship'**
  String get codexShipTypeWarship;

  /// No description provided for @codexLabelStations.
  ///
  /// In en, this message translates to:
  /// **'Stations'**
  String get codexLabelStations;

  /// No description provided for @codexLabelShipSystems.
  ///
  /// In en, this message translates to:
  /// **'Ship Systems'**
  String get codexLabelShipSystems;

  /// No description provided for @codexLabelFighters.
  ///
  /// In en, this message translates to:
  /// **'Fighters'**
  String get codexLabelFighters;

  /// No description provided for @codexGroupingOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get codexGroupingOther;

  /// No description provided for @codexWeaponSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{size} {type} weapon'**
  String codexWeaponSubtitle(Object size, Object type);

  /// No description provided for @shipSystemCodexCardSystemData.
  ///
  /// In en, this message translates to:
  /// **'System data'**
  String get shipSystemCodexCardSystemData;

  /// No description provided for @shipSystemCodexCardFluxPerUse.
  ///
  /// In en, this message translates to:
  /// **'Flux per use'**
  String get shipSystemCodexCardFluxPerUse;

  /// No description provided for @shipSystemCodexCardFluxPerSecond.
  ///
  /// In en, this message translates to:
  /// **'Flux per second'**
  String get shipSystemCodexCardFluxPerSecond;

  /// No description provided for @shipSystemCodexCardMaxUses.
  ///
  /// In en, this message translates to:
  /// **'Max uses'**
  String get shipSystemCodexCardMaxUses;

  /// No description provided for @shipSystemCodexCardRegen.
  ///
  /// In en, this message translates to:
  /// **'Regen'**
  String get shipSystemCodexCardRegen;

  /// No description provided for @shipSystemCodexCardCooldown.
  ///
  /// In en, this message translates to:
  /// **'Cooldown'**
  String get shipSystemCodexCardCooldown;

  /// No description provided for @shipSystemCodexCardToggle.
  ///
  /// In en, this message translates to:
  /// **'Toggle'**
  String get shipSystemCodexCardToggle;

  /// No description provided for @shipSystemCodexCardPhaseCloak.
  ///
  /// In en, this message translates to:
  /// **'Phase cloak'**
  String get shipSystemCodexCardPhaseCloak;

  /// No description provided for @app_action_buttonsReportABug.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get app_action_buttonsReportABug;
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
