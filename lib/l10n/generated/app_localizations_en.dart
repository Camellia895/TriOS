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

  @override
  String get catalogAlwaysLoad => 'Always Load';

  @override
  String get catalogAlsoInThisThread => 'Also in this thread';

  @override
  String get catalogAlsoNeeds => 'Also needs:';

  @override
  String get catalogBack => 'Back';

  @override
  String get catalogBrowser => 'Browser';

  @override
  String get catalogCancel => 'Cancel';

  @override
  String get catalogClearCache => 'Clear cache';

  @override
  String get catalogClose => 'Close';

  @override
  String get catalogCopyBestDownloadHint =>
      'Copy the best download link to the clipboard';

  @override
  String get catalogCopyDiscordLink => 'Copy Discord link';

  @override
  String get catalogCopyDownloadLink => 'Copy download link';

  @override
  String get catalogCopyUrl => 'Copy URL';

  @override
  String get catalogDataSources => 'Data sources…';

  @override
  String get catalogDataSourcesTitle => 'Catalog Data Sources';

  @override
  String get catalogDebugInfo => 'Debug Info';

  @override
  String get catalogDirectDownload => 'Direct download';

  @override
  String get catalogDisable => 'Disable';

  @override
  String get catalogDiscordLinkCopied => 'Discord link copied to clipboard';

  @override
  String get catalogDonationLinks => 'Donation links';

  @override
  String get catalogDownload => 'Download';

  @override
  String catalogDownloadConfirmPrompt(String modName) {
    return 'Do you want to download \'$modName\'?';
  }

  @override
  String get catalogDownloadLinkCopied => 'Download link copied to clipboard';

  @override
  String get catalogDownloads => 'Downloads';

  @override
  String get catalogEdited => '  •  Edited ';

  @override
  String get catalogEnable => 'Enable';

  @override
  String get catalogForward => 'Forward';

  @override
  String get catalogForumIndexSubforumsAndDiscord =>
      'forum index, subforums, and discord';

  @override
  String get catalogFullChangelog => 'Full changelog';

  @override
  String get catalogGameVersion => 'Game Version';

  @override
  String get catalogGridItemMinSize => 'Grid item min. size';

  @override
  String get catalogHasUpdate => 'Has Update';

  @override
  String catalogInCategory(String category) {
    return 'in $category';
  }

  @override
  String get catalogIndex => 'Index';

  @override
  String get catalogInstalled => 'Installed';

  @override
  String get catalogInstalledMod => 'Installed Mod';

  @override
  String get catalogLicense => 'License';

  @override
  String get catalogLinks => 'Links';

  @override
  String get catalogLoadOnce => 'Load Once';

  @override
  String catalogMutedUpdates(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count muted updates',
      one: '$count muted update',
    );
    return '$_temp0';
  }

  @override
  String catalogMutedUpdatesBadge(num count) {
    return '+ $count';
  }

  @override
  String get catalogOk => 'Ok';

  @override
  String get catalogOpen => 'Open';

  @override
  String get catalogOpenCacheFolder => 'Open cache folder';

  @override
  String get catalogOpenCacheFolderTooltip =>
      'Open the cache folder in your file explorer';

  @override
  String get catalogOpenFile => 'Open File';

  @override
  String get catalogOpenForumPage => 'Open forum page';

  @override
  String get catalogOpenInBrowser => 'Open in Browser';

  @override
  String get catalogOpenInBuiltInBrowser => 'Open in the built-in browser';

  @override
  String get catalogOpenInDiscord => 'Open in Discord';

  @override
  String get catalogOpenInWebBrowser => 'Open in your web browser';

  @override
  String get catalogOpenNexusModsPage => 'Open NexusMods page';

  @override
  String get catalogOtherDownloadOptions => 'Other download options';

  @override
  String get catalogPosted => 'Posted ';

  @override
  String catalogPreparingToInstall(String modName) {
    return 'Preparing to install $modName…';
  }

  @override
  String get catalogQbsForumBundle => 'QB\'s Forum Bundle';

  @override
  String get catalogReadFullLicense => 'Read full license';

  @override
  String get catalogReadLicense => 'Read the license';

  @override
  String get catalogRecentUpdates => 'Recent updates';

  @override
  String catalogRecentUpdatesCount(num count) {
    return 'Recent updates ($count)';
  }

  @override
  String get catalogRecheck => 'Recheck';

  @override
  String get catalogRefreshNow => 'Refresh now';

  @override
  String get catalogReload => 'Reload';

  @override
  String catalogRestart(String appName) {
    return 'and then restart $appName.';
  }

  @override
  String get catalogSaveCompatibility => 'Save compatibility';

  @override
  String catalogSliderValueWithUnit(num value, String unit) {
    return '$value $unit';
  }

  @override
  String get catalogSourceCode => 'Source code';

  @override
  String catalogSourceCodeHost(String hostName) {
    return '$hostName  ';
  }

  @override
  String get catalogSpaceBetweenCards => 'Space between cards';

  @override
  String get catalogSummary => 'Summary';

  @override
  String get catalogViewModDetails => 'View Mod Details...';

  @override
  String get catalogWebsite => 'Website';

  @override
  String get catalogWispsModRepo => 'Wisp\'s Mod Repo';

  @override
  String chatbotAppVersion(String appName, String version) {
    return '$appName v$version';
  }

  @override
  String get chatbotAllEnabledModsAppearCompatible =>
      'All enabled mods appear compatible!';

  @override
  String get chatbotAllInstalledModsAreCurrentlyEnabled =>
      'All installed mods are currently enabled.';

  @override
  String get chatbotAllModsAreUpToDate => 'All mods are up to date!';

  @override
  String chatbotChangelogFor(String name, String text) {
    return 'Changelog for $name:\n$text';
  }

  @override
  String get chatbotCouldNotDetermineCurrentRam =>
      'Could not determine current RAM allocation. Make sure your game folder is configured in Settings.';

  @override
  String chatbotCurrentRamAllocation(String ram, String ramGb) {
    return 'Current RAM allocation: $ram MB$ramGb\n\nTo change this, go to the Dashboard page and adjust the\nRAM slider, or ask \"more ram\" for recommendations.';
  }

  @override
  String get chatbotSuggestionHelpMeWithMods => 'Help me with mods';

  @override
  String get chatbotModMetadataNotAvailableYet =>
      'Mod metadata is not available yet.';

  @override
  String get chatbotNoRamInformationAvailable =>
      'No RAM information available. Make sure your game folder is configured in Settings.';

  @override
  String get chatbotNoVramDataAvailable =>
      'No VRAM data available yet.\nOpen the VRAM Estimator page in the sidebar to run a scan.';

  @override
  String get chatbotNoChangelogsLoadedYet =>
      'No changelogs loaded yet. Changelogs are fetched when mod updates are checked.';

  @override
  String get chatbotNoConflictsFound =>
      'No conflicts found among your enabled mods.';

  @override
  String get chatbotNoErrorsFoundInLog =>
      'No errors found in the log. Looks good!';

  @override
  String get chatbotNoModCategoriesDefinedYet =>
      'No mod categories defined yet.\nYou can create categories in the Mod Manager by right-clicking a mod.';

  @override
  String get chatbotNoModChangeHistory => 'No mod change history recorded yet.';

  @override
  String get chatbotNoModDependenciesFound => 'No mod dependencies found.';

  @override
  String chatbotNoModFoundMatching(String query) {
    return 'No mod found matching \"$query\".';
  }

  @override
  String chatbotNoModFoundMatchingHint(String query) {
    return 'No mod found matching \"$query\". Check your spelling, try a shorter name, or use an acronym.';
  }

  @override
  String get chatbotNoModMetadataAvailable => 'No mod metadata available.';

  @override
  String get chatbotNoModProfileToCompare =>
      'No mod profile is currently active to compare against.';

  @override
  String get chatbotNoModProfileActive =>
      'No mod profile is currently active.\nCreate and activate a profile on the Mod Profiles page.';

  @override
  String get chatbotNoModProfilesSaved =>
      'No mod profiles saved yet.\nCreate profiles on the Mod Profiles page to save different mod configurations.';

  @override
  String get chatbotNoModsCurrentlyEnabled => 'No mods are currently enabled.';

  @override
  String get chatbotNoModsInstalled => 'No mods are installed.';

  @override
  String chatbotNoModsFoundByAuthor(String authorQuery) {
    return 'No mods found by author \"$authorQuery\".';
  }

  @override
  String get chatbotNoModsDetectedInLog =>
      'No mods were detected in the log file.';

  @override
  String get chatbotNoTipsAvailable =>
      'No tips available. Tips come from your installed mods\' mod_info.json files.';

  @override
  String get chatbotNoTotalConversionMods =>
      'No total conversion mods are installed.';

  @override
  String get chatbotNoUtilityLibraryMods =>
      'No utility/library mods are installed.';

  @override
  String get chatbotStarsectorNotRunning =>
      'Starsector does not appear to be running.';

  @override
  String get chatbotStarsectorCurrentlyRunning =>
      'Starsector is currently running.\nNote: Mod changes won\'t take effect until you restart the game.';

  @override
  String get chatbotSuggestionTroubleshoot => 'Troubleshoot';

  @override
  String get chatbotVersionCheckDataNotAvailable =>
      'Version check data is not available yet. Try again in a moment.';

  @override
  String get chatbotSuggestionWhatCanYouDo => 'What can you do?';

  @override
  String chatbotYouAreRunningNoUpdateInfo(String appName, String version) {
    return 'You are running $appName v$version.\nNo update information available at this time.';
  }

  @override
  String chatbotYouAreRunningUpdating(String appName, String version) {
    return 'You are running $appName v$version.\nAn update is being downloaded. Check the Settings page for details.';
  }

  @override
  String chatbotFindItInSidebar(String page) {
    return 'You can find it in the sidebar:\n  $page';
  }

  @override
  String get chatbotYouHaveZeroMods =>
      'You have zero mods enabled. That\'s not a modlist.';

  @override
  String chatbotYourLogFileIsAt(String path) {
    return 'Your log file is at:\n$path';
  }

  @override
  String modManagerModsSelected(num count) {
    return '$count mods selected';
  }

  @override
  String modManagerModsCount(num count) {
    return '$count mods';
  }

  @override
  String get wispgridGroupReEstimateVramUsage => '(Re)estimate VRAM Usage';

  @override
  String get modsGridNoneActive => '(none active)';

  @override
  String get modsGridAboutVramVramEstimator => 'About VRAM & VRAM Estimator';

  @override
  String get createCategoryDialogAddCategory => 'Add Category';

  @override
  String get categoryContextMenuAddCategory => 'Add Category...';

  @override
  String get modsGridAddMods => 'Add Mod(s)';

  @override
  String get modsGridAddSecondGroupingLevel =>
      'Add a second level of grouping under the primary group.';

  @override
  String get categoryContextMenuAllIcons => 'All icons…';

  @override
  String get modSummaryAuthor => 'Author';

  @override
  String get modContextMenuCategories => 'Categories';

  @override
  String get modsGridCategory => 'Category';

  @override
  String get categoryContextMenuCategoryColor => 'Category Color';

  @override
  String get categoryContextMenuCategoryIcon => 'Category Icon';

  @override
  String get modContextMenuChangeCategory => 'Change Category';

  @override
  String get categoryManagementPopupChangeColor => 'Change color';

  @override
  String get modsGridChangeGrouping =>
      'Change how mods are grouped in the grid.';

  @override
  String get categoryManagementPopupChangeIcon => 'Change icon';

  @override
  String get modContextMenuCheckVramOfSelected => 'Check VRAM of selected';

  @override
  String get modContextMenuCheckForUpdates => 'Check for updates';

  @override
  String get categoryContextMenuChooseCategories => 'Choose Categories';

  @override
  String get modManagerClear => 'Clear';

  @override
  String get createCategoryDialogColor => 'Color:';

  @override
  String get modListExporterCopiedToClipboard =>
      'Copied mod list to clipboard.';

  @override
  String get modsGridCopyAllModsToClipboard => 'Copy All Mods to Clipboard';

  @override
  String get modsGridCopyEnabledModsToClipboard =>
      'Copy Enabled Mods to Clipboard';

  @override
  String get modContextMenuCopyToClipboard => 'Copy to clipboard';

  @override
  String get createCategoryDialogCreate => 'Create';

  @override
  String get categoryManagementPopupCustom => 'Custom';

  @override
  String modManagerDataIssuesIn(String modName) {
    return 'Data issues in $modName';
  }

  @override
  String get categoryManagementPopupDelete => 'Delete';

  @override
  String categoryManagementPopupDeleteCategory(String categoryName) {
    return 'Delete \"$categoryName\"?';
  }

  @override
  String get modInfoDialogDependencies => 'Dependencies';

  @override
  String get modInfoDialogDependents => 'Dependents';

  @override
  String get modInfoDialogDescription => 'Description';

  @override
  String get modsGridDisableAll => 'Disable All';

  @override
  String get modsGridDisableAllMods => 'Disable All Mods';

  @override
  String get modsGridDontShowUpdates => 'Don\'t show updates';

  @override
  String get categoryManagementPopupDone => 'Done';

  @override
  String get modsGridEnableAll => 'Enable All';

  @override
  String get modsGridEnableAllMods => 'Enable All Mods';

  @override
  String get modInstallationErrorDialogError => 'Error';

  @override
  String get modsGridEstimate => 'Estimate';

  @override
  String get modsGridEstimateVram => 'Estimate VRAM';

  @override
  String get modInfoDialogEstimateVramUsage => 'Estimate VRAM usage';

  @override
  String get modsGridFirstSeen => 'First Seen';

  @override
  String get modSummaryFirstSeenByTrios => 'First seen by TriOS';

  @override
  String modContextMenuForceToVersion(String version) {
    return 'Force to $version';
  }

  @override
  String get wispgridGroupRowGroupBy => 'Group By';

  @override
  String get wispgridGroupRowHeaderStyle => 'Header Style';

  @override
  String get wispgridHeaderRowHideAll => 'Hide All';

  @override
  String get modManagerHideModDataWarnings => 'Hide mod data warnings';

  @override
  String get wispgridHeaderRowHideShowColumns => 'Hide/Show Columns';

  @override
  String categoryIconPickerDialogIconFor(String modName) {
    return 'Icon for $modName';
  }

  @override
  String get createCategoryDialogIcon => 'Icon:';

  @override
  String get wispGridIncoherentScreaming => 'Incoherent screaming';

  @override
  String get modsGridItDoesntMeanOld => 'It doesn\'t mean you\'re old.';

  @override
  String get modSummaryLastEnabledByTrios => 'Last enabled by TriOS';

  @override
  String get wispgridGroupRowLine => 'Line';

  @override
  String get modsGridLoad => 'Load #';

  @override
  String get categoryManagementPopupManageCategories => 'Manage Categories';

  @override
  String get wispgridGroupManageCategories => 'Manage Categories...';

  @override
  String get categoryManagementPopupMaterial => 'Material';

  @override
  String get auditModAuditLog => 'Mod Audit Log';

  @override
  String get modsGridModButtonsHighContrast => 'Mod Buttons: High Contrast';

  @override
  String get modContextMenuModColor => 'Mod Color';

  @override
  String get modInfoDialogModIndex => 'Mod Index';

  @override
  String get modInfoDialogModInfo => 'Mod Info';

  @override
  String get modInfoDialogModRepo => 'Mod Repo';

  @override
  String get modsGridMoreOptions => 'More options';

  @override
  String get modsGridName => 'Name';

  @override
  String get categoryIconPickerDialogNoIcon => 'No Icon';

  @override
  String get categoryIconPickerDialogNoIconsFound => 'No icons found';

  @override
  String get categoryIconPickerDialogNoMaterialIconsFound =>
      'No material icons found';

  @override
  String get modsGridOnlyShowEnabledMods => 'Only show enabled mods';

  @override
  String get modInfoDialogOpenFolder => 'Open Folder';

  @override
  String get modInfoDialogOpenPage => 'Open Page';

  @override
  String get modInstallationErrorDialogOpenStarsectorModsFolder =>
      'Open Starsector mods folder';

  @override
  String get modInfoDialogOpenModFolder => 'Open mod folder';

  @override
  String get modsGridOpenSidePanel => 'Open side panel';

  @override
  String get createCategoryDialogPickAColor => 'Pick a color';

  @override
  String get modsGridPinFavoritedModsToTop => 'Pin Favorited Mods to Top';

  @override
  String get modsGridProfile => 'Profile:';

  @override
  String get categoryContextMenuRename => 'Rename';

  @override
  String categoryContextMenuRenameCategory(String categoryName) {
    return 'Rename \"$categoryName\"';
  }

  @override
  String get wispgridGroupRepeatModsInEachCategory =>
      'Repeat Mods In Each Category';

  @override
  String get modInstallSelectionDialogReplaceAllAlreadyPresent =>
      'Replace all already-present mods';

  @override
  String get wispgridHeaderRowResetGridLayout => 'Reset grid layout';

  @override
  String get modVersionSelectionDropdownSelectADifferentVersion =>
      'Select a different version';

  @override
  String get categoryContextMenuSetPrimaryCategory => 'Set Primary Category';

  @override
  String get wispgridGroupRowShortCard => 'Short Card';

  @override
  String get wispgridHeaderRowShowAll => 'Show All';

  @override
  String get modsGridShowModDataWarnings => 'Show Mod Data Warnings';

  @override
  String get modsGridShowAllUpdates => 'Show all updates';

  @override
  String get modInstallationErrorDialogShowModFile => 'Show mod file';

  @override
  String get modsGridShowUnmutedUpdates => 'Show unmuted updates';

  @override
  String get modInfoDialogSources => 'Sources';

  @override
  String get wispgridGroupRowTallCard => 'Tall Card';

  @override
  String get wispgridGroupRowThenBy => 'Then By';

  @override
  String get modInfoDialogTrios => 'TriOS';

  @override
  String get modInfoDialogUpdate => 'Update';

  @override
  String get modsGridUpdatesVisibility => 'Updates Visibility';

  @override
  String modInfoDialogUpdatesStatus(String updatesStatus) {
    return 'Updates: $updatesStatus';
  }

  @override
  String get modInfoDialogVram => 'VRAM';

  @override
  String get modsGridVramEst => 'VRAM Est.';

  @override
  String get modsGridVersion => 'Version';

  @override
  String get modSummaryVersions => 'Version(s)';

  @override
  String modInfoDialogByAuthor(String author) {
    return 'by $author';
  }

  @override
  String modManagerVersionShort(String version) {
    return 'v$version';
  }

  @override
  String profileModsCount(num count) {
    return '$count mods';
  }

  @override
  String get profileTheyMayClick => '3. They may click';

  @override
  String profileActivateConfirm(String profileName) {
    return 'Activate \'$profileName\'?';
  }

  @override
  String get profileBackupAndActivate => 'Back up Profile & Activate';

  @override
  String get profileBothIdentical => 'Both profiles are identical.';

  @override
  String get profileClipboardEmpty => 'Clipboard is empty';

  @override
  String get profileCopyButtonOnA => 'Copy button on a Mod Profile.';

  @override
  String get profileCopyMissingToClipboard => 'Copy missing to clipboard';

  @override
  String get profileCopyToClipboard => 'Copy mod profile to clipboard';

  @override
  String get profileCreateProfile => 'Create Profile';

  @override
  String get profileDeleteProfile => 'Delete profile';

  @override
  String get profileDeleteProfileConfirm => 'Delete profile?';

  @override
  String get profileDuplicateProfile => 'Duplicate profile';

  @override
  String profileFailedToImport(String error) {
    return 'Failed to import profile: $error';
  }

  @override
  String get profileImport => 'Import';

  @override
  String get profileImportASharedProfile =>
      'Import a shared mod Profile from clipboard';

  @override
  String get profileImportAsCopy => 'Import as Copy';

  @override
  String profileImported(String name) {
    return 'Successfully imported profile: $name';
  }

  @override
  String profileImportUnable(String name) {
    return 'Unable to import profile \'$name\'.';
  }

  @override
  String get profileMissingMods => 'Missing Mods';

  @override
  String get profileMissingVersions => 'Missing Versions';

  @override
  String get profileModProfiles => 'Mod Profiles';

  @override
  String get profileModListCopied => 'Mod list copied to clipboard';

  @override
  String get profileNewProfile => 'New Profile';

  @override
  String get profileOk => 'OK';

  @override
  String get profileOpenSaveFolder => 'Open save folder';

  @override
  String get profileAlreadyExists => 'Profile Already Exists';

  @override
  String get profileRereadFromSavesFolder => 'Reread from Saves folder';

  @override
  String get profileSearchCatalog => 'Search Catalog';

  @override
  String get profileSharingModProfiles => 'Sharing Mod Profiles';

  @override
  String get profileOverwriteExisting => 'Overwrite Existing';

  @override
  String get profileWip => 'WIP';

  @override
  String get recordAuthorLabel => 'Author: ';

  @override
  String get recordAuthorsLabel => 'Authors: ';

  @override
  String get recordCatalog => 'Catalog';

  @override
  String get recordCatalogNameLabel => 'Catalog Name: ';

  @override
  String get recordCategoriesLabel => 'Categories: ';

  @override
  String get recordChangelogUrlLabel => 'Changelog URL: ';

  @override
  String get recordDirectDownloadUrlLabel => 'Direct Download URL: ';

  @override
  String get recordDiscordUrlLabel => 'Discord URL: ';

  @override
  String get recordDownloadHistory => 'Download History';

  @override
  String get recordDownloadPageUrlLabel => 'Download Page URL: ';

  @override
  String get recordDownloadedAtLabel => 'Downloaded At: ';

  @override
  String get recordDownloadedFromLabel => 'Downloaded From: ';

  @override
  String get recordFirstSeenLabel => 'First Seen: ';

  @override
  String get recordForumThreadIdLabel => 'Forum Thread ID: ';

  @override
  String get recordForumUrlLabel => 'Forum URL: ';

  @override
  String get recordIdentity => 'Identity';

  @override
  String get recordLastSeenLabel => 'Last Seen: ';

  @override
  String get recordMasterVersionFileUrlLabel => 'Master Version File URL: ';

  @override
  String get recordModIdLabel => 'Mod ID: ';

  @override
  String recordModSourcesTitle(String name) {
    return 'Mod Sources: $name';
  }

  @override
  String get recordNameLabel => 'Name: ';

  @override
  String get recordNamesLabel => 'Names: ';

  @override
  String get recordNexusModsIdLabel => 'Nexus Mods ID: ';

  @override
  String get recordNexusUrlLabel => 'Nexus URL: ';

  @override
  String get recordPathLabel => 'Path: ';

  @override
  String get recordKeyLabel => 'Record Key: ';

  @override
  String get recordSave => 'Save';

  @override
  String get recordVersionChecker => 'Version Checker';

  @override
  String get recordVersionLabel => 'Version: ';

  @override
  String get portraitConfirmedPortraits => 'Confirmed Portraits';

  @override
  String get portraitOnlyYourChanges => 'Only Your Changes';

  @override
  String portraitErrorAddingReplacement(String error) {
    return 'Error adding replacement: $error';
  }

  @override
  String portraitErrorImporting(String error) {
    return 'Error importing portraits: $error';
  }

  @override
  String get portraitFemale => 'Female';

  @override
  String portraitIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String get portraitImportPortraits => 'Import Portrait(s)';

  @override
  String get portraitImportResults => 'Import Results';

  @override
  String get portraitLoading => 'Loading portraits...';

  @override
  String get portraitMale => 'Male';

  @override
  String get portraitNoOthersAvailable =>
      'No other portraits available for replacement';

  @override
  String get portraitNoneFound => 'No portrait replacements found.';

  @override
  String get portraitOpenOriginalFolder => 'Open Folder Of Original';

  @override
  String get portraitOpenReplacementFolder => 'Open Folder of Replacement';

  @override
  String get portraitOpenOriginal => 'Open Original';

  @override
  String get portraitOpenReplacement => 'Open Replacement';

  @override
  String get portraitOriginal => 'Original';

  @override
  String get portraitOriginalNotFound => 'Original portrait not found';

  @override
  String portraitPathLabel(String path) {
    return 'Path: $path';
  }

  @override
  String get portraitPickReplacement => 'Pick Replacement';

  @override
  String get portraitReplacement => 'Portrait Replacement';

  @override
  String get portraitReplacements => 'Portrait Replacements';

  @override
  String get portraitRetry => 'Retry';

  @override
  String get portraitRevertToOriginal => 'Revert to Original';

  @override
  String get portraitShowFilters => 'Show filters';

  @override
  String portraitSizeLabel(String size) {
    return 'Size: $size';
  }

  @override
  String get portraitUnderTheHood => 'Under the Hood';

  @override
  String get portraitViewReplacements => 'View Replacements';

  @override
  String get shipsAlwaysShowEngineGlow => 'Always show engine glow';

  @override
  String get shipsCopiedSpriteToClipboard => 'Copied sprite to clipboard.';

  @override
  String get shipsCopySpriteToClipboard => 'Copy sprite to clipboard';

  @override
  String get shipsOpenShipDataCsv => 'Open ship_data.csv';

  @override
  String get shipsOpenSpriteFolder => 'Open sprite folder';

  @override
  String get shipsHasBuiltInWeapons => 'Has Built-in Weapons';

  @override
  String get shipsHasModules => 'Has Modules';

  @override
  String get shipsShowShipsThatAreModules => 'Show Ships That Are Modules';

  @override
  String get hullmodsSpoilers => 'Spoilers';

  @override
  String get weaponsAlwaysShowWeaponGlow => 'Always show weapon glow';

  @override
  String get weaponsOpenWpnFile => 'Open .wpn file';

  @override
  String get weaponsOpenWeaponDataFolder => 'Open weapon data folder(s)';

  @override
  String get weaponsOpenWeaponDataCsv => 'Open weapon_data.csv';

  @override
  String get weaponsShowHiddenWeapons => 'Show Hidden Weapons';

  @override
  String get hullmodsExportToCsv => 'Export to CSV';

  @override
  String get hullmodsOpenHullmodDataFolder => 'Open hullmod data folder';

  @override
  String get hullmodsStretchIconsToFit => 'Stretch icons to fit';

  @override
  String get hullmodsShowHiddenHullmods => 'Show Hidden Hullmods';

  @override
  String get factionViewerCopyId => 'Copy ID';

  @override
  String get factionViewerOpenModFolder => 'Open Mod Folder';

  @override
  String get factionViewerOpenFactionFile => 'Open .faction file';

  @override
  String get factionViewerOpenFactionFolder => 'Open faction folder';

  @override
  String get factionViewerNoFactionsFound => 'No factions found.';

  @override
  String get factionViewerOnlyEnabledMods => 'Only Enabled Mods';

  @override
  String get factionViewerHideHiddenFactions => 'Hide hidden factions';

  @override
  String get factionViewerHideModOnlyFactions => 'Hide mod-only factions';

  @override
  String get shipBlueprintAnimateEngines => 'Animate engines';

  @override
  String get shipBlueprintAnimateShields => 'Animate shields';

  @override
  String get shipBlueprintStationModule => 'Station Module';

  @override
  String get shipCodexCardFighterBay => ' Fighter bay';

  @override
  String get weaponCodexCardBaseValue => 'Base value: ';

  @override
  String get weaponImageCellCopySpriteWithGlow => 'Copy sprite (with glow)';

  @override
  String get spawnWeightsCalculatingSpawnWeights =>
      'Calculating spawn weights…';

  @override
  String get spawnWeightsFaction => 'Faction';

  @override
  String get spawnWeightsRole => 'Role';

  @override
  String get vanillaShareBarStillReadingMods => 'Still reading mods';

  @override
  String get vanillaShareBarVanilla => 'Vanilla';

  @override
  String get launcherExecutable => 'Executable: ';

  @override
  String get launcherGameIsRunning => 'Game is running';

  @override
  String get launcherLaunchPrecheckFailed => 'Launch Precheck Failed';

  @override
  String get launcherLaunchAnyway => 'Launch anyway';

  @override
  String get launcherRam => 'RAM: ';

  @override
  String get ramChangerApply => 'Apply';

  @override
  String get vmparamsFileSelectorDialogMoreInformation => 'More information';

  @override
  String get vmparamsFileSelectorDialogNoVmparamsTypeFiles =>
      'No vmparams-type files found in the game directory.';

  @override
  String get vmparamsFileSelectorDialogRescan => 'Rescan';

  @override
  String get vmparamsFileSelectorDialogVmparamsFiles => 'vmparams Files';

  @override
  String factionCardDoctrineTooltip(String tooltip, num value) {
    return '$tooltip: $value/5\nNote: May be changed by mods.';
  }

  @override
  String ramChangerRamGb(num ram) {
    return '$ram GB';
  }

  @override
  String factionProfileDialogDoctrineTooltip(String label, num value, num max) {
    return '$label: $value/$max\nNote: May be changed by mods.';
  }

  @override
  String factionProfileDialogModifiedBy(String modifiers) {
    return 'Modified by: $modifiers';
  }

  @override
  String factionProfileDialogOpenFactionFile(String suffix) {
    return 'Open .faction file$suffix';
  }

  @override
  String factionProfileDialogOpenFactionFolder(String suffix) {
    return 'Open faction folder$suffix';
  }

  @override
  String spawnWeightsOpenWeightFile(String path) {
    return 'Open the file that set this weight\n$path';
  }

  @override
  String shipsFailedToCopySprite(String error) {
    return 'Failed to copy sprite: $error';
  }

  @override
  String shipsOpenShipOrSkinFile(String fileType) {
    return 'Open $fileType file';
  }

  @override
  String shipBlueprintBackground(String label) {
    return 'Background: $label';
  }

  @override
  String shipBlueprintModule(String moduleName) {
    return 'Module: $moduleName';
  }

  @override
  String shipBlueprintSlotType(String type) {
    return 'Type: $type';
  }

  @override
  String get viewerCopyingImagesNotSupported =>
      'Copying images is not supported on this platform.';

  @override
  String get shipsSkin => 'Skin';

  @override
  String shipsSkinOf(String hullName) {
    return 'of $hullName';
  }

  @override
  String get shipsShipFile => 'Ship file';

  @override
  String get weaponsWeaponFile => 'Weapon file';

  @override
  String get weaponImageCellCopySpriteNoGlow => 'Copy sprite (no glow)';

  @override
  String get weaponImageCellCopiedSpriteWithGlow =>
      'Copied sprite (with glow) to clipboard.';

  @override
  String get shipsFilterOnlyEnabledModsTooltip =>
      'Only show ships from enabled mods.\nShared with the weapons, factions and codex pages.';

  @override
  String get shipsFilterHasModulesTooltip =>
      'Only show ships that have modules.';

  @override
  String get shipsFilterHasBuiltInWeaponsTooltip =>
      'Only show ships that have built-in weapons.';

  @override
  String get shipsFilterShowModuleShipsTooltip =>
      'Show ships that are used as modules on other ships.';

  @override
  String get shipsSpoilerNone => 'No Spoilers';

  @override
  String get shipsSpoilerSlight => 'Show slight spoilers';

  @override
  String get shipsSpoilerAll => 'Show all spoilers';

  @override
  String get shipsSpoilerNoneTooltip => 'No spoilers shown at all.';

  @override
  String get shipsSpoilerSlightTooltip => 'Shows CODEX_UNLOCKABLE ships.';

  @override
  String get shipsSpoilerAllTooltip =>
      'Show all spoilers, including HIDE_IN_CODEX and certain ultra-redacted vanilla tagged ships';

  @override
  String get weaponsFilterOnlyEnabledModsTooltip =>
      'Only show weapons from enabled mods.\nShared with the ships, factions and codex pages.';

  @override
  String get weaponsFilterShowHiddenTooltip =>
      'Show hidden weapons (built-in, internal).';

  @override
  String get weaponsSpoilerNone => 'No spoilers';

  @override
  String get weaponsSpoilerAll => 'Show all spoilers';

  @override
  String get weaponsSpoilerNoneTooltip =>
      'Hides weapons tagged CODEX_UNLOCKABLE.';

  @override
  String get weaponsSpoilerAllTooltip =>
      'Shows weapons tagged CODEX_UNLOCKABLE.';

  @override
  String get hullmodsFilterOnlyEnabledModsTooltip =>
      'Only hullmods from enabled mods.';

  @override
  String get hullmodsFilterShowHiddenTooltip =>
      'Show hidden hullmods (built-in, internal).';

  @override
  String get hullmodsSpoilerNone => 'No spoilers';

  @override
  String get hullmodsSpoilerAll => 'Show all spoilers';

  @override
  String get hullmodsSpoilerNoneTooltip =>
      'Hides hullmods tagged CODEX_UNLOCKABLE or CODEX_REQUIRE_RELATED.';

  @override
  String get hullmodsSpoilerAllTooltip =>
      'Shows hullmods tagged CODEX_UNLOCKABLE or CODEX_REQUIRE_RELATED.';

  @override
  String get factionViewerHideHiddenFactionsTooltip =>
      'Hide factions with showInIntelTab: false (Remnants, Omega, etc.)';

  @override
  String get factionViewerSearchShips => 'Search ships...';

  @override
  String get factionViewerSearchFactions => 'Search factions...';

  @override
  String get factionViewerOnlyEnabledModsTooltip =>
      'Show faction data from enabled mods only.\nShips, weapons, and spawn weights added by disabled mods are hidden.';

  @override
  String get factionViewerAscending => 'Ascending';

  @override
  String get factionViewerDescending => 'Descending';

  @override
  String get factionViewerViewModeCards => 'Cards';

  @override
  String get factionViewerViewModeGrid => 'Grid';

  @override
  String get factionViewerSpawnWeights => 'Spawn weights';

  @override
  String get factionViewerPatchOnly => 'Patch only';

  @override
  String get factionViewerNoWarshipsToSpawn =>
      'This faction has no warships to spawn.';

  @override
  String get factionCardFleetWeights => 'Fleet Wgts:';

  @override
  String get factionCardFleetWeightsTooltip =>
      'How much of the fleet weight is contributed by vanilla/mods';

  @override
  String get factionCardCalculatingFleetWeights => 'Calculating fleet weights…';

  @override
  String factionCardModsAddedOne(String name, num count) {
    return '$name +$count mod';
  }

  @override
  String factionCardModsAddedMany(String name, num count) {
    return '$name +$count mods';
  }

  @override
  String get factionCardWar => 'War';

  @override
  String get factionCardCarr => 'Carr';

  @override
  String get factionCardPhse => 'Phse';

  @override
  String get factionCardOffQ => 'OffQ';

  @override
  String get factionCardShpQ => 'ShpQ';

  @override
  String get factionCardFleet => 'Fleet';

  @override
  String get factionCardShpNum => 'Shp#';

  @override
  String get factionCardAggr => 'Aggr';

  @override
  String get factionCardStatShips => 'Ships';

  @override
  String get factionCardStatWpns => 'Wpns';

  @override
  String get factionCardStatMods => 'Mods';

  @override
  String get factionDoctrineWarships => 'Warships';

  @override
  String get factionDoctrineCarriers => 'Carriers';

  @override
  String get factionDoctrinePhaseShips => 'Phase Ships';

  @override
  String get factionDoctrineOfficerQuality => 'Officer Quality';

  @override
  String get factionDoctrineShipQuality => 'Ship Quality';

  @override
  String get factionDoctrineFleetSize => 'Fleet Size';

  @override
  String get factionDoctrineShipSize => 'Ship Size';

  @override
  String get factionDoctrineAggression => 'Aggression';

  @override
  String get factionDoctrinePhase => 'Phase';

  @override
  String get factionProfileDialogDoctrine => 'Doctrine';

  @override
  String get factionProfileDialogFleet => 'Fleet';

  @override
  String get factionProfileDialogPortraits => 'Portraits';

  @override
  String get factionProfileDialogBehavior => 'Behavior';

  @override
  String get factionProfileDialogModsAddingFaction =>
      'Mods that add/modify this faction';

  @override
  String factionProfileDialogShipPrefix(String prefix) {
    return 'Ship prefix: $prefix';
  }

  @override
  String factionProfileDialogPortraitsCount(num maleCount, num femaleCount) {
    return '$maleCount male, $femaleCount female';
  }

  @override
  String factionProfileDialogMoreCount(num count) {
    return '+$count more';
  }

  @override
  String factionProfileDialogIllegalCommodities(String commodities) {
    return 'Illegal commodities: $commodities';
  }

  @override
  String factionProfileDialogAddedBy(String name) {
    return 'Added by: $name';
  }

  @override
  String get factionProfileDialogNotAddedByEnabledMod =>
      'Not added by any enabled mod. It may belong to a disabled mod.';

  @override
  String get factionProfileDialogSeeAllShips => 'See all ships';

  @override
  String get factionProfileDialogShipSpoilers => 'Ship spoilers';

  @override
  String get factionProfileDialogWeaponSpoilers => 'Weapon spoilers';

  @override
  String get factionProfileDialogNoSpoilers => 'No spoilers';

  @override
  String get factionProfileDialogSlightSpoilers => 'Slight spoilers';

  @override
  String get factionProfileDialogAllSpoilers => 'All spoilers';

  @override
  String factionProfileDialogSectionCount(String label, num total) {
    return '$label: $total';
  }

  @override
  String factionProfileDialogSectionCountShown(
    String label,
    num total,
    num shown,
  ) {
    return '$label: $total ($shown shown)';
  }

  @override
  String factionProfileDialogSectionCountZero(String label) {
    return '$label: 0';
  }

  @override
  String factionProfileDialogSectionCountNoneShown(String label, num total) {
    return '$label: $total (0 shown)';
  }

  @override
  String spawnWeightsFallbackRole(String selectedRole, String fallbackRole) {
    return 'Nothing spawns in \"$selectedRole\" here, so the game uses \"$fallbackRole\" instead.';
  }

  @override
  String spawnWeightsNothingToSpawn(String role) {
    return 'Nothing to spawn in \"$role\" for this faction.';
  }

  @override
  String spawnWeightsNothingToSpawnFallback(String role, String fallbackRole) {
    return 'Nothing to spawn in \"$role\" for this faction, so the game picks from \"$fallbackRole\" instead.';
  }

  @override
  String get spawnWeightsFooterTooltip =>
      'These numbers miss a few things:\n• ships that mods add in code\n• the game trimming ships that cost too many fleet points\n• combat freighters being mixed in\n• mods that fully replace a file instead of adding to it';

  @override
  String get spawnWeightsFooterNote =>
      'These numbers are close but not exact. Hover for details.';

  @override
  String spawnWeightsSkippedEntries(num count) {
    return ' $count entries were left out because their ship is not installed.';
  }

  @override
  String get spawnWeightsNoShipsMatchSearch => 'No ships match your search.';

  @override
  String get spawnWeightsPriorityLegend =>
      'Priority ship. The faction favors these, so they spawn more than their weight alone suggests.';

  @override
  String get spawnWeightsPriorityTooltip =>
      'Priority ship: this faction favors it, so it spawns more often than its weight alone suggests.';

  @override
  String get spawnWeightsHeaderShip => 'Ship';

  @override
  String get spawnWeightsHeaderSize => 'Size';

  @override
  String get spawnWeightsHeaderWeight => 'Weight';

  @override
  String get spawnWeightsHeaderWeightTooltip =>
      'The number the game files give this ship.\nHigher means it gets picked more often.';

  @override
  String get spawnWeightsHeaderShare => 'Share';

  @override
  String get spawnWeightsHeaderShareTooltip =>
      'This ship\'s slice of the total weight for this role.';

  @override
  String get spawnWeightsHeaderSetBy => 'Set by';

  @override
  String get spawnWeightsHeaderSetByTooltip =>
      'The mod (or the base game) whose file set this weight.';

  @override
  String get vanillaShareStillReading =>
      'Still reading the mods. The split will show once that finishes.';

  @override
  String vanillaShareTooltipOne(String share) {
    return 'When the game builds a fleet for this faction, $share of the chance to pick each ship comes from the base game. The rest comes from 1 mod.\n\nThis is a share of spawn chance, not a share of ships.';
  }

  @override
  String vanillaShareTooltipMany(String share, num modCount) {
    return 'When the game builds a fleet for this faction, $share of the chance to pick each ship comes from the base game. The rest comes from $modCount mods.\n\nThis is a share of spawn chance, not a share of ships.';
  }

  @override
  String vanillaShareSegmentTooltip(String name, String share) {
    return '$name: $share';
  }

  @override
  String vanillaShareSegmentTooltipOfFaction(
    String name,
    String share,
    String faction,
  ) {
    return '$name: $share of $faction\'s spawn weight';
  }

  @override
  String get vanillaShareStillReadingUnsorted =>
      'Still reading mods. This part isn\'t sorted yet.';

  @override
  String vanillaShareBarVanillaShare(String share) {
    return 'Vanilla: $share';
  }

  @override
  String get vanillaShareBarVanillaDash => 'Vanilla: —';

  @override
  String get shipBlueprintHardpoint => 'Hardpoint';

  @override
  String get shipBlueprintTurret => 'Turret';

  @override
  String shipBlueprintBuiltIn(String name) {
    return 'Built-in: $name';
  }

  @override
  String shipBlueprintSizeMount(String size, String mount) {
    return '$size $mount';
  }

  @override
  String shipBlueprintArc(String arc) {
    return 'Arc: $arc°';
  }

  @override
  String shipBlueprintAngle(String angle) {
    return 'Angle: $angle°';
  }

  @override
  String ramChangerCannotWrite(String files, String appName) {
    return 'Cannot write to vmparams file:\n$files.\n\nMake sure it exists or try running $appName as an administrator.';
  }

  @override
  String ramChangerMbSetIn(String ram, String path) {
    return '$ram MB set in $path';
  }

  @override
  String get ramChangerOrCustomRam => 'or set a custom RAM assignment';

  @override
  String get vmparamsFileSelectorDialogIntro =>
      'Select which files TriOS should use for reading and writing RAM allocation.';

  @override
  String vmparamsFileSelectorDialogMoreInfoBody(String appName) {
    return 'Different game launchers use different configuration files.\n\nFor example, if you launch the game using Fast Rendering, it will use the amount of RAM specified in the `starsector-core/fr.vmparams` file (as of March 2026).\n\n$appName scanned your game folder for files containing a pattern for Java RAM allocation arguments `(?<=xmx).*?(?=\\s)`.\n\nFor each of these files checked below, when you pick a RAM value, it will surgically modify just the RAM allocation part of those files without changing the rest of the file.';
  }

  @override
  String get vmparamsFileSelectorDialogRamNotDetected => 'RAM not detected';

  @override
  String get vmparamsFileSelectorDialogSave => 'Save';

  @override
  String launcherLaunch(String version) {
    return 'Launch $version';
  }

  @override
  String get launcherRunning => 'RUNNING...';

  @override
  String get launcherLaunchButton => 'LAUNCH';

  @override
  String launcherTipNeverRequired(String appName) {
    return '\nTip: $appName is never required to launch the game.';
  }

  @override
  String get launcherDirectLaunchWarning =>
      'Direct Launch is on.\nInvisible ships, zoomed-in combat,\nand more may result.';

  @override
  String get launcherUnknownRam => '(unknown RAM)';

  @override
  String launcherPrecheckModIncompatible(
    String modName,
    String modVersion,
    String gameVersion,
  ) {
    return 'Mod $modName requires game version $modVersion and is not compatible with $gameVersion.';
  }

  @override
  String launcherPrecheckDependencyMissing(String dependency) {
    return 'Dependency $dependency is missing';
  }

  @override
  String launcherPrecheckDependencyDisabled(String dependency) {
    return 'Dependency $dependency is disabled';
  }

  @override
  String launcherPrecheckDependencyWrongVersion(String dependency) {
    return 'Dependency $dependency has wrong version';
  }

  @override
  String get launcherPrecheckForceCompatibility =>
      'Force compatibility (not recommended)';

  @override
  String get factionProfileDialogFactionColor => 'Faction color';

  @override
  String get factionProfileDialogKnownShips => 'Known Ships';

  @override
  String get factionProfileDialogKnownWeapons => 'Known Weapons';

  @override
  String get factionProfileDialogKnownFighters => 'Known Fighters';

  @override
  String get factionProfileDialogKnownHullmods => 'Known Hullmods';

  @override
  String get onboardingUpTo => ' (up to ';

  @override
  String get onboarding2 => 'ಠ_ಠ';

  @override
  String get onboardingAllowReporting => 'Allow Reporting';

  @override
  String get onboardingEnableOneClickMod => 'Enable one-click mod install';

  @override
  String get onboardingKeepReportingDisabled => 'Keep Reporting Disabled';

  @override
  String get onboardingKeepAllModVersions => 'Keep all mod versions';

  @override
  String get onboardingKeepOnlyOneMod => 'Keep only one mod version';

  @override
  String toolbarChangelog(String appName) {
    return '$appName Changelog';
  }

  @override
  String toolbarChatWith(String name) {
    return 'Chat with $name';
  }

  @override
  String toolbarOpenAppLogFileFolder(String appName) {
    return 'Open $appName log file folder';
  }

  @override
  String get toolbarRearrangeIcons => 'Rearrange icons';

  @override
  String get app_action_buttonsAbout => 'About';

  @override
  String get app_action_buttonsDisabled => 'Disabled';

  @override
  String get app_action_buttonsDonations => 'Donations';

  @override
  String get app_action_buttonsHideDonationButton => 'Hide donation button';

  @override
  String get app_action_buttonsHideLayoutToggle => 'Hide layout toggle';

  @override
  String get app_action_buttonsNotYetDetecting => 'Not yet detecting';

  @override
  String get app_action_buttonsOpenStarsectorFolder => 'Open Starsector folder';

  @override
  String get app_action_buttonsSettings => 'Settings';

  @override
  String get app_action_buttonsShowDonationPopup => 'Show donation popup';

  @override
  String get activity_icon_buttonDismissNotification => 'Dismiss notification';

  @override
  String get activity_icon_buttonEnableAllNewlyInstalled =>
      'Enable all newly installed mods';

  @override
  String get activity_icon_buttonHideThisPopup => 'Hide this popup';

  @override
  String get activity_icon_buttonInstallationActivity =>
      'Installation Activity';

  @override
  String get app_sidebarExitRearrangeMode => 'Exit rearrange mode';

  @override
  String get app_sidebarSwitchLayout => 'Switch layout';

  @override
  String get app_sidebarTabRearrangeModeIs => 'Tab rearrange mode is on';

  @override
  String get app_right_toolbarKoFi => 'Ko-Fi';

  @override
  String get app_right_toolbarPatreon => 'Patreon';

  @override
  String get nav_reorder_menuResetNavOrder => 'Reset nav order?';

  @override
  String get nav_reorder_menuResetToDefaultOrder => 'Reset to default order';

  @override
  String dashboardError(String error) {
    return 'Error: $error';
  }

  @override
  String get dashboardNoLogLoaded => 'No log loaded';

  @override
  String get dashboardRamAndGameSettings => 'RAM and Game Settings';

  @override
  String get launch_with_settingsChangeWhichFileLaunches =>
      'Change which file launches the game';

  @override
  String get launch_with_settingsClearCustomLaunchSettings =>
      'Clear Custom Launch Settings';

  @override
  String get launch_with_settingsFullscreen => 'Fullscreen';

  @override
  String get launch_with_settingsSound => 'Sound';

  @override
  String get game_performanceChooseWhichVmparamsFiles =>
      'Choose which vmparams files to manage';

  @override
  String get game_performanceGameDirectoryNotSet => 'Game directory not set.';

  @override
  String get game_performanceResetToFps => 'Reset to 60 FPS';

  @override
  String get game_performanceUseVsync => 'Use Vsync';

  @override
  String get mod_dependenciesRequiredMods => 'Required Mods:';

  @override
  String get mod_list_basicAreYouSure => 'Are you sure?';

  @override
  String get mod_list_basicColorful => 'Colorful';

  @override
  String get mod_list_basicMoreSettings => 'More Settings';

  @override
  String get mod_list_basicMutedUpdates => 'Muted updates';

  @override
  String get mod_list_basicSortBy => 'Sort By';

  @override
  String get mod_list_basicSwapOnUpdate => 'Swap on Update';

  @override
  String get tipsAboutTipsHider => 'About Tips Hider';

  @override
  String get tipsEnabledModsOnly => 'Enabled Mods Only';

  @override
  String tipsError(String errorMessage) {
    return 'Error: $errorMessage';
  }

  @override
  String get tipsGroupByMod => 'Group By Mod';

  @override
  String get tipsNoGrouping => 'No Grouping';

  @override
  String get tipsNoTipsOrMods => 'No tips (or mods) found.';

  @override
  String get tipsSelect => 'Select';

  @override
  String get tipsSelectAll => 'Select All';

  @override
  String get tipsShowHidden => 'Show Hidden';

  @override
  String get tipsTipsHider => 'Tips Hider';

  @override
  String get triosCancel => 'Cancel';

  @override
  String get triosOk => 'OK';

  @override
  String get triosAreYouSure => 'Are you sure?';

  @override
  String get triosClear => 'Clear';

  @override
  String get triosClearAll => 'Clear All';

  @override
  String get triosEnable => 'Enable';

  @override
  String get triosDisable => 'Disable';

  @override
  String get triosUpdate => 'Update';

  @override
  String get triosReset => 'Reset';

  @override
  String get triosSettings => 'Settings';

  @override
  String get triosNoThanks => 'No thanks';

  @override
  String get triosModProfiles => 'Mod Profiles';

  @override
  String get triosOpenModFolder => 'Open mod folder';

  @override
  String get triosViewChangelog => 'View Changelog';

  @override
  String get triosEnableThisMod => 'Enable this mod';

  @override
  String contextMenuForceToVersion(String version) {
    return 'Force to $version';
  }

  @override
  String get contextMenuInstallLinkCopiedTo =>
      'Install link copied to clipboard.';

  @override
  String get contextMenuModSources => 'Mod Sources...';

  @override
  String get contextMenuOpenFolder => 'Open Folder...';

  @override
  String get contextMenuChangeTo => 'Change to...';

  @override
  String get contextMenuOpenModInfoJson => 'Open mod_info.json';

  @override
  String get contextMenuDeleteMod => 'Delete Mod...';

  @override
  String contextMenuAllButVersion(String version) {
    return 'All but $version';
  }

  @override
  String get contextMenuAllVersions => 'All versions';

  @override
  String get contextMenuDeleteMods => 'Delete Mods...';

  @override
  String get contextMenuAllButEnabledHighest =>
      'All but enabled/highest version of each';

  @override
  String get contextMenuAllSelectedMods => 'All selected mods';

  @override
  String get contextMenuTroubleshoot => 'Troubleshoot...';

  @override
  String get contextMenuShowRawInfo => 'Show Raw Info';

  @override
  String get contextMenuEstimateVramUsage => 'Estimate VRAM Usage';

  @override
  String get contextMenuOpenInSidePanel => 'Open in side panel';

  @override
  String get contextMenuUnmuteUpdates => 'Unmute updates';

  @override
  String get contextMenuMuteUpdates => 'Mute updates';

  @override
  String get contextMenuMuteAllUpdates => 'Mute all updates';

  @override
  String get contextMenuView => 'View...';

  @override
  String get contextMenuShips => 'Ships';

  @override
  String get contextMenuWeapons => 'Weapons';

  @override
  String get contextMenuHullmods => 'Hullmods';

  @override
  String contextMenuFactionsCount(num count) {
    return 'Factions ($count)';
  }

  @override
  String get contextMenuViewAllInFaction => 'View all in Faction Viewer';

  @override
  String get contextMenuFactions => 'Factions';

  @override
  String get contextMenuPortraits => 'Portraits';

  @override
  String get debugSectionDebugMode => 'Debug mode';

  @override
  String get debugSectionIfModsAreFailing =>
      'If mods are failing to download or update, disabling verification of SSL certificates may help.';

  @override
  String get debugSectionAllowInsecureHttpsConnections =>
      'Allow insecure HTTPS connections';

  @override
  String get debugSectionShowEngineTrails => 'Show engine trails';

  @override
  String get debugSectionIncludePreReleases => 'Include pre-releases';

  @override
  String get debugSectionCheckForUpdateAllow =>
      'Check for update (allow older versions)';

  @override
  String debugSectionOpenSettingsFolder(String appName) {
    return 'Open $appName Settings Folder';
  }

  @override
  String debugSectionForceEnableAprilFools(String chatbotName) {
    return 'Force Enable April Fools 2026 ($chatbotName)';
  }

  @override
  String get debugSectionReOpenOnboardingDialog => 'Re-open Onboarding dialog';

  @override
  String debugSectionErrorRunningSelfUpdateScript(String error) {
    return 'Error running self-update script: $error';
  }

  @override
  String get debugSectionRunExistingSelfUpdate =>
      'Run existing self-update script if exists';

  @override
  String get debugSectionRedownloadMagiclibShowsToast =>
      'Redownload MagicLib (shows toast)';

  @override
  String get debugSectionNoModsWithDownload =>
      'No mods with download URLs found for testing';

  @override
  String debugSectionStartedTestDownloads(num count) {
    return 'Started $count test downloads - check grouped toast!';
  }

  @override
  String get debugSectionTestNotificationGroupingDownload =>
      'Test Notification Grouping (download 5 mods)';

  @override
  String get debugSectionShowModAddedToast =>
      'Show Mod Added Toast for MagicLib';

  @override
  String get debugSectionThisWillWipeTrios =>
      'This will wipe TriOS\'s settings.';

  @override
  String get debugSectionWipeSettings => 'Wipe Settings';

  @override
  String get debugSectionResetCategories => 'Reset Categories?';

  @override
  String get debugSectionResetCategoriesToDefaults =>
      'Reset Categories to Defaults';

  @override
  String get debugSectionThrowError => 'Throw error';

  @override
  String get debugSectionForceUpdate => 'Force Update';

  @override
  String debugSectionGameVersion(String version) {
    return 'Game version: $version';
  }

  @override
  String get debugSectionReadGameVersionFrom =>
      'Read game version from starfarer_obf.jar.';

  @override
  String get debugSectionReadWeapons => 'Read weapons';

  @override
  String get debugSectionReadShipsFromCsv =>
      'Read ships from csv and json files';

  @override
  String get debugSectionReadShips => 'Read ships';

  @override
  String debugSectionTriesToReadFrom(String path) {
    return 'Tries to read from \'$path\'';
  }

  @override
  String get debugSectionReadStarsectorInstaller => 'Read Starsector installer';

  @override
  String get debugSectionForceReplaceTriosCompanion =>
      'Force Replace TriOS Companion Mod';

  @override
  String get debugSectionShowDetectedVmparamsFiles =>
      'Show detected vmparams files';

  @override
  String get debugSectionForumData => 'Forum Data';

  @override
  String get debugSectionForceRefresh => 'Force Refresh';

  @override
  String debugSectionRefreshFailed(String error) {
    return 'Refresh failed: $error';
  }

  @override
  String get debugSectionClearCache => 'Clear Cache';

  @override
  String get debugSectionForumDataCacheCleared => 'Forum data cache cleared.';

  @override
  String get debugSectionShowForumData => 'Show Forum Data';

  @override
  String get debugSectionNoForumDataLoaded => 'No forum data loaded.';

  @override
  String debugSectionCurrentExecutable(String path) {
    return 'Current executable: $path';
  }

  @override
  String debugSectionTempFolder(String path) {
    return 'Temp folder: $path';
  }

  @override
  String debugSectionLocale(String locale) {
    return 'Locale: $locale';
  }

  @override
  String get debugSectionShowCurrentAppSettings => 'Show Current App Settings';

  @override
  String get debugSectionShowLoadedModProfiles => 'Show Loaded Mod Profiles';

  @override
  String get debugSectionShowEnvironmentVariables =>
      'Show Environment Variables';

  @override
  String get debugSectionEnvironmentVariables => 'Environment Variables';

  @override
  String get debugSectionShowModCompatibility => 'Show Mod Compatibility';

  @override
  String get debugSectionModCompatibility => 'Mod Compatibility';

  @override
  String get debugSectionShowLoadedVersionChecker =>
      'Show Loaded Version Checker Cache';

  @override
  String get debugSectionVersionCheckerCache => 'Version Checker Cache';

  @override
  String get dragDropCannotModifyModsFolder => 'Cannot modify mods folder';

  @override
  String get dragDropTryRunningTriosAs => 'Try running TriOS as administrator.';

  @override
  String get activityClearAllActivity => 'Clear All Activity?';

  @override
  String get activityPermanentlyClearsHistory => 'Permanently clears history';

  @override
  String get deepLinkAlwaysInstallNewMods =>
      'Always install new mods without confirming';

  @override
  String deepLinkIdTooltip(String id) {
    return 'Id: $id';
  }

  @override
  String deepLinkVersionTooltip(String version) {
    return 'Version $version';
  }

  @override
  String get deepLinkDownloadLink => 'Download link';

  @override
  String toastNewAppVersion(String appName) {
    return 'New $appName version';
  }

  @override
  String get aprilFoolsStillNo => 'Still no';

  @override
  String get aprilFoolsOkFine => 'Ok fine';

  @override
  String companionModUpdateTitle(String appName) {
    return 'Update $appName Companion Mod';
  }

  @override
  String get catalog_data_sources_dialogClose => 'Close';

  @override
  String get codexAll => 'All';

  @override
  String get settingsAffectsHowQuicklyVersion =>
      'Affects how quickly Version Checker searches. If version checker is showing timeout errors, reduce this number.';

  @override
  String get settingsAllRightThenKeep => 'All right then, keep your secrets.';

  @override
  String get settingsAllowErrorReporting => 'Allow error reporting';

  @override
  String get settingsAlwaysInstallModsFrom =>
      'Always install mods from \'Open with TriOS\' links without confirming';

  @override
  String get settingsAnimatedBackgrounds => 'Animated backgrounds';

  @override
  String get settingsAppIcon => 'App icon';

  @override
  String get settingsAppName => 'App name';

  @override
  String get settingsApplyUiScaling => 'Apply UI Scaling';

  @override
  String get settingsAutoSwapOnMod => 'Auto-swap on mod update';

  @override
  String get settingsBackgroundStyle => 'Background style';

  @override
  String get settingsCheckForUpdate => 'Check for update';

  @override
  String get settingsCheckIfGameIs => 'Check if game is running';

  @override
  String get settingsCleanUp => 'Clean up...';

  @override
  String get settingsColor => 'Color';

  @override
  String get settingsConcurrentExtractions => 'Concurrent extractions';

  @override
  String get settingsDebugging => 'Debugging';

  @override
  String get settingsDefault => 'Default';

  @override
  String get settingsDisableAllAiRelated => 'Disable all AI-related features';

  @override
  String get settingsEnableAccessibilitySemanticsMay =>
      'Enable Accessibility Semantics (may cause freezes)';

  @override
  String get settingsEnableLaunchPrecheck => 'Enable Launch Precheck';

  @override
  String get settingsErrorReporting => 'Error Reporting';

  @override
  String get settingsFollowTheme => 'Follow theme';

  @override
  String get settingsFont => 'Font';

  @override
  String get settingsHowLongNotificationsE =>
      'How long notifications (e.g. \'Downloading\') should appear for.';

  @override
  String get settingsIDonTBelieve =>
      'I don\'t believe you (show update prompt)';

  @override
  String get settingsIMFeelingLucky => 'I\'m feeling lucky';

  @override
  String get settingsInstallingOrUpdatingA =>
      'Installing or updating a mod will replace the previous version of it.';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsLanguageTooltip =>
      'The language the interface is shown in.\nSystem follows your operating system\'s language.';

  @override
  String get settingsLaunchButton => 'Launch button';

  @override
  String settingsLoadedThemes(num count) {
    return 'Loaded $count of your themes.';
  }

  @override
  String get settingsManualFolderNaming => 'Manual folder naming';

  @override
  String get settingsNevermind => 'Nevermind';

  @override
  String get settingsNoNewReleaseFound => 'No new release found';

  @override
  String get settingsNoSolicitors => 'No solicitors!';

  @override
  String get settingsOpenReleasesPage => 'Open Releases Page';

  @override
  String get settingsOverridePartsOfThe => 'Override parts of the active theme';

  @override
  String get settingsOverrideTheAppIcon =>
      'Override the app icon regardless of the active theme.';

  @override
  String get settingsOverrideTheAppName =>
      'Override the app name regardless of the active theme.';

  @override
  String get settingsOverrideTheLaunchButton =>
      'Override the launch button style regardless of the active theme.';

  @override
  String get settingsPlayer => 'Player';

  @override
  String get settingsRainbow => 'Rainbow';

  @override
  String get settingsReloadThemes => 'Reload themes';

  @override
  String get settingsRenameAllModFolders => 'Rename all mod folders';

  @override
  String get settingsRestartNow => 'Restart Now';

  @override
  String get settingsRestartRequired => 'Restart Required';

  @override
  String get settingsShowChangelog => 'Show Changelog';

  @override
  String get settingsShowDonationButton => 'Show Donation Button';

  @override
  String get settingsShowForceUpdateWarning => 'Show \'Force Update\' Warning';

  @override
  String get settingsShowLayoutToggleButton => 'Show Layout Toggle Button';

  @override
  String get settingsShowReportBugButton => 'Show Report Bug Button';

  @override
  String get settingsShowDriftingMotesWhen =>
      'Show drifting motes when app is in foreground.';

  @override
  String get settingsThemeModifiers => 'Theme Modifiers';

  @override
  String get settingsUseTopToolbarInstead =>
      'Use top toolbar instead of sidebar';

  @override
  String get settingsWhenCheckedUpdatingAn =>
      'When checked, updating an enabled mod switches to the new version.';

  @override
  String get settingsWhenEnabledModsOpened =>
      'When enabled, mods opened via a \'Open with TriOS\' link install immediately, skipping the confirmation dialog.';

  @override
  String get settingsWhetherToShowThe =>
      'Whether to show the warning when forcing a mod to run on the current game version.';

  @override
  String get settingsWhichAnimationPlaysIn =>
      'Which animation plays in the background.';

  @override
  String get settingsWhichThemeSColors =>
      'Which theme\'s colors the motes use. Default follows the active theme.';

  @override
  String get sectorMapSelectASave => 'Select a save';

  @override
  String sectorMapSavePickerLabel(String name, num level) {
    return '$name (lvl $level)';
  }

  @override
  String get sectorMapFindSystem => 'Find system…';

  @override
  String get sectorMapSystemFinder => 'System Finder';

  @override
  String sectorMapSystemsSummary(num count, num inhabited) {
    return '$count systems  •  $inhabited inhabited';
  }

  @override
  String get sectorMapBackToTheSystem => 'Back to the System Finder';

  @override
  String get sectorMapFinder => 'Finder';

  @override
  String get sectorMapRevealTheWholeSector => 'Reveal the whole sector now';

  @override
  String get sectorMapShowEverythingSpoiler => 'Show everything (spoiler)';

  @override
  String get sectorMapFilterSystemsByFaction => 'Filter systems by faction';

  @override
  String get sectorMapShowAll => 'Show all';

  @override
  String get sectorMapSelectASaveTo => 'Select a save to view its sector.';

  @override
  String sectorMapCouldNotReadSector(String error) {
    return 'Could not read this sector.\n\n$error';
  }

  @override
  String get sectorMapClose => 'Close';

  @override
  String sectorMapMarkets(num count) {
    return 'Markets ($count)';
  }

  @override
  String get sectorMapNoMarkets => 'No markets';

  @override
  String get sectorMapSystemUninhabited => 'This system is uninhabited.';

  @override
  String sectorMapMarketSize(String faction, num size) {
    return '$faction • size $size';
  }

  @override
  String get sectorMapCenter => 'Center';

  @override
  String get finderClearAllKnobs => 'Clear all knobs';

  @override
  String get finderReset => 'Reset';

  @override
  String get finderPresets => 'Presets';

  @override
  String get finderResources => 'Resources';

  @override
  String get finderFloorWeightHint =>
      'Floor is a hard cutoff; weight ranks how much you care.';

  @override
  String get finderMustHave => 'Must have';

  @override
  String get finderHabitableWorld => 'Habitable world';

  @override
  String get finderGasGiantForVolatiles => 'Gas giant (for volatiles / fuel)';

  @override
  String get finderSkipSystemsWithFactionColony =>
      'Skip systems that already have a faction colony';

  @override
  String get finderUnclaimedOnly => 'Unclaimed only (no existing colony)';

  @override
  String get finderMinStableLocations => 'Min. stable locations';

  @override
  String get finderAny => 'Any';

  @override
  String get finderNearALandmark => 'Near a landmark';

  @override
  String finderLandmarkNoneInSave(String name) {
    return '$name (none in this save)';
  }

  @override
  String get finderWithin => 'Within';

  @override
  String get finderPreferences => 'Preferences';

  @override
  String get finderPreferLowHazard => 'Prefer low hazard';

  @override
  String get finderPreferCloseToCore => 'Prefer close to core';

  @override
  String finderOtherConditions(num count) {
    return 'Other conditions ($count)';
  }

  @override
  String get finderUncuratedConditions =>
      'Uncurated / modded conditions in this save';

  @override
  String get finderHardCutoffAtLeast =>
      'Hard cutoff: at least this tier on some planet';

  @override
  String finderWeightLabel(String weight) {
    return 'Weight: $weight';
  }

  @override
  String get finderCatalogOre => 'Ore';

  @override
  String get finderCatalogRareOre => 'Rare ore';

  @override
  String get finderCatalogOrganics => 'Organics';

  @override
  String get finderCatalogVolatiles => 'Volatiles';

  @override
  String get finderCatalogFarmland => 'Farmland';

  @override
  String get finderHintTuneKnobs =>
      'Tune the knobs until the count is small, then reveal a hint to your best match.';

  @override
  String finderHintSomewhereInConstellations(num count) {
    return 'Somewhere in one of these $count constellations.';
  }

  @override
  String finderHintNarrowedToConstellations(num count) {
    return 'Narrowed to these $count constellations.';
  }

  @override
  String get finderHintUnnamedRegion => 'In an unnamed region of deep space.';

  @override
  String finderHintInConstellation(String name) {
    return 'In the $name constellation.';
  }

  @override
  String finderHintExactSystem(
    String system,
    String constellation,
    num hazard,
  ) {
    return '$system$constellation (hazard from $hazard%).';
  }

  @override
  String finderSystemsFit(num count) {
    return '$count systems fit';
  }

  @override
  String finderBestMatchSummary(num count, num ordinal, num total) {
    return '$count systems fit  •  best match $ordinal of $total';
  }

  @override
  String get finderRevealAHint => 'Reveal a hint';

  @override
  String get finderShowOnTheMap => 'Show on the map';

  @override
  String get finderNarrowItDown => 'Narrow it down';

  @override
  String get finderRevealTheNextBestMatch =>
      'Reveal the next-best match instead';

  @override
  String get finderDifferentMatch => 'Different match';

  @override
  String get finderNoSystemsFit => 'No systems fit';

  @override
  String get finderLoosenTheKnobs => 'Loosen the knobs to find some matches.';

  @override
  String get finderRelaxingOneOfThese => 'Relaxing one of these would help:';

  @override
  String finderHintTurnOff(String constraint, num count) {
    return '• Turn off $constraint → $count fit';
  }

  @override
  String get codexFilters => 'Filters';

  @override
  String get codexBack => 'Back';

  @override
  String get codexForward => 'Forward';

  @override
  String get codexUpALevel => 'Up a level';

  @override
  String get codexRandomEntry => 'Random entry';

  @override
  String get codexSearchTheCodex => 'Search the Codex…';

  @override
  String codexLoadingCategory(String name) {
    return 'Loading $name…';
  }

  @override
  String get codexPickACategory =>
      'Pick a category, or search across everything.';

  @override
  String get codexAllCategories => 'All categories';

  @override
  String get codexGroupBy => 'Group by';

  @override
  String get codexLockedEntry => 'Locked entry';

  @override
  String get codexHiddenBySpoilerFilter => '(hidden by spoiler filter)';

  @override
  String codexSearchResults(num count) {
    return 'Search results ($count)';
  }

  @override
  String get codexRelatedEntries => 'Related entries';

  @override
  String get codexNothingRelated => 'Nothing related';

  @override
  String get codexGeneral => 'General';

  @override
  String get codexSpoilers => 'Spoilers';

  @override
  String get codexNone => 'None';

  @override
  String get codexSlight => 'Slight';

  @override
  String get codexMod => 'Mod';

  @override
  String get codexVanillaOnly => 'Vanilla only';

  @override
  String get codexOnlyEnabledMods => 'Only enabled mods';

  @override
  String get codexShowHiddenWeapons => 'Show hidden weapons';

  @override
  String get codexShowHiddenHullmods => 'Show hidden hullmods';

  @override
  String get codexShowHiddenShipSystems => 'Show hidden ship systems';

  @override
  String get codexShowModulesAsShipsTooltip =>
      'List a station\'s modules (its docked parts) as their own ship entries. They always show as related entries on the station either way.';

  @override
  String get codexShowModulesAsShips => 'Show modules as ships';

  @override
  String get codexSelectAnEntryToSeeDetails =>
      'Select an entry to see its details.';

  @override
  String get codexEntryNotAvailable => 'This entry is not available.';

  @override
  String get codexOpenTheFullDetails =>
      'Open the full details window for this entry.';

  @override
  String get codexOpenDetails => 'Open details';

  @override
  String get codexThirdPartyDataProvidedBy => 'Third party data provided by ';

  @override
  String get codexTriTachyonDisclaimer =>
      '. The Tri-Tachyon corporation is not responsible for the accuracy or reliability of information supplied by external sources. By accessing this Codex adjunct, you acknowledge and agree to relieve Tri-Tachyon of any liability and responsibility for any damages resulting from use or cognition of third party data.';

  @override
  String get codexShipUsedByFactionTooltip =>
      'This ship is used by this faction, and may sometimes be found for sale at their colonies.';

  @override
  String vramScansActive(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count scans',
      one: '$count scan',
    );
    return 'Progress  •  $_temp0 active';
  }

  @override
  String get vramCancelling => 'Cancelling…';

  @override
  String get vramCancel => 'Cancel';

  @override
  String get vramOverall => 'Overall: ';

  @override
  String vramOverallProgress(num done, num total, String percent) {
    return '$done of $total mods  ($percent)';
  }

  @override
  String vramModsCount(num count) {
    return '$count mods';
  }

  @override
  String get vramPreparingScan => 'Preparing scan, collecting mod folders…';

  @override
  String get vramDiscoveringImageFiles => 'discovering image files…';

  @override
  String get vramLastScan => 'Last scan:';

  @override
  String get vramNever => 'never';

  @override
  String vramTook(String duration) {
    return 'took $duration';
  }

  @override
  String get vramEnabled => 'Enabled';

  @override
  String get vramDisabled => 'Disabled';

  @override
  String get vramAllMods => 'All mods';

  @override
  String get vramEstimatedVramUse => 'Estimated VRAM use';

  @override
  String vramUnscannedCount(num count) {
    return '($count unscanned)';
  }

  @override
  String vramScanAllToSeeTotals(String cohort) {
    return 'Scan all $cohort mods to see totals';
  }

  @override
  String vramNotScanned(num count) {
    return ' not scanned ($count mods)';
  }

  @override
  String vramNotScannedTooltip(num count) {
    return 'These $count mods haven\'t been scanned yet, so their VRAM usage is unknown. Run a scan to see a total.';
  }

  @override
  String vramModsCountInParens(num count) {
    return '($count mods)';
  }

  @override
  String vramAddedByMods(String bytes, num images) {
    return '$bytes added by mods ($images images)';
  }

  @override
  String get vramRoughly => 'roughly';

  @override
  String vramImagesCount(num count) {
    return '$count images';
  }

  @override
  String vramAddedByGraphicsLib(String bytes, String detail) {
    return '$bytes added by your GraphicsLib settings ($detail)';
  }

  @override
  String vramAddedByVanilla(String bytes) {
    return '$bytes added by vanilla';
  }

  @override
  String vramTotalLine(String bytes) {
    return '$bytes total';
  }

  @override
  String vramEstimatedVramUseBy(String cohort) {
    return 'Estimated VRAM use by: $cohort';
  }

  @override
  String vramUnscannedOf(num unscanned, num total) {
    return '$unscanned of $total mods unscanned.';
  }

  @override
  String get vramGraphicsLibSettings => 'GraphicsLib settings';

  @override
  String get vramYes => 'yes';

  @override
  String get vramNo => 'no';

  @override
  String get vramOn => 'on';

  @override
  String get vramOff => 'off';

  @override
  String vramGfxStatusMain(String effects, String normals, String preload) {
    return 'Enabled: $effects\nGenerate Normal maps: $normals\nPreload all: $preload';
  }

  @override
  String vramGfxStatusMaps(String normals, String materials, String surfaces) {
    return 'Normal maps: $normals\nMaterial maps: $materials\nSurface maps: $surfaces';
  }

  @override
  String get vramAboutVramEstimator => 'About VRAM Estimator';

  @override
  String get vramYourVramIsBased =>
      'Your VRAM is based on your GPU and can\'t be adjusted.';

  @override
  String get vramUsedByMods =>
      'It\'s used by mods with ships and weapons. Running out crashes the game.';

  @override
  String vramAppCanEstimate(String appName) {
    return '$appName can estimate how much VRAM your mods use, but it\'s not perfect.\nTo see accurate usage, open the console (from Console Commands) and look in the top-left corner.';
  }

  @override
  String get vramViewMoreInfo => 'View more Info';

  @override
  String get vramWhatIsVram => 'What is VRAM?';

  @override
  String get vramWhatIsVramRamVsVram =>
      'VRAM is Video RAM. It\'s different than RAM, being physically located on the graphics card. It cannot be upgraded without a new graphics card.';

  @override
  String get vramWhatIsVramNotAssignable =>
      'Unlike RAM, VRAM cannot be manually assigned (vmparams file is for normal RAM only), and the game will use as much as it needs.';

  @override
  String get vramWhatIsVramMoreImages =>
      'Essentially, the more images (ships, weapons, etc.) you load, the more VRAM you need. If you run out, it will use normal RAM instead, but very inefficiently, and if that runs out, the game will crash.';

  @override
  String get vramGraphicsLibDefaults =>
      'GraphicsLib\'s default settings uses additional VRAM to improve visuals, so if you are running out but don\'t want to disable mods, try adjusting its settings.';

  @override
  String get vramAboutThisTool => 'About this tool';

  @override
  String get vramToolEstimates =>
      'This tool estimates the amount of VRAM used by a mod, based on the images in the mod folder.';

  @override
  String get vramLazyLoadingMods =>
      'A few mods, such as Illustrated Entities, load images only when needed, so their real VRAM use will be much lower than estimated.';

  @override
  String get vramSelectors => 'Selectors';

  @override
  String get vramSelectorsIntro =>
      'Pick how the tool decides which images to count, using the dropdown on the VRAM page toolbar:';

  @override
  String get vramSelectorFolderScan =>
      '• Folder scan: counts every image in the mod folder (minus a few filename markers). Matches the tool\'s original behavior. May over-count when mods ship unused assets.';

  @override
  String get vramSelectorReferencedOnly =>
      '• Referenced only: parses .ship, .wpn, .proj, ship_data.csv, weapon_data.csv, .faction, portraits.csv, settings.json, the GraphicsLib CSV, .jar string literals, and loose .java sources to identify only images that are actually referenced. Images found on disk but not referenced are shown separately as \"Unreferenced\" (they may be dev leftovers or loaded via dynamic paths).';

  @override
  String get vramKnownImprecisions => 'Known imprecisions in reference mode:';

  @override
  String get vramImprecisionDynamicPaths =>
      '• Asset paths constructed dynamically in Java (string concatenation) may not be detected. The debug panel\'s \"Track attribution\" toggle and the Unreferenced bucket make gaps visible.';

  @override
  String get vramImprecisionObfuscatedJars =>
      '• Obfuscated or packed jars may defeat string extraction.';

  @override
  String get vramImprecisionGfxLibMaps =>
      '• GraphicsLib normal/material/surface maps are kept whenever their CSV entry exists, regardless of whether their base sprite is referenced. This matches how GraphicsLib loads maps in practice.';

  @override
  String get vramDebugToggles =>
      'Debug panel toggles (visible only in Referenced mode):';

  @override
  String get vramDebugPerSourceChips =>
      '• Per-source chips: turn individual reference parsers on/off to bisect false positives.';

  @override
  String get vramDebugSuppressUnreferenced =>
      '• Suppress unreferenced: hide the unreferenced bucket entirely for a clean comparison against folder-scan totals.';

  @override
  String get vramDebugTrackAttribution =>
      '• Track attribution: record which parser(s) flagged each file, surfaced in the per-file detail view.';

  @override
  String get vramSeeTrueUsage =>
      'To see true VRAM usage, enable the Console Commands mod and open it in-game. The amount of free VRAM will be shown in the top-left corner.';

  @override
  String get vramCalculation => 'Calculation';

  @override
  String get vramCalcBasis =>
      'VRAM use is based on an image\'s width, height, and number of channels. File size is irrelevant.';

  @override
  String get vramMultiplierNote =>
      'Multiplier = 1x for background images and 1.33x for other images. The 1.33x is extra memory used for mipmapping.';

  @override
  String get vramBackgroundsIgnored =>
      'Backgrounds are ignored if they are the same size as vanilla\'s backgrounds (because vanilla always has only one background loaded, so a vanilla-sized background is not adding more VRAM use).';

  @override
  String get vramLargestBackgroundCounted =>
      'If the mod has one or more backgrounds that are larger than a vanilla background, then the single largest of them is counted as additional VRAM used (additionalVRAMUse = modBackgroundVRAMUse - vanillaBackgroundVRAMUse).';

  @override
  String get vramScanDebug => 'VRAM scan debug';

  @override
  String get vramMultithreadedScanning => 'Multithreaded scanning';

  @override
  String get vramMultithreadedSubtitle =>
      'Faster scans, higher CPU and file-handle pressure';

  @override
  String get vramMultithreadedTooltip =>
      'Run the per-mod scan loop across an isolate pool. Faster on large mod lists, but uses more CPU and multiplies the per-isolate file-handle limit by the pool size. Takes effect on the next scan.';

  @override
  String get vramEnabledReferenceSources => 'Enabled reference sources';

  @override
  String get vramSuppressUnreferencedBucket => 'Suppress unreferenced bucket';

  @override
  String get vramSuppressUnreferencedTooltip =>
      'Hide the unreferenced bucket to compare directly to folder-scan totals.';

  @override
  String vramEstimateFor(String mod) {
    return 'VRAM Estimate: $mod';
  }

  @override
  String vramTabCountTotal(String base, num total) {
    return '$base ($total)';
  }

  @override
  String vramTabCountFiltered(String base, num filtered, num total) {
    return '$base ($filtered / $total)';
  }

  @override
  String get vramReferenced => 'Referenced';

  @override
  String get vramUnreferenced => 'Unreferenced';

  @override
  String get vramSearchPathOrReferencedBy => 'Search path or referenced-by…';

  @override
  String get vramClose => 'Close';

  @override
  String vramModStatus(String status) {
    return 'Status:$status';
  }

  @override
  String vramScanMethod(String method) {
    return 'Method: $method';
  }

  @override
  String get vramScanAll => 'Scan All';

  @override
  String get vramSelectiveScan => 'Selective Scan';

  @override
  String vramGraphicsLibCsvEntries(num count) {
    return 'GraphicsLib CSV: $count entries';
  }

  @override
  String vramLastScanned(String time) {
    return 'Last scanned $time';
  }

  @override
  String vramLastScanAt(String time) {
    return 'Last scan: $time';
  }

  @override
  String get vramRescanningThisMod => 'Rescanning this mod…';

  @override
  String get vramRescanThisMod => 'Rescan this mod';

  @override
  String get vramScanInProgressNoRescan =>
      'Scan in progress, rescan unavailable';

  @override
  String get vramBaseTextures => 'Base textures (excl. GraphicsLib)';

  @override
  String vramGfxLibMaps(String type) {
    return 'GraphicsLib $type maps';
  }

  @override
  String get vramTotals => 'Totals';

  @override
  String get vramReferencedTotal => 'Referenced total (counted against VRAM)';

  @override
  String get vramUnreferencedTooltip =>
      'Images on disk with no detected reference. May include dev leftovers or paths constructed dynamically in Java.';

  @override
  String get vramUnreferencedNotCounted => 'Unreferenced (not counted)';

  @override
  String get vramUnreferencedAdvisory =>
      'Advisory: images on disk that no parsed reference points to. May be dev leftovers, or loaded via dynamic paths the parsers can\'t detect.';

  @override
  String vramUnreferencedSuffix(String bytes) {
    return '+$bytes unreferenced';
  }

  @override
  String get vramScanInProgress => 'Scan in progress…';

  @override
  String vramRescanNamed(String mod) {
    return 'Rescan $mod';
  }

  @override
  String get vramReasonGfxLibNotEnabled => 'GraphicsLib not enabled';

  @override
  String get vramReasonTypeDisabledInConfig =>
      'type disabled in GraphicsLib config';

  @override
  String get vramReasonStreamedOnDemand =>
      'streamed on-demand by GraphicsLib; not counted';

  @override
  String get vramReasonNotCounted => 'not counted';

  @override
  String get vramNoUnreferencedImages => 'No unreferenced images.';

  @override
  String get vramNoReferencedImages => 'No referenced images counted.';

  @override
  String get vramFile => 'File';

  @override
  String get vramExplanation => 'Explanation';

  @override
  String get vramDimensions => 'Dimensions';

  @override
  String get vramGraphicsLib => 'GraphicsLib';

  @override
  String get vramBytes => 'Bytes';

  @override
  String vramTooltipDimensions(String size) {
    return 'Dimensions (POT): $size';
  }

  @override
  String vramTooltipChannels(num channels) {
    return 'Channels × bits: $channels';
  }

  @override
  String vramTooltipType(String type, String gfxlib) {
    return 'Type: $type$gfxlib';
  }

  @override
  String vramTooltipTypeGfxLib(String name) {
    return ' · GraphicsLib $name';
  }

  @override
  String get vramTooltipVanillaReplaceNoExtra =>
      'Replaces a vanilla file already counted in vanilla VRAM, so adds nothing extra.';

  @override
  String vramTooltipVanillaReplaceLarger(String original, String extra) {
    return 'Replaces a vanilla file ($original) with a larger version. Only the extra $extra counts.';
  }

  @override
  String vramTooltipReferencedBy(String refs) {
    return 'Referenced by:\n$refs';
  }

  @override
  String get vramTooltipNoAttribution =>
      'No attribution recorded (folder-scan mode, or background file).';

  @override
  String vramTooltipNotCounted(String reason) {
    return 'Not counted; $reason';
  }

  @override
  String get vramTooltipBackground =>
      'Background; only the largest oversized one counts';

  @override
  String vramGfxLibTypeDisabledInConfig(String type) {
    return 'GraphicsLib $type maps disabled in config';
  }

  @override
  String vramGfxLibOnDemand(String type) {
    return 'GraphicsLib loads/unloads $type maps on-demand when preloadAllMaps is off';
  }

  @override
  String vramMapsNotCounted(String type) {
    return '$type maps not counted';
  }

  @override
  String get vramExplReplacesVanilla => 'Replaces vanilla, no extra VRAM';

  @override
  String vramExplReplacesVanillaLarger(String extra) {
    return 'Replaces vanilla, $extra larger';
  }

  @override
  String get vramExplUnreferenced => '(unreferenced)';

  @override
  String get vramExplBackground => 'background';

  @override
  String get vramEstimateVram => 'Estimate VRAM';

  @override
  String get vramReEstimateVram => 'Re-estimate VRAM';

  @override
  String vramScanningCurrent(String current, String progress) {
    return 'Scanning: $current$progress';
  }

  @override
  String vramScanning(String progress) {
    return 'Scanning$progress';
  }

  @override
  String get vramMoreScanOptions => 'More scan options';

  @override
  String vramScanUnscannedMods(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Scan $count mods',
      one: 'Scan $count mod',
    );
    return '$_temp0';
  }

  @override
  String get vramAllModsScanned => 'All mods scanned';

  @override
  String get vramVramEstimator => 'VRAM Estimator';

  @override
  String get vramAboutVramAndEstimator => 'About VRAM & VRAM Estimator';

  @override
  String get vramFilterMods => 'Filter mods...';

  @override
  String get vramScanAllMods => 'Scan all mods';

  @override
  String get vramReScanAllMods => 'Re-scan all mods';

  @override
  String get vramEnabledModsOnly => 'Enabled Mods Only';

  @override
  String get vramExportCacheAsJson => 'Export cache as JSON…';

  @override
  String get vramExportDialogTitle => 'Export VRAM cache as JSON';

  @override
  String get vramCouldNotOpenSaveDialog => 'Could not open save dialog.';

  @override
  String vramExportedCacheTo(String path) {
    return 'Exported VRAM cache to $path';
  }

  @override
  String vramExportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String vramEstimatedVramUsageBar(String used, String total) {
    return 'Estimated VRAM Usage: $used / $total';
  }

  @override
  String get chipperSubtitle => 'A Starsector log viewer';

  @override
  String get chipperLoadMyLog => 'Load my log';

  @override
  String get chipperCopyAll => 'Copy all';

  @override
  String get chipperOpenLogFile => 'Open Log File';

  @override
  String get chipperUploadLogFile => 'Upload log file';

  @override
  String get chipperWhatsItDo => 'What\'s it do?';

  @override
  String get chipperWhatsItDoBody =>
      'Chipper pulls useful information out of the log for easier viewing.\n\nThe first part of troubleshooting Starsector issues is looking through a log file for errors and/or outdated mods.';

  @override
  String get chipperWhatDoYouDoWithLogs => '\nWhat do you do with my logs?';

  @override
  String get chipperLogsPrivacy =>
      'Nothing; I can\'t see them. Everything is done on your browser. Neither the file nor any part of it are ever sent over the Internet.\n\nI do not collect any analytics except for what Cloudflare, the hosting provider, collects by default, which is all anonymous.';

  @override
  String get chipperCreatedUsingFlutter =>
      '\nCreated using Flutter, by Google ';

  @override
  String get chipperProbablyDiscontinued =>
      'so it\'ll probably get discontinued next year.';

  @override
  String get chipperSourceCode =>
      'Source Code: https://github.com/wispborne/chipper';

  @override
  String get chipperNotFoundInLog => 'Not found in log.';

  @override
  String get chipperSystem => 'System';

  @override
  String get chipperCopy => 'Copy';

  @override
  String get chipperStarsectorLabel => 'Starsector: ';

  @override
  String get chipperJreLabel => '\nJRE: ';

  @override
  String get chipperOsLabel => '\nOS: ';

  @override
  String get chipperListMayBeIncomplete =>
      'This list may be incomplete.\n\"Running with the following mods\" block not found in log.';

  @override
  String chipperModsCount(num count) {
    return 'Mods ($count)';
  }

  @override
  String get chipperCopyLessInfo => 'Copy (less info)';

  @override
  String get chipperPopup => 'Popup';

  @override
  String chipperChippedIn(String ms) {
    return ' chipped in ${ms}ms';
  }

  @override
  String chipperErrorsCount(num count) {
    return 'Errors ($count)';
  }

  @override
  String chipperErrorsFilteredCount(num filtered, num total) {
    return 'Errors ($filtered/$total)';
  }

  @override
  String get chipperFilter => 'Filter...';

  @override
  String chipperPreviousLineOn(String thread) {
    return 'Previous line on $thread';
  }

  @override
  String get chipperGenericThread => 'thread';

  @override
  String get chipperDropLogHere => 'Drop starsector.log here';

  @override
  String get chipperOrCtrlVPaste => 'or control-v to paste';

  @override
  String get chipperWindowsPathLabel => '\nWindows: ';

  @override
  String get chipperMacosPathLabel => '\n\nMacOS: ';

  @override
  String get chipperLinuxPathLabel => '\n\nLinux: ';

  @override
  String get chipperLoadingThinking => 'thinking...';

  @override
  String get chipperLoadingProcessing => 'processing...';

  @override
  String get chipperLoadingParsing => 'parsing...';

  @override
  String get chipperLoadingPondering => 'pondering the log';

  @override
  String get chipperLoadingChipping => 'chipping...';

  @override
  String get chipperLoadingBreakingDown => 'breaking logs down...';

  @override
  String get chipperLoadingAnalyzing => 'analyzing...';

  @override
  String get chipperLoadingAnalysing => 'analysing...';

  @override
  String get chipperLoadingSpinning => 'spinning...';

  @override
  String get chipperLoadingPleaseWait => 'please wait...';

  @override
  String get chipperLoadingPleaseHold => 'please hold...';

  @override
  String get commonClose => 'Close';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonError => 'Error';

  @override
  String commonErrorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get commonSelectAll => 'Select all';

  @override
  String get commonDeselectAll => 'Deselect all';

  @override
  String get commonApply => 'Apply';

  @override
  String get commonDiscardChange => 'Discard change';

  @override
  String get commonCopyToClipboard => 'Copy to clipboard';

  @override
  String get commonCopiedToClipboard => 'Copied to clipboard';

  @override
  String get commonNothingToCopy => 'Nothing to copy';

  @override
  String get commonConfirm => 'Confirm';

  @override
  String get commonEdit => 'Edit';

  @override
  String get commonEmpty => '(empty)';

  @override
  String get commonSearch => 'Search';

  @override
  String get commonMoreOptions => 'More options';

  @override
  String get commonRefresh => 'Refresh';

  @override
  String commonDurationSecond(num count) {
    return '$count second';
  }

  @override
  String commonDurationSeconds(num count) {
    return '$count seconds';
  }

  @override
  String commonDurationMinute(num count) {
    return '$count minute';
  }

  @override
  String commonDurationMinutes(num count) {
    return '$count minutes';
  }

  @override
  String commonDurationHour(num count) {
    return '$count hour';
  }

  @override
  String commonDurationHours(num count) {
    return '$count hours';
  }

  @override
  String commonDurationDay(num count) {
    return '$count day';
  }

  @override
  String commonDurationDays(num count) {
    return '$count days';
  }

  @override
  String commonDurationWeek(num count) {
    return '$count week';
  }

  @override
  String commonDurationWeeks(num count) {
    return '$count weeks';
  }

  @override
  String commonDurationMonth(num count) {
    return '$count month';
  }

  @override
  String commonDurationMonths(num count) {
    return '$count months';
  }

  @override
  String commonDurationYear(num count) {
    return '$count year';
  }

  @override
  String commonDurationYears(num count) {
    return '$count years';
  }

  @override
  String commonTimeAgo(String duration) {
    return '$duration ago';
  }

  @override
  String commonTimeInFuture(String duration) {
    return 'in $duration';
  }

  @override
  String get dialogsModsFolderWarning =>
      'Did you just try to delete your mods folder? No! Bad!';

  @override
  String dialogsFailedToDelete(String name, String error) {
    return 'Failed to delete $name: $error';
  }

  @override
  String get dialogsEnabledSuffix => ' (enabled)';

  @override
  String dialogsCompanionModWarning(String appName) {
    return 'Deleting the Companion Mod will also delete any custom images you\'ve imported with the Portrait Replacer!\n\nIf you\'ve used $appName to import custom portraits, you\'ll need to re-import them if you want to use them again.';
  }

  @override
  String get dialogsDeleteModTitle => 'Delete Mod';

  @override
  String get dialogsDeleteModsTitle => 'Delete Mods';

  @override
  String dialogsDeleteCountMod(num count) {
    return 'Delete $count Mod';
  }

  @override
  String dialogsDeleteCountMods(num count) {
    return 'Delete $count Mods';
  }

  @override
  String get dialogsSelectTheModFolders => 'Select the mod folders to delete:';

  @override
  String get dialogsDeleteWarningSg =>
      'This will delete the mod folder on disk. This action cannot be undone.';

  @override
  String get dialogsDeleteWarningPl =>
      'This will delete the mod folders on disk. This action cannot be undone.';

  @override
  String get dialogsAnErrorOccurredWhile =>
      'An error occurred while deleting the mod folder(s).';

  @override
  String dialogsAboutAppName(String appName, String version) {
    return '$appName v$version';
  }

  @override
  String get dialogsAboutTagline => 'A Starsector toolkit\nby Wisp';

  @override
  String get debugInfoId => 'id: ';

  @override
  String get debugInfoVersion => 'Version: ';

  @override
  String get debugInfoVersionChecker => 'Version Checker';

  @override
  String get debugInfoInternalId => 'Internal id: ';

  @override
  String get debugInfoModFolder => 'Mod Folder: ';

  @override
  String get debugInfoIcon => 'Icon: ';

  @override
  String get debugInfoVersionCheckerLocal => 'Version Checker - Local';

  @override
  String get debugInfoVersionCheckerRemote =>
      'Version Checker - Remote (cached lookup)';

  @override
  String get debugInfoModMetadata => 'Mod Metadata';

  @override
  String get debugInfoWholeMod => 'Whole mod: ';

  @override
  String get debugInfoThisVersion => 'This version: ';

  @override
  String get debugInfoSearchTags => 'Search Tags';

  @override
  String get debugInfoNone => '(none)';

  @override
  String get dialogPagerPrevious => 'Previous (Left arrow)';

  @override
  String get dialogPagerNext => 'Next (Right arrow)';

  @override
  String get brokenShipImageTooltip => 'Image not found. This is a banana.';

  @override
  String modDataFileSubmenuLabel(String label, num count) {
    return '$label ($count)';
  }

  @override
  String modDataFileStatsAffected(String label, num count) {
    return '$label (stats affected by $count files)';
  }

  @override
  String get forceVersionCouldNotDetermine =>
      'Could not determine current Starsector version.';

  @override
  String get forceVersionForce => 'Force';

  @override
  String forceVersionTitleSingle(String version) {
    return 'Force to $version?';
  }

  @override
  String forceVersionTitleMultiple(num count, String version) {
    return 'Force $count mods to $version?';
  }

  @override
  String forceVersionMadeForSuffix(String gameVersion, String currentVersion) {
    return ' was made for Starsector $gameVersion, but you can try running it in $currentVersion.\n';
  }

  @override
  String get forceVersionSimpleModsNote =>
      'Simple mods like portrait packs should be fine. Game updates usually don\'t break mods, but it depends on the mod and the game version.\n\n';

  @override
  String forceVersionModMeantFor(
    String name,
    String version,
    String gameVersion,
  ) {
    return '- $name ($version) is meant for Starsector \'$gameVersion\'.';
  }

  @override
  String forceVersionConfirmMultiple(num count, String version) {
    return 'Are you sure you want to modify $count mod_info.json files to run on $version?';
  }

  @override
  String forceVersionConfirmSingle(String name, String version) {
    return 'Are you sure you want to modify the \'$name\' mod_info.json file to run on $version?';
  }

  @override
  String viewerToolbarShownCount(num count) {
    return '($count shown)';
  }

  @override
  String get viewerToolbarSplitTooltip =>
      'Split to show two displays that can be scrolled independently.';

  @override
  String get viewerToolbarCompareMode => 'Compare Mode';

  @override
  String get refreshModsAndRecheck => 'Refresh mods and recheck versions';

  @override
  String get refreshModsRefreshing => 'Refreshing';

  @override
  String get rangeFilterResetThisRange => 'Reset this range';

  @override
  String get rangeFilterAny => 'Any';

  @override
  String get underConstruction => 'UNDER CONSTRUCTION';

  @override
  String get smartSearchFieldReference => 'Search Field Reference';

  @override
  String get smartSearchViewFieldReference => 'View search field reference';

  @override
  String get smartSearchSyntaxExamples =>
      'Syntax: field:value   field:>value   -field:value   field:\"multi word\"';

  @override
  String get filterAdvanced => 'Advanced';

  @override
  String get filterAdvancedTooltip =>
      'Advanced filters: adds an \"any\" / \"all\" choice to each group.';

  @override
  String get filterClearSearch => 'Clear search';

  @override
  String get filterHideFilters => 'Hide filters';

  @override
  String get filterShowFilters => 'Show filters';

  @override
  String get filterTitle => 'Filters';

  @override
  String get filterSearchHint => 'Filter filters';

  @override
  String get filterClearAll => 'Clear All';

  @override
  String get filterClearAllTooltip =>
      'Resets filters back to default.\nSome filters are applied by default, such as spoiler warnings.';

  @override
  String get filterIncludeAll => 'Include all';

  @override
  String get filterExcludeAll => 'Exclude all';

  @override
  String get filterClearAllFilters => 'Clear all filters';

  @override
  String get filterGroupSearchScopedTooltip =>
      'Only the values the search is showing.\nHold shift to do the whole group.';

  @override
  String get filterLogicAllTooltip =>
      'All: only shows items that have every value you include.\nClick for \"any\".';

  @override
  String get filterLogicAnyTooltip =>
      'Any: shows items with at least one of the values you include.\nClick for \"all\".';

  @override
  String get filterLogicAll => 'all';

  @override
  String get filterLogicAny => 'any';

  @override
  String filterPillRemove(String label) {
    return 'Remove \"$label\"';
  }

  @override
  String get filterGroupPersistOn => 'Filter group is being saved';

  @override
  String get filterGroupPersistOff => 'Filter group is not being saved';

  @override
  String csvExportTitle(String name) {
    return 'Export $name Data';
  }

  @override
  String csvExportAllLoadedData(String name) {
    return 'All loaded $name data and fields.';
  }

  @override
  String csvExportGridDataOnly(String name) {
    return 'Only the $name data and fields visible in the grid.';
  }

  @override
  String get csvExportOptionAllData => 'All Data';

  @override
  String get csvExportOptionGridData => 'Grid Data';

  @override
  String get csvExportCopyToClipboard => 'Copy to Clipboard';

  @override
  String get csvExportCopiedToClipboard => 'Copied to clipboard!';

  @override
  String get csvExportSaveToFile => 'Save to File';

  @override
  String csvExportSaved(String path) {
    return 'Saved: $path';
  }

  @override
  String get csvExportSaveDialogTitle => 'Save Weapons CSV';

  @override
  String csvExportSaveDialogUnavailable(String path) {
    return 'Save dialog unavailable. Example file at: $path';
  }

  @override
  String get changelogTitle => 'Changelog';

  @override
  String get changelogRefreshTooltip => 'Refresh changelog';

  @override
  String get graphBarChart => 'Bar Chart';

  @override
  String get graphPieChart => 'Pie Chart';

  @override
  String get addModsTooltipGameRunning => 'Game is running';

  @override
  String get addModsTooltipIconOnly => 'Tip: drag\'n\'drop to install mods!';

  @override
  String get addModsTooltip =>
      'Add new mod(s)\n\nTip: drag\'n\'drop to install mods!';

  @override
  String get fileCardAddToStarsector => 'Add to Starsector';

  @override
  String get fileCardDropToDownload => 'Drop to download';

  @override
  String disableCannotWriteGameFolder(String appName) {
    return 'Cannot modify game folder and/or vmparams.\nTry running $appName as administrator.';
  }

  @override
  String disableCannotWriteMods(String appName) {
    return 'Cannot modify mods folder.\nTry running $appName as administrator and make sure that mods/enabled_mods.json exists and can be modified.';
  }

  @override
  String descriptionPlaceholderHint(String placeholder) {
    return 'Values shown as $placeholder are placeholders filled in by game code. Additional text may be entirely added by game code.';
  }

  @override
  String get gamePathsPathDoesNotExist => 'Path does not exist';

  @override
  String get gamePathsStarsectorNotFound => 'Starsector not found';

  @override
  String get gamePathsGameFolder => 'Game Folder';

  @override
  String get gamePathsStarsectorLauncher => 'Starsector launcher';

  @override
  String get gamePathsOverrideTooltip =>
      'If checked, overrides the default path.';

  @override
  String gamePathsLauncherTooltip(String appName) {
    return 'What to launch when you click \'Launch\' within $appName.';
  }

  @override
  String get gamePathsSelectLauncher => 'Select Starsector launcher';

  @override
  String get gamePathsMods => 'Mods';

  @override
  String get gamePathsModsTooltip => 'Where your mods are located.';

  @override
  String get gamePathsSelectMods => 'Select Mods folder';

  @override
  String get gamePathsSaves => 'Saves';

  @override
  String get gamePathsSavesTooltip => 'Where the game\'s saves are located.';

  @override
  String get gamePathsSelectSaves => 'Select Saves folder';

  @override
  String get gamePathsCoreData => 'Core data';

  @override
  String get gamePathsCoreDataTooltip =>
      'Where the game\'s data is located.\nThis is the folder that contains data, graphics, sounds, and jar files.';

  @override
  String get gamePathsSelectCore => 'Select Core folder';

  @override
  String gamePathsFootnote(String appName) {
    return 'These paths tell $appName where to look for data. They do not affect Starsector or how it loads data.';
  }

  @override
  String get appSettingsResetTitle => 'TriOS Settings Reset';

  @override
  String appSettingsResetContent(String appName, String error) {
    return 'Your $appName settings have been reset.\nThis may be due to an update or a broken settings file.\n\nPlease check your settings. Your mods have not been affected.\n\n\nError: \n$error';
  }

  @override
  String get appDeepLinkTitle => '\"Install with TriOS\" link support';

  @override
  String get appDeepLinkBody =>
      'Enable support for \"Install with TriOS\" buttons on the forum?\nYou can always change this on the Settings page.';

  @override
  String get appNoThanks => 'No thanks';

  @override
  String get appEnable => 'Enable';

  @override
  String get chatbotNewChatTooltip => 'Start a new chat';

  @override
  String chatbotMessageHint(Object name) {
    return 'Message $name...';
  }

  @override
  String get chatbotSend => 'Send';

  @override
  String chatbotAiCaution(Object name) {
    return 'Caution: AI can make mistakes. $name will never make mistakes, though, because it isn\'t a real AI.';
  }

  @override
  String get chatbotEmptyTitle => 'How can I help?';

  @override
  String get chatbotEmptySubtitle =>
      'Ask me about mods, settings, or troubleshooting.';

  @override
  String chatbotWaterUsed(Object liters) {
    return '· ${liters}L H₂O used';
  }

  @override
  String get chatbotTagOn => 'ON';

  @override
  String get chatbotTagOff => 'OFF';

  @override
  String chatbotAndNMore(Object count) {
    return '...and $count more';
  }

  @override
  String chatbotAndNMoreMods(Object count) {
    return '...and $count more mods';
  }

  @override
  String chatbotAndNMoreAuthors(Object count) {
    return '...and $count more authors';
  }

  @override
  String chatbotAndNMoreSources(Object count) {
    return '...and $count more sources';
  }

  @override
  String get chatbotStatusEnabled => 'Enabled';

  @override
  String get chatbotStatusDisabled => 'Disabled';

  @override
  String get chatbotStatusOn => 'On';

  @override
  String get chatbotStatusOff => 'Off';

  @override
  String get chatbotValueNotSet => 'Not set';

  @override
  String get chatbotValueDefault => 'Default';

  @override
  String get chatbotValueUnknown => 'unknown';

  @override
  String get chatbotNotLoaded => 'Not loaded';

  @override
  String get chatbotTypeUtility => 'Utility';

  @override
  String get chatbotTypeTotalConversion => 'Total Conversion';

  @override
  String get chatbotPermissionYes => 'Yes';

  @override
  String get chatbotPermissionNo => 'NO';

  @override
  String get chatbotNoModDataYet =>
      'No mod data available yet. Make sure your game folder is configured in Settings.';

  @override
  String get chatbotNoLogLoadedYet =>
      'No log file has been loaded yet. Make sure your game folder is configured in Settings.';

  @override
  String get chatbotNoViewerDataYet =>
      'Viewer data hasn\'t loaded yet. Make sure your game folder is configured in Settings and try opening the relevant viewer page first.';

  @override
  String get chatbotNoProfileDataYet => 'No mod profile data available yet.';

  @override
  String chatbotBreakdownVanilla(Object count) {
    return 'Vanilla: $count';
  }

  @override
  String chatbotBreakdownFromMods(Object count) {
    return 'From mods: $count';
  }

  @override
  String get chatbotCommonIssuesGuide =>
      'Common Starsector Issues & Fixes\n\nOutOfMemoryError / Crash during loading\n  Increase RAM allocation on the Dashboard page.\n  Try \"current ram\" to see your setting, or \"more ram\" for a guide.\n\nGame won\'t start / Black screen\n  Verify the game install is intact and not blocked by antivirus.\n  Try disabling recently-added mods.\n  On Windows, try running as Administrator.\n\nMissing mod dependencies\n  Ask \"mod compatibility\" to see which mods have issues.\n  Install missing dependencies from the Catalog page.\n\nMod version mismatch\n  Ask \"mod updates\" to check for newer versions.\n  Check the mod\'s required game version vs yours (\"game version\").\n\nPermission errors\n  Ask \"permission issues\" for platform-specific help.\n\nFor detailed error info, try \"log summary\" and \"log errors\"\nto analyze your Starsector log file.';

  @override
  String get chatbotCsvExportGuide =>
      'CSV Export\n\nYou can export data to CSV from several pages:\n  Mod Manager — exports your mod list with versions, authors, etc.\n  Ships — exports all ship/hull data\n  Weapons — exports all weapon data\n  Hullmods — exports all hull modification data\n\nLook for the export button in the toolbar or menu on each page.';

  @override
  String get chatbotSettingsTitle => 'TriOS Settings';

  @override
  String chatbotSettingsGameFolder(Object value) {
    return '  Game folder:     $value';
  }

  @override
  String chatbotSettingsModsFolder(Object value) {
    return '  Mods folder:     $value';
  }

  @override
  String chatbotSettingsDirectLaunch(Object value) {
    return '  Direct launch:   $value';
  }

  @override
  String chatbotSettingsDefaultPage(Object value) {
    return '  Default page:    $value';
  }

  @override
  String chatbotSettingsTheme(Object value) {
    return '  Theme:           $value';
  }

  @override
  String chatbotSettingsGameVersion(Object value) {
    return '  Game version:    $value';
  }

  @override
  String chatbotSettingsColorfulGrid(Object value) {
    return '  Colorful grid:   $value';
  }

  @override
  String get chatbotFallback1 =>
      'I\'m not sure what you mean. Try \"help\" to see what I can answer.';

  @override
  String get chatbotFallback2 =>
      'I didn\'t catch that. You can ask about mods, RAM, VRAM, logs, or troubleshooting.';

  @override
  String get chatbotFallback3 =>
      'Hmm, I don\'t have an answer for that. Try asking about mod updates, compatibility, or settings.';

  @override
  String get chatbotFallback4 =>
      'Not sure about that one. Type \"help\" for a list of topics I know about.';

  @override
  String get chatbotFallback5 =>
      'I couldn\'t match that to anything I know. Try rephrasing, or ask \"help\" for ideas.';

  @override
  String get chatbotHelpGuide =>
      'Hey! I\'m the TriOS assistant. I can help you with a bunch of things — just ask me naturally and I\'ll do my best to figure out what you need.\n\nHere are some of the things I know about:\n\n• Mods — finding mods, checking which are enabled, looking for updates, compatibility issues, browsing by author or category, context menu actions, color tags, and tips\n• Game info — your Starsector version, content counts (ships, weapons, hullmods), and portrait stats\n• Configuration — RAM and VRAM, game folder paths, your settings, and mod profiles\n• Log analysis — summarizing your log file or pulling out errors\n• Troubleshooting — common issues, fixes, and file permission problems\n• Other — TriOS version, whether the game is running, exporting data to CSV, and navigating to different pages\n\nYou don\'t need to use exact commands — just describe what you\'re looking for and I\'ll take it from there!';

  @override
  String get chatbotFindModsGuide =>
      'Finding New Mods\n\nTriOS has a built-in Catalog page! Click \"Catalog\" in the sidebar\nto browse, search, and install mods directly.\n\nThe Catalog lets you:\n  Browse all available mods\n  Filter by category and game version\n  Download and install with one click\n\nYou can also find mods at:\n  Starsector Forums — fractalsoftworks.com/forum\n  Unofficial Starsector Discord — has mod channels';

  @override
  String get chatbotFolderPathsTitle => 'Folder Paths';

  @override
  String chatbotFolderPathsGame(Object value) {
    return '  Game:  $value';
  }

  @override
  String chatbotFolderPathsMods(Object value) {
    return '  Mods:  $value';
  }

  @override
  String chatbotFolderPathsSaves(Object value) {
    return '  Saves: $value';
  }

  @override
  String get chatbotSetGameFolderFirst =>
      '\nSet your game folder in Settings to get started.';

  @override
  String chatbotGameVersionHeader(Object version) {
    return 'Game Version: $version';
  }

  @override
  String chatbotGameVersionCompatibleCount(Object count) {
    return '  Compatible mods: $count';
  }

  @override
  String chatbotGameVersionWarningsCount(Object count) {
    return '  Mods with warnings: $count';
  }

  @override
  String chatbotGameVersionIncompatibleCount(Object count) {
    return '  Incompatible mods: $count';
  }

  @override
  String chatbotShipsHeader(Object count) {
    return 'Ships: $count total';
  }

  @override
  String chatbotHullmodsHeader(Object count) {
    return 'Hullmods: $count total';
  }

  @override
  String chatbotWeaponsHeader(Object count) {
    return 'Weapons: $count total';
  }

  @override
  String get chatbotLaunchTitle => 'Launch Configuration';

  @override
  String chatbotLaunchDirect(Object value) {
    return '  Direct launch:   $value';
  }

  @override
  String get chatbotLaunchDirectEnabled => 'Enabled (TriOS acts as launcher)';

  @override
  String get chatbotLaunchDirectDisabled => 'Disabled (opens game exe)';

  @override
  String chatbotLaunchCustomExe(Object path) {
    return '  Custom exe path: $path';
  }

  @override
  String get chatbotLaunchTip =>
      '\nTip: Enable Direct Launch in Settings for better mod compatibility.';

  @override
  String get chatbotLogSummaryTitle => 'Log Summary';

  @override
  String chatbotLogSummaryGameVersion(Object value) {
    return 'Game version: $value';
  }

  @override
  String chatbotLogSummaryOs(Object value) {
    return 'OS: $value';
  }

  @override
  String chatbotLogSummaryJava(Object value) {
    return 'Java: $value';
  }

  @override
  String chatbotLogSummaryModsLoaded(Object count) {
    return 'Mods loaded: $count';
  }

  @override
  String chatbotLogSummaryErrors(Object count) {
    return 'Errors found: $count';
  }

  @override
  String chatbotLogSummaryFile(Object path) {
    return 'Log file: $path';
  }

  @override
  String chatbotLogSummaryLastUpdated(Object time) {
    return 'Last updated: $time';
  }

  @override
  String get chatbotModCountTitle => 'Mod Count';

  @override
  String chatbotModCountTotal(Object count) {
    return '  Total: $count';
  }

  @override
  String chatbotModCountEnabled(Object count) {
    return '  Enabled: $count';
  }

  @override
  String chatbotModCountDisabled(Object count) {
    return '  Disabled: $count';
  }

  @override
  String get chatbotModManagerFeaturesGuide =>
      'Mod Manager Features\n\nRight-click a mod for options:\n  Change active version, open mod folder, open forum page,\n  assign categories, set a color tag, force game version,\n  view in ship/weapon/hullmod viewer, estimate VRAM,\n  mute updates, redownload & reinstall, and delete.\n\nRight-click with multiple mods selected:\n  Bulk enable/disable, check VRAM, check for updates,\n  set color tags, force game version, and delete selected.\n\nColor tags:\n  Assign one of 8 color presets to visually organize mods.\n\nGroup By:\n  Use the \"Group By\" dropdown above the mod list to group\n  mods by various criteria.\n\nCategories:\n  Assign mods to categories via the right-click menu.\n  Mods can appear in multiple categories at once.';

  @override
  String get chatbotPermissionTitle => 'File Permission Check';

  @override
  String chatbotPermissionModsWritable(Object value) {
    return '  Mods folder writable: $value';
  }

  @override
  String chatbotPermissionGameWritable(Object value) {
    return '  Game folder writable: $value';
  }

  @override
  String get chatbotPermissionWindowsFixes => 'Windows fixes:';

  @override
  String get chatbotPermissionWindowsStep1 =>
      '  1. Right-click TriOS → \"Run as administrator\"';

  @override
  String get chatbotPermissionWindowsStep2 =>
      '  2. Move Starsector out of Program Files to avoid UAC issues.';

  @override
  String get chatbotPermissionWindowsStep3 =>
      '  3. Check that your antivirus isn\'t blocking file access.';

  @override
  String get chatbotPermissionMacFixes => 'macOS fixes:';

  @override
  String get chatbotPermissionMacStep1 =>
      '  1. In System Settings → Privacy & Security, grant TriOS Full Disk Access.';

  @override
  String get chatbotPermissionMacStep2 =>
      '  2. Run: chmod -R u+rw \"<game folder path>\"';

  @override
  String get chatbotPermissionLinuxFixes => 'Linux fixes:';

  @override
  String get chatbotPermissionLinuxStep2 =>
      '  2. Check folder ownership: chown -R \$USER \"<game folder path>\"';

  @override
  String chatbotPortraitsHeader(Object count) {
    return 'Portraits: $count total';
  }

  @override
  String get chatbotRamAllocationGuide =>
      'Adjusting RAM Allocation\n\nTriOS makes this easy! Go to the Dashboard page and look for the\nRAM allocation setting. You can adjust the slider or enter a value\ndirectly.\n\nCommon recommendations:\n  Light modding (< 20 mods):  2–4 GB\n  Medium modding (20–50 mods): 4–6 GB\n  Heavy modding (50+ mods):   6–8 GB\n\nTips:\n  Leave at least 4 GB for your OS and other programs.\n  If you have 16 GB total, don\'t go above 10–12 GB.\n  The setting changes the -Xmx JVM flag in vmparams.\n\nSigns you need more RAM:\n  \"OutOfMemoryError\" in your log file.\n  Game freezing or crashing during loading.\n  Lag spikes during large battles.';

  @override
  String get chatbotRamVsVramGuide =>
      'RAM vs VRAM — Quick Guide\n\nRAM (System Memory):\n  Used by Starsector\'s Java process for game logic, mod code, and data.\n  Controlled by the JVM heap size (-Xmx flag).\n  More RAM = more mods, bigger battles, fewer OutOfMemoryErrors.\n\nVRAM (Video Memory):\n  Lives on your GPU. Used for textures, sprites, and shaders.\n  NOT controlled by the -Xmx flag or any JVM setting.\n  More VRAM = more graphical mods, higher-res textures.\n\nKey Takeaway:\n  \"OutOfMemoryError\" in your log → you need more RAM.\n  Graphical glitches or missing textures → could be VRAM.\n  Most Starsector modding issues are RAM, not VRAM.\n\nUse the Dashboard page in TriOS to adjust your RAM allocation.';

  @override
  String get chatbotViewerStatsTitle => 'Game Content Overview';

  @override
  String chatbotViewerStatsShips(Object value) {
    return '  Ships:    $value';
  }

  @override
  String chatbotViewerStatsWeapons(Object value) {
    return '  Weapons:  $value';
  }

  @override
  String chatbotViewerStatsHullmods(Object value) {
    return '  Hullmods: $value';
  }

  @override
  String chatbotViewerStatsPortraits(Object value) {
    return '  Portraits: $value';
  }

  @override
  String get chatbotOpenViewerToLoad =>
      '\nOpen a viewer page to load its data if not yet loaded.';

  @override
  String get chatbotAvailablePages => 'Available pages in the sidebar:\n';

  @override
  String get chatbotAskAboutSpecificPage =>
      '\nAsk about a specific page for details.';

  @override
  String get chatbotPageDashboard =>
      'Dashboard — the main overview page with RAM settings and mod summary.';

  @override
  String get chatbotPageModManager =>
      'Mod Manager — enable, disable, and manage your installed mods.';

  @override
  String get chatbotPageModProfiles =>
      'Mod Profiles — save and switch between different mod configurations.';

  @override
  String get chatbotPageVramEstimator =>
      'VRAM Estimator — estimate GPU memory usage for your mods.';

  @override
  String get chatbotPageChipper =>
      'Chipper (Log Viewer) — analyze your Starsector log file.';

  @override
  String get chatbotPagePortraits =>
      'Portraits — browse and replace character portraits.';

  @override
  String get chatbotPageWeapons =>
      'Weapons — browse all weapons from vanilla and mods.';

  @override
  String get chatbotPageShips =>
      'Ships — browse all ships/hulls from vanilla and mods.';

  @override
  String get chatbotPageHullmods => 'Hullmods — browse all hull modifications.';

  @override
  String get chatbotPageSettings =>
      'Settings — configure TriOS preferences and paths.';

  @override
  String get chatbotPageCatalog =>
      'Catalog — browse and download mods from the online catalog.';

  @override
  String get chatbotPageTips =>
      'Tips — view gameplay tips from your installed mods.';

  @override
  String get chatbotAskWhichMod =>
      'What mod are you looking for? Try \"find <name>\", \"do i have <name>\", or just type a mod name.';

  @override
  String chatbotFoundModsMatching(Object count, Object query) {
    return 'Found $count mods matching \"$query\":';
  }

  @override
  String get chatbotAskSpecificMod =>
      '\nAsk about a specific mod for full details.';

  @override
  String chatbotFoundHeader(Object name) {
    return 'Found: $name';
  }

  @override
  String chatbotDetailVersion(Object value) {
    return '  Version: $value';
  }

  @override
  String chatbotDetailAuthor(Object value) {
    return '  Author: $value';
  }

  @override
  String chatbotDetailStatus(Object value) {
    return '  Status: $value';
  }

  @override
  String chatbotDetailType(Object value) {
    return '  Type: $value';
  }

  @override
  String chatbotDetailGameVersion(Object value) {
    return '  Game version: $value';
  }

  @override
  String chatbotDetailDescription(Object value) {
    return '  Description: $value';
  }

  @override
  String get chatbotDetailDependencies => '  Dependencies:';

  @override
  String get chatbotDepNotInstalled => ' [NOT INSTALLED]';

  @override
  String get chatbotDepDisabled => ' [DISABLED]';

  @override
  String chatbotDetailInstalledVariants(Object count) {
    return '  Installed variants: $count';
  }

  @override
  String chatbotUpdateAvailable(Object local, Object remote) {
    return '  Update available: $remote (you have $local)';
  }

  @override
  String get chatbotUpdateNewerVersion => 'newer version';

  @override
  String chatbotIssueGameVersionIncompatible(Object current, Object needed) {
    return 'Game version incompatible (requires $needed, game is $current)';
  }

  @override
  String chatbotIssueGameVersionWarning(Object current, Object target) {
    return 'Game version may be incompatible (mod targets $target, game is $current)';
  }

  @override
  String chatbotIssueMissingDependency(Object name) {
    return 'Missing dependency: $name';
  }

  @override
  String chatbotIssueDisabledDependency(Object name) {
    return 'Disabled dependency: $name';
  }

  @override
  String chatbotIssueVersionMismatch(Object name) {
    return 'Version mismatch: $name';
  }

  @override
  String chatbotIssueIncompatibleVersion(Object name) {
    return 'Incompatible version: $name';
  }

  @override
  String get chatbotIssuesHeader => '  Issues:';

  @override
  String chatbotConflictGameVersionIncompatible(Object current, Object needed) {
    return 'game version incompatible (needs $needed, game is $current)';
  }

  @override
  String get chatbotConflictGameVersionWarning => 'game version warning';

  @override
  String chatbotConflictMissingDep(Object name) {
    return 'missing dep: $name';
  }

  @override
  String chatbotConflictDisabledDep(Object name) {
    return 'disabled dep: $name';
  }

  @override
  String chatbotConflictVersionMismatch(Object name) {
    return 'version mismatch: $name';
  }

  @override
  String chatbotConflictIncompatibleVersion(Object name) {
    return 'incompatible version: $name';
  }

  @override
  String chatbotModsWithIssuesTitle(Object count) {
    return 'Mods With Issues ($count)';
  }

  @override
  String chatbotCompatGameVersionIncompatible(Object current, Object required) {
    return 'Game version: incompatible (requires $required, game is $current)';
  }

  @override
  String chatbotCompatGameVersionWarning(Object current, Object target) {
    return 'Game version: may be incompatible (mod targets $target, game is $current)';
  }

  @override
  String chatbotCompatTitle(Object count) {
    return 'Compatibility Issues ($count mod(s) affected)';
  }

  @override
  String chatbotModsHaveChangelogs(Object count) {
    return '$count mods have changelogs:';
  }

  @override
  String get chatbotAskChangelogFor =>
      '\nAsk \"changelog for <mod name>\" to see a specific one.';

  @override
  String chatbotNoChangelogFor(Object name) {
    return 'No changelog available for \"$name\".';
  }

  @override
  String get chatbotTruncatedSuffix => '...\n(truncated)';

  @override
  String chatbotModsByAuthor(Object author, Object count) {
    return 'Mods by $author ($count)';
  }

  @override
  String get chatbotModAuthorsTitle => 'Mod Authors';

  @override
  String chatbotAuthorModCount(Object author, Object count) {
    return '  $author: $count mod(s)';
  }

  @override
  String chatbotEnabledModsTitle(Object count) {
    return 'Enabled Mods ($count)';
  }

  @override
  String chatbotDisabledModsTitle(Object count) {
    return 'Disabled Mods ($count)';
  }

  @override
  String chatbotInstalledModsTitle(Object count) {
    return 'Installed Mods ($count)';
  }

  @override
  String chatbotTcModsTitle(Object count) {
    return 'Total Conversion Mods ($count)';
  }

  @override
  String chatbotUtilityModsTitle(Object count) {
    return 'Utility/Library Mods ($count)';
  }

  @override
  String chatbotActiveProfileHeader(Object name) {
    return 'Active Profile: $name';
  }

  @override
  String chatbotProfileModsCount(Object count) {
    return '  Mods: $count';
  }

  @override
  String chatbotProfileCreated(Object date) {
    return '  Created: $date';
  }

  @override
  String chatbotProfileModified(Object date) {
    return '  Modified: $date';
  }

  @override
  String chatbotModProfilesTitle(Object count) {
    return 'Mod Profiles ($count)';
  }

  @override
  String chatbotProfileEntry(Object count, Object marker, Object name) {
    return '  $name ($count mods)$marker';
  }

  @override
  String get chatbotProfileActiveMarker => ' ← active';

  @override
  String chatbotProfileMatchesCurrent(Object name) {
    return 'Profile \"$name\" matches your current mod state exactly.';
  }

  @override
  String chatbotProfileVsCurrent(Object name) {
    return 'Profile \"$name\" vs Current Mods';
  }

  @override
  String get chatbotInProfileNotEnabled =>
      '  In profile but not currently enabled:';

  @override
  String get chatbotEnabledNotInProfile =>
      '  Currently enabled but not in profile:';

  @override
  String chatbotModCategoriesTitle(Object count) {
    return 'Mod Categories ($count)';
  }

  @override
  String chatbotCategoryModCount(Object count, Object name) {
    return '  $name ($count mods)';
  }

  @override
  String get chatbotNoModsInCategories =>
      '\nNo mods are assigned to categories yet.';

  @override
  String chatbotModUpdateLine(Object local, Object name, Object remote) {
    return '  $name: v$local -> v$remote';
  }

  @override
  String chatbotModUpdateAvailableLine(Object name) {
    return '  $name: update available';
  }

  @override
  String chatbotUpdatesAvailableTitle(Object count) {
    return 'Mod Updates Available ($count)';
  }

  @override
  String get chatbotMostRequiredTitle => 'Most Required Mods';

  @override
  String chatbotDependencyEntry(Object count, Object name, Object status) {
    return '  $name: required by $count mod(s)$status';
  }

  @override
  String chatbotRecentChangesTitle(Object count) {
    return 'Recent Mod Changes (last $count)';
  }

  @override
  String chatbotAuditEntry(Object action, Object name, Object time) {
    return '  [$action] $name  ($time)';
  }

  @override
  String chatbotAuditReason(Object reason) {
    return '    Reason: $reason';
  }

  @override
  String get chatbotTipsTitle => 'Tips from Your Mods';

  @override
  String get chatbotTipNoText => '(no text)';

  @override
  String chatbotTipSource(Object source) {
    return '    — $source';
  }

  @override
  String chatbotMoreTips(Object count) {
    return '\n$count more tips available. Ask again for different ones!';
  }

  @override
  String chatbotTopVramModsTitle(Object count) {
    return 'Top $count Mods by VRAM Usage';
  }

  @override
  String chatbotVramModEntry(Object name, Object size, Object status) {
    return '  [$status] $name — ~$size MB';
  }

  @override
  String get chatbotVramEstimateTitle => 'VRAM Usage Estimate';

  @override
  String chatbotVramEnabledMods(Object count, Object size) {
    return '  Enabled mods ($count): ~$size';
  }

  @override
  String chatbotVramAllMods(Object count, Object size) {
    return '  All mods ($count):     ~$size';
  }

  @override
  String chatbotVramLastScanned(Object time) {
    return '  Last scanned: $time';
  }

  @override
  String get chatbotVramNote =>
      '\nNote: This is an estimate based on texture sizes.\nAsk \"high vram mods\" to see the biggest consumers.';

  @override
  String get chatbotRamAllocationTitle => 'RAM Allocation';

  @override
  String chatbotRamCurrent(Object ram) {
    return '  Current RAM: $ram MB';
  }

  @override
  String chatbotRamManagedFiles(Object count) {
    return '  Managed vmparams files ($count):';
  }

  @override
  String chatbotRamFileEntry(Object path, Object ram) {
    return '    - $path$ram';
  }

  @override
  String get chatbotRamMultipleFilesWarning =>
      '\n  Warning: Multiple vmparams files have different RAM amounts.';

  @override
  String get chatbotRecentlyAddedTitle => 'Recently Added Mods';

  @override
  String chatbotRecentlyAddedEntry(Object age, Object name, Object version) {
    return '  $name $version — added $age';
  }

  @override
  String chatbotAgoYear(Object count) {
    return '$count year ago';
  }

  @override
  String chatbotAgoYears(Object count) {
    return '$count years ago';
  }

  @override
  String chatbotAgoMonth(Object count) {
    return '$count month ago';
  }

  @override
  String chatbotAgoMonths(Object count) {
    return '$count months ago';
  }

  @override
  String chatbotAgoDay(Object count) {
    return '$count day ago';
  }

  @override
  String chatbotAgoDays(Object count) {
    return '$count days ago';
  }

  @override
  String chatbotAgoHour(Object count) {
    return '$count hour ago';
  }

  @override
  String chatbotAgoHours(Object count) {
    return '$count hours ago';
  }

  @override
  String get chatbotAgoJustNow => 'just now';

  @override
  String chatbotLogErrorsFound(Object count) {
    return 'Found $count error line(s) in the log.\n';
  }

  @override
  String chatbotLogErrorLine(Object line, Object text) {
    return '  Line $line: $text';
  }

  @override
  String chatbotLogMoreErrors(Object count) {
    return '\n...and $count more. Open the Log Viewer (Chipper) for the full list.';
  }

  @override
  String chatbotLogModsFound(Object count) {
    return '$count mod(s) found in the log:';
  }

  @override
  String get chatbotLogModsApproximate =>
      ' (approximate — parsed from CSV loading lines)';

  @override
  String chatbotModlistReviewHeader(Object count) {
    return 'Modlist Review ($count mods enabled)\n\n';
  }

  @override
  String chatbotAndNMoreOpinions(Object count) {
    return '...and $count more mods I have opinions about';
  }

  @override
  String chatbotUnknownModLine(Object name) {
    return '$name — never heard of it. You\'re on your own.';
  }

  @override
  String chatbotPlusUnrecognized(Object count) {
    return '...plus $count mods I don\'t recognize.';
  }

  @override
  String chatbotComboGraphicsLib(Object count) {
    return 'GraphicsLib and $count faction mods?';
  }

  @override
  String chatbotComboNexFactions(Object count) {
    return 'Nex + $count factions. Hope you brought a book for those load times.';
  }

  @override
  String get chatbotComboNexerelinExpected =>
      'You know, most people would be using Nexerelin with that many factions.';

  @override
  String get chatbotComboNoNex => 'No Nex?';

  @override
  String get chatbotComboConsoleNex =>
      'Console Commands + Nexerelin. \"Totally legit conquest playthrough.\"';

  @override
  String get chatbotComboLibraryOnly =>
      'Nice library collection. Where are the actual mods?';

  @override
  String get chatbotVerdict10 =>
      'You\'re not really playing Starsector at this point.';

  @override
  String get chatbotVerdict9 =>
      'Genuinely solid modlist. You know what you\'re doing.';

  @override
  String get chatbotVerdict8 => 'Good taste. Your PC might not agree but I do.';

  @override
  String get chatbotVerdict7 =>
      'Pretty solid. A few questionable choices but overall not bad.';

  @override
  String get chatbotVerdict6 => 'Decent. Could be better, could be way worse.';

  @override
  String get chatbotVerdict5 =>
      'Mid. Like, aggressively average. Add some faction mods or something.';

  @override
  String get chatbotVerdict4 =>
      'This modlist needs work. I\'ve seen better from first-time modders.';

  @override
  String get chatbotVerdict3 => 'Are you even trying? This is barely modded.';

  @override
  String get chatbotVerdict2 => 'This is sad. Install Nexerelin at minimum.';

  @override
  String get chatbotVerdict1 =>
      'One mod? Really? That\'s not a modlist, that\'s a suggestion.';

  @override
  String chatbotVerdictLine(Object score, Object verdict) {
    return '  Verdict: $score/10 — $verdict';
  }

  @override
  String get chatbotOpinionLazyLib =>
      'LazyLib — you literally can\'t run anything without this. Welcome to modding.';

  @override
  String get chatbotOpinionMagicLib =>
      'MagicLib — the other tax you pay to mod this game.';

  @override
  String get chatbotOpinionGraphicsLib =>
      'GraphicsLib — hope you like your GPU running at surface-of-the-sun temps.';

  @override
  String get chatbotOpinionLunaLib =>
      'LunaLib — another library. At this point your mod folder is 50% libraries.';

  @override
  String get chatbotOpinionNexerelin =>
      'Nexerelin — oh you wanted a 4X grand strategy game? Say goodbye to your free time.';

  @override
  String get chatbotOpinionIndEvo =>
      'Industrial Evolution — for when vanilla colonies aren\'t enough of a spreadsheet simulator.';

  @override
  String get chatbotOpinionStarshipLegends =>
      'Starship Legends — your ships have feelings now. Great, more emotional baggage.';

  @override
  String get chatbotOpinionSecondInCommand =>
      'Second-in-Command — finally, someone else to blame when things go wrong.';

  @override
  String get chatbotOpinionOfficerExtension =>
      'Officer Extension — because the vanilla officer cap was clearly a personal insult.';

  @override
  String get chatbotOpinionKnightsOfLudd =>
      'Knights of Ludd — the Luddic Path got a glow-up and honestly they didn\'t deserve it.';

  @override
  String get chatbotOpinionRealisticCombat =>
      'Realistic Combat — for people who thought Starsector was too forgiving.';

  @override
  String get chatbotOpinionRaot =>
      'Random Assortment of Things — the mod equivalent of a mystery box. Somehow it works.';

  @override
  String get chatbotOpinionDiableAvionics =>
      'Diable Avionics — anime mechs in space. We all know why you installed this.';

  @override
  String get chatbotOpinionBlackrock =>
      'Blackrock Drive Yards — the faction for people who think the Hegemony isn\'t oppressive enough.';

  @override
  String get chatbotOpinionScy =>
      'Scy Nation — gotta go fast. Until you get caught and die instantly.';

  @override
  String get chatbotOpinionShadowyards =>
      'Shadowyards — stealth faction for people who think cloaking is a personality trait.';

  @override
  String get chatbotOpinionTahlan =>
      'Tahlan Shipworks — Great Houses aesthetic goes hard ngl.';

  @override
  String get chatbotOpinionArkgneisis =>
      'Legacy of Arkgneisis — flying garbage cans held together with spite and duct tape.';

  @override
  String get chatbotOpinionOra =>
      'Outer Rim Alliance — broadsides only. For people who think flanking is for cowards.';

  @override
  String get chatbotOpinionAlRuk =>
      'Al-Ruk Ascendancy — what if we made a faction and just cranked everything to 11?';

  @override
  String get chatbotOpinionMayorate =>
      'Mayorate — corporate dystopia faction. So just regular Starsector but more honest about it.';

  @override
  String get chatbotOpinionKadur =>
      'Kadur Remnant — space vikings. That\'s it. That\'s the pitch. And it works.';

  @override
  String get chatbotOpinionDassaultMikoyan =>
      'Dassault-Mikoyan — fighter spam: the faction. Your framerate weeps.';

  @override
  String get chatbotOpinionPersean =>
      'Persean Chronicles — someone actually wrote lore for this game. Like, a lot of it.';

  @override
  String get chatbotOpinionVayra =>
      'Vayra\'s Sector — more factions, more bounties, more everything. Quantity is a quality of its own.';

  @override
  String get chatbotOpinionTorchships =>
      'Torchships — hard sci-fi in my Starsector? It\'s more likely than you think.';

  @override
  String get chatbotOpinionRoider =>
      'Roider Union — space rednecks with welding torches. Surprisingly endearing.';

  @override
  String get chatbotOpinionApexDesign =>
      'Apex Design Collective — these ships look like someone\'s thesis project and I mean that as a compliment.';

  @override
  String get chatbotOpinionEis =>
      'Enigma Industries — another faction mod. Sure. Why not. Throw it on the pile.';

  @override
  String get chatbotOpinionSwp =>
      'Ship/Weapon Pack — basically vanilla+ but actually good.';

  @override
  String get chatbotOpinionDmods =>
      'Missing Ships — filling gaps you didn\'t know existed. Solid pick.';

  @override
  String get chatbotOpinionArsenalExpansion =>
      'Arsenal Expansion — more guns, more ships, can\'t go wrong. Or can you.';

  @override
  String get chatbotOpinionArmaa =>
      'Arma Armatura — giant robots in Starsector. The Gundam fans found us.';

  @override
  String get chatbotOpinionUnknownSkies =>
      'Unknown Skies — 30 new planets to colonize. As if you needed more territory to mismanage.';

  @override
  String get chatbotOpinionMorePortraits =>
      'More Character Portraits — because staring at the same 20 faces gets old fast.';

  @override
  String get chatbotOpinionConsoleCommands =>
      'Console Commands — \"I\'m just using it for testing\" sure buddy.';

  @override
  String get chatbotOpinionAutosave =>
      'Autosave — the fact this isn\'t in vanilla is a war crime.';

  @override
  String get chatbotOpinionCommonRadar =>
      'Common Radar — how did you play without this?';

  @override
  String get chatbotOpinionVersionChecker =>
      'Version Checker — responsible modding. Boring but necessary.';

  @override
  String get chatbotOpinionMoreShipNames =>
      'More Ship Names — 7500 new names and somehow still no HMS Boaty McBoatface.';

  @override
  String get chatbotOpinionSpeedUp =>
      'SpeedUp — because vanilla game speed is for people with infinite patience.';

  @override
  String get chatbotOpinionTransponderOff =>
      'Transponder Off — running dark without consequences. Living the pirate dream.';

  @override
  String get chatbotOpinionDetailedCombatResults =>
      'Detailed Combat Results — for when you need to know exactly which frigate let you down.';

  @override
  String get chatbotOpinionLeadingPip =>
      'Leading Pip — aim assist for people who can\'t lead shots. No shame. Ok maybe a little.';

  @override
  String get chatbotOpinionWarDashboard =>
      'War Dashboard — spreadsheet simulator for your war simulator. We\'ve gone full circle.';

  @override
  String get chatbotOpinionStarWars =>
      'Star Wars mod — because no space game is safe from Star Wars.';

  @override
  String get chatbotOpinionVramVore =>
      'VRAM Vore — it\'s literally named VRAM Vore. You know what you signed up for.';

  @override
  String get catalogSortName => 'Name';

  @override
  String get catalogSortNewest => 'Newest';

  @override
  String get catalogSortGameVersion => 'Game Version';

  @override
  String get catalogSortPopular => 'Popular';

  @override
  String get catalogSortMostDiscussed => 'Most Discussed';

  @override
  String get catalogSortRecentlyActive => 'Recently Active';

  @override
  String userThemeFileUnreadable(Object fileName) {
    return 'Couldn\'t read $fileName. It isn\'t valid JSON.';
  }

  @override
  String userThemeNoThemesSection(Object fileName) {
    return '$fileName has no \"themes\" section.';
  }

  @override
  String userThemeMissingField(Object fields, Object key) {
    return 'Couldn\'t load \"$key\": $fields is missing.';
  }

  @override
  String userThemeMissingFields(Object fields, Object key) {
    return 'Couldn\'t load \"$key\": $fields are missing.';
  }

  @override
  String userThemeLoadError(Object error, Object key) {
    return 'Couldn\'t load \"$key\": $error';
  }

  @override
  String get themeFontSystem => 'System';

  @override
  String get themeGlitterSidebar => 'Sidebar';

  @override
  String get themeGlitterToolbar => 'Toolbar';

  @override
  String get themeGlitterTooltips => 'Tooltips';

  @override
  String get themeBackgroundMotes => 'Motes';

  @override
  String get themeBackgroundStarfield => 'Starfield';

  @override
  String get themeBackgroundNebula => 'Nebula';

  @override
  String get themeBackgroundConstellation => 'Constellation';

  @override
  String get themeBackgroundEmbers => 'Embers';

  @override
  String get themeBackgroundAurora => 'Aurora';

  @override
  String get themeBackgroundRain => 'Rain';

  @override
  String get themeBackgroundRadar => 'Radar';

  @override
  String get themeBackgroundCircuitry => 'Circuitry';

  @override
  String get themePalette => 'Palette';

  @override
  String get sentryFeedbackNameLabel => 'Username (not required)';

  @override
  String get sentryFeedbackEmailLabel => 'Email (definitely not required!)';

  @override
  String get sentryFeedbackMessageLabel => 'Description';

  @override
  String get sentryFeedbackRequiredLabel => '(required)';

  @override
  String sentryFeedbackMessagePlaceholder(Object appName) {
    return 'Please describe the issue you are experiencing with $appName.\n\n$appName is not affiliated with Fractal Softworks and cannot help with issues with the game, payments, license keys, or mods.';
  }

  @override
  String get onboardingSetup => 'Setup';

  @override
  String get onboardingWhereIsStarsectorLocated =>
      '1. Where is Starsector located?';

  @override
  String get onboardingGameLocation => 'Game Location';

  @override
  String get onboardingSelectYourGameDirectory => 'Select your game directory';

  @override
  String get onboardingGameNotFound => 'Game not found';

  @override
  String get onboardingHowDoYouWant =>
      '2. How do you want to handle mod updates?';

  @override
  String get onboardingThisWillOnlyAffect =>
      'This will only affect your mods when you update them.';

  @override
  String get onboardingNoModsWillBe => 'No mods will be affected immediately.';

  @override
  String get onboardingReplacePreviousVersion =>
      'Installing or updating a mod will replace the previous version of it.';

  @override
  String get onboardingTriosWillNeverAutomatically =>
      'TriOS will never automatically remove mod versions.';

  @override
  String onboardingRemoveAllButLastN(Object count) {
    return 'Installing or updating a mod will remove all but the last $count highest versions.';
  }

  @override
  String get onboardingBugReporting => '3: Bug Reporting';

  @override
  String onboardingBugReportingBody(Object appName) {
    return '$appName can send crash/error reports to help me find and fix issues (it does actually help!).\nExample of a report: https://i.imgur.com/k9E6zxO.png.\n\nNothing identifiable or personal is ever sent.\n\nSent: app version, mod list, basic PC info (screen resolution, OS, RAM...), randomly generated user ID, and crash details.\nNot sent: IP address, language, region, zip code, PC name, PC username, anything about other apps, etc.';
  }

  @override
  String get onboardingOneClickModInstall => '4: One-Click Mod Install';

  @override
  String onboardingOneClickBody(Object appName) {
    return '$appName can handle \'Install with TriOS\' links, allowing you to install mods with a single click from websites.';
  }

  @override
  String get onboardingYouWillBeAsked =>
      'You will be asked to confirm before any mod is downloaded.';

  @override
  String get onboardingYouCanAlwaysChange =>
      'You can always change these on the Settings page later';

  @override
  String get onboardingFinish => 'Finish';

  @override
  String get onboardingNext => 'Next';

  @override
  String get launch_with_settingsSkipLauncher => 'Skip Launcher';

  @override
  String get launch_with_settingsExperimentalTooltip =>
      'EXPERIMENTAL\nIf you encounter strange issues in-game, disable this.\nPossible issues include: invisible ships, zoomed-in combat, no Windows title bar, probably more.';

  @override
  String get launch_with_settingsNoGameExe => 'No game exe';

  @override
  String get launch_with_settingsStarsectorVersionUnknown =>
      'Starsector version unknown';

  @override
  String get launch_with_settingsNoModsFolder => 'No mods folder!';

  @override
  String get launch_with_settingsWidth => 'Width';

  @override
  String get launch_with_settingsHeight => 'Height';

  @override
  String get launch_with_settingsUseVanillaLauncherSettings =>
      'Use your non-TriOS launcher settings instead';

  @override
  String get launch_with_settingsNote =>
      'Note: These settings are separate from the normal launcher\'s settings.';

  @override
  String get launch_with_settingsDisableSkipLauncherWarning =>
      'If you encounter strange issues in-game, disable Skip Launcher.';

  @override
  String get launch_with_settingsPossibleIssues =>
      'Possible issues include: invisible ships, zoomed-in combat, no Windows title bar, probably more.';

  @override
  String get game_performanceRam => 'RAM';

  @override
  String game_performanceVmparamsFilesTooltip(Object files) {
    return 'vmparams files:\n$files';
  }

  @override
  String get game_performanceNoVmparamsFileFound => 'No vmparams file found.';

  @override
  String get game_performanceNotAllSameRamWarning =>
      '<b>Warning</b>: Not all vmparams files\nare set to use the same amount of RAM.\nPick one RAM option below to set all\nto the same value.';

  @override
  String game_performanceAssignedRam(Object fileCount, Object ramAmount) {
    return 'Assigned: <b>$ramAmount MB</b> in <b>$fileCount</b> files';
  }

  @override
  String get game_performanceMoreRamNote =>
      'More RAM is not always better.\n6 or 8 GB is enough for almost any game.\n\nUse the Console Commands mod to view RAM use in the top-left of the console.';

  @override
  String get game_performanceGameSettings => 'Game Settings';

  @override
  String get game_performanceOpenConfigJsonTooltip =>
      'Open config.json in your default text editor';

  @override
  String get game_performanceFpsLimit => 'FPS Limit';

  @override
  String get game_performanceRecommendedMaxFps =>
      'Recommended: Set your max FPS to your monitor\'s refresh rate or lower.';

  @override
  String get game_performanceUnableToReadFps =>
      'Unable to read FPS Limit from settings.json';

  @override
  String get game_performanceUnableToReadVsync =>
      'Unable to read Vsync from settings.json';

  @override
  String get game_performanceVsyncTooltip =>
      'Vsync reduces screen tearing but introduces a tiny input delay.';

  @override
  String dashboardRamSubtitle(Object ram) {
    return '$ram MB';
  }

  @override
  String get dashboardUnknownRam => '(unknown RAM)';

  @override
  String get dashboardErrorsTooltip =>
      'Errors are normal. You can ignore them unless Starsector is misbehaving.\n\nIf there is a crash, look at the bottom of the log for a bunch of lines starting with \'at\'. Hopefully, one of them will mention the problematic mod\'s id, name, or prefix.\nFor example, \'at data.scripts.campaign.II_IGFleetInflater.inflate(II_IGFleetInflater.java:59)\' shows \'II_\', which is Interstellar Imperium.\n\nMake sure your mods are up to date and report bugs to the mod makers!';

  @override
  String get dashboardStarsectorLog => 'Starsector Log';

  @override
  String dashboardLogLastUpdated(Object logName, Object time) {
    return '$logName •   last updated $time';
  }

  @override
  String get dashboardLastUpdatedUnknown => 'unknown';

  @override
  String get dashboardErrorsAreNormalCrash =>
      'Errors are normal. If the game crashes, check here for fatal errors.';

  @override
  String get mod_list_basicMods => 'Mods';

  @override
  String mod_list_basicEnabledCount(Object enabled, Object total) {
    return '$enabled of $total enabled';
  }

  @override
  String get mod_list_basicCopyModListTooltip =>
      'Copy mod list to clipboard\n\nRight-click to include disabled mods';

  @override
  String get mod_list_basicShowingEnabledModsOnly =>
      'Showing enabled mods only';

  @override
  String get mod_list_basicShowingDisabledModsOnly =>
      'Showing disabled mods only';

  @override
  String get mod_list_basicShowingAllMods => 'Showing all mods';

  @override
  String get mod_list_basicEnabledOnly => 'Enabled Only';

  @override
  String get mod_list_basicDisabledOnly => 'Disabled Only';

  @override
  String get mod_list_basicShowAll => 'Show All';

  @override
  String mod_list_basicSortByLabel(Object label) {
    return 'Sort by $label';
  }

  @override
  String get mod_list_basicSortLoadOrder => 'Load Order';

  @override
  String get mod_list_basicSortName => 'Name';

  @override
  String get mod_list_basicSortAuthor => 'Author';

  @override
  String get mod_list_basicSortVersion => 'Version';

  @override
  String get mod_list_basicSortVram => 'VRAM Impact';

  @override
  String get mod_list_basicSortGameVersion => 'Game Version';

  @override
  String get mod_list_basicSortEnabled => 'Enabled';

  @override
  String mod_list_basicDownloadUpdateTooltip(Object count) {
    return 'Download $count update';
  }

  @override
  String mod_list_basicDownloadAllUpdatesTooltip(Object count) {
    return 'Download all $count updates';
  }

  @override
  String get mod_list_basicUpdateAll => 'Update All';

  @override
  String get mod_list_basicAllMods => 'ALL MODS';

  @override
  String get mod_list_basicFilterHint => 'Filter...';

  @override
  String get mod_list_basicShowingAllUpdates => 'Showing all updates';

  @override
  String get mod_list_basicShowingUnmutedUpdates => 'Showing unmuted updates';

  @override
  String get mod_list_basicUpdatesHidden => 'Updates hidden';

  @override
  String mod_list_basicAllUpdates(Object count) {
    return 'ALL UPDATES ($count)';
  }

  @override
  String mod_list_basicUpdatesHeader(Object count) {
    return 'UPDATES ($count';
  }

  @override
  String mod_list_basicPlusMuted(Object count) {
    return ' + $count ';
  }

  @override
  String mod_list_basicHiddenUpdates(Object count) {
    return '$count hidden updates';
  }

  @override
  String mod_list_basicPlusMutedParens(Object count) {
    return ' (+ $count ';
  }

  @override
  String mod_list_basicDownloadUpdatesForMods(Object count) {
    return 'Download updates for $count mods?';
  }

  @override
  String get mod_list_basicSwapOnUpdateTooltip =>
      'When checked, updating an enabled mod switches to the new version.';

  @override
  String get mod_list_basicColorModListRowsTooltip =>
      'Color mod list rows using each mod\'s icon palette.';

  @override
  String get modListLoadOrderExplanation =>
      'Starsector loads mods in order by their name.\nIt sorts with whitespace at the top, then uppercase, then lowercase (\'  x\', \'Z\', \'a\'),\nas opposed to a more intuitive sort (\'a\', \'  x\', \'Z\').\n\nMods loaded last will (usually) override values from mods loaded earlier.';

  @override
  String get mod_list_basic_entryRightClickForMore => 'Right-click for more.';

  @override
  String mod_list_basic_entryMissingDependencies(
    Object dependencies,
    Object modName,
  ) {
    return '\'$modName\' is missing \'$dependencies\'.';
  }

  @override
  String get versionCheckDownloadInstallUpdate => 'Download & Install Update';

  @override
  String get versionCheckClickToOpenDownloadPage =>
      'Click to Open Download Page';

  @override
  String get versionCheckRequiresManualDownload =>
      'This mod requires a manual download.';

  @override
  String get versionCheckRequiresManualDownloadClick =>
      'This mod requires a manual download.\nClick to open the download page.';

  @override
  String versionCheckSource(Object url) {
    return 'Source: $url';
  }

  @override
  String get versionCheckRightClickToExpand =>
      'Right-click to expand this tooltip.';

  @override
  String versionCheckInfoFromAuthor(Object appName) {
    return 'Update information is provided by the mod author, not $appName.';
  }

  @override
  String get versionCheckUpToDate => 'You are up to date.';

  @override
  String versionCheckCurrentVersion(Object version) {
    return 'Current version: $version';
  }

  @override
  String versionCheckRemoteVersion(Object version) {
    return 'Remote version: $version';
  }

  @override
  String versionCheckerUrl(Object url) {
    return 'Version Checker url:\n$url';
  }

  @override
  String get versionCheckErrorCheckingForUpdates =>
      'Error checking for updates.';

  @override
  String get versionCheckErrorUsuallyCaused =>
      'This is usually caused by the mod author or a network error. Please visit the mod page to manually find updates.';

  @override
  String get versionCheckReportBug =>
      'If the in-game Version Checker is working for this specific mod, please report a TriOS bug.';

  @override
  String get versionCheckMessage => 'Message';

  @override
  String get versionCheckMayNotSupportVersionChecker =>
      'This mod may not support Version Checker.\nPlease visit the mod page to manually find updates.';

  @override
  String get modSummaryNoName => '(no name)';

  @override
  String modSummaryIdVersion(Object id, Object version) {
    return '$id • $version';
  }

  @override
  String modSummaryNewVersion(Object version) {
    return 'New version:      $version';
  }

  @override
  String get modSummaryDescription => 'Description';

  @override
  String get modSummaryTipAddIcon =>
      'Tip: Add a LunaSettings icon or add an icon.png file to the mod folder to get an icon.';

  @override
  String get mod_dependenciesRequiredGameVersion => 'Required game version';

  @override
  String get mod_dependenciesOriginalGameVersion => 'Original game version';

  @override
  String get mod_dependenciesGameVersion => 'Game version';

  @override
  String get mod_dependenciesErrorThisModRequires =>
      'Error: this mod requires a different version of the game.';

  @override
  String get mod_dependenciesWarningThisModRequires =>
      'Warning: this mod requires a different version of a mod that you have installed, but might run with this one.';

  @override
  String mod_dependenciesFound(Object version) {
    return '(found $version)';
  }

  @override
  String get mod_dependenciesMissing => '(missing)';

  @override
  String mod_dependenciesDisabled(Object version) {
    return '(disabled: $version)';
  }

  @override
  String mod_dependenciesWrongVersion(Object version) {
    return '(wrong version: $version)';
  }

  @override
  String mod_dependenciesFoundWarning(Object version) {
    return '(found: $version)';
  }

  @override
  String get commonNone => '(none)';

  @override
  String get commonUnknown => 'Unknown';

  @override
  String version_check_iconUpdateIsMuted(Object version) {
    return 'Update $version is muted. You\'ll be notified for the next version.';
  }

  @override
  String get version_check_iconUpdatesMuted => 'Updates muted';

  @override
  String get merge_mod_sourcesMod => 'Mod';

  @override
  String get merge_mod_sourcesStats => 'Stats';

  @override
  String merge_mod_sourcesIgnoredCount(Object count) {
    return '(+$count ignored)';
  }

  @override
  String merge_mod_sourcesOtherModCount(Object count) {
    return '(+$count other mod)';
  }

  @override
  String merge_mod_sourcesOtherModsCount(Object count) {
    return '(+$count other mods)';
  }

  @override
  String merge_mod_sourcesStatsTooltip(Object ignored, Object winner) {
    return 'Only $winner\'s stats are used.\nOverridden (no effect): $ignored';
  }

  @override
  String merge_mod_sourcesFileTooltipHeader(Object fileLabel) {
    return '$fileLabel: what each mod changes';
  }

  @override
  String get merge_mod_sourcesUsedForMost => '(used for most)';

  @override
  String get merge_mod_sourcesBase => '(base)';

  @override
  String get filterIncluded => 'Included';

  @override
  String get filterExcluded => 'Excluded';

  @override
  String filterIncludedValuesTooltip(Object values) {
    return 'Included:\n$values';
  }

  @override
  String filterExcludedValuesTooltip(Object values) {
    return 'Excluded:\n$values';
  }

  @override
  String viewerToolbarTotalCount(Object count, Object entityName) {
    return '$count $entityName';
  }

  @override
  String get file_cardCalculating => 'Calculating...';

  @override
  String get mod_download_statusStarting => 'Starting…';

  @override
  String get mod_download_statusDownloading => 'Downloading…';

  @override
  String get mod_download_statusInstalling => 'Installing…';

  @override
  String get mod_type_iconTotalConversionModsShould =>
      'Total Conversion mods should not be run with other mods unless explicitly stated to be compatible.';

  @override
  String get mod_type_iconThisModDeclaresThat =>
      'This mod declares that it may be added to or removed from a save at will.';

  @override
  String get mod_data_fileUsedForMostValues => 'used for most values';

  @override
  String get mod_data_fileAlsoApplied => 'also applied';

  @override
  String get mod_data_fileInUse => 'in use';

  @override
  String get mod_data_fileOverridden => 'overridden';

  @override
  String get smartSearchSyntaxExclude => '-field:value (exclude)';

  @override
  String smartSearchSyntaxNumericOperators(Object description) {
    return '$description; supports numeric operators';
  }

  @override
  String get profileModProfilesDescription =>
      'Mod profiles are a way to quickly switch between different mods, including specific versions.\nWhen one is enabled, any mods you change will update the profile as well.\n\n\nYou can also generate profiles from your saves.';

  @override
  String get profileSaveGames => 'Save Games';

  @override
  String get profileNoValidProfileOnClipboard =>
      'No valid mod profile was found on your clipboard.';

  @override
  String get profileExportStep1 => '1. Export a profile by clicking the';

  @override
  String get profilePasteStep2 => '2. Paste the text to another TriOS user.';

  @override
  String get profileImportToUse => 'Import Profile to use your profile.';

  @override
  String get profileCreateNewProfileTooltip =>
      'Creates a new profile using your current mods.\nDoes not set it to active.';

  @override
  String get profileSharedModListName => 'Shared Mod List';

  @override
  String get profileDefaultImportedName => 'Imported Profile';

  @override
  String get profileDiffHeaderMod => 'Mod';

  @override
  String get mod_profilesExisting => 'Existing';

  @override
  String get mod_profilesImported => 'Imported';

  @override
  String profileSuccessfullyOverwritten(Object name) {
    return 'Successfully overwritten profile: $name';
  }

  @override
  String profileCopySuffix(Object name) {
    return '$name (Copy)';
  }

  @override
  String profileCopySuffixCount(Object count, Object name) {
    return '$name (Copy $count)';
  }

  @override
  String profileCardLevel(Object level) {
    return 'Level $level';
  }

  @override
  String profileCardCreatedModified(Object created, Object modified) {
    return 'Created: $created\nLast modified: $modified';
  }

  @override
  String get mod_profile_cardDateMissing => '(date missing)';

  @override
  String profileDeleteProfileBody(Object name) {
    return 'Are you sure you want to delete profile \'$name\'?';
  }

  @override
  String get profileCardEnabled => 'Enabled';

  @override
  String get profileCardEnable => 'Enable';

  @override
  String get mod_profile_cardCreatesAProfileBased =>
      'Creates a profile based on this save\'s last-used mods.';

  @override
  String get mod_profile_cardModNotFound => 'Mod not found';

  @override
  String mod_profile_cardVersionNotFound(
    Object installedVersion,
    Object modName,
    Object version,
  ) {
    return 'Version $version not found for $modName. You have $installedVersion installed.';
  }

  @override
  String get mod_profile_cardUnimplemented => 'Unimplemented';

  @override
  String mod_profile_cardCopyModEntry(Object name, Object version) {
    return '$name - Version: $version';
  }

  @override
  String get mod_profiles_managerTheNewProfileWill =>
      'The new profile will be activated and is identical to your current profile.';

  @override
  String get mod_profiles_managerModsBeingEnabledDisabled =>
      'Mods Being Enabled, Disabled, or Changing Version';

  @override
  String get mod_profiles_managerEnablingMod => 'Enabling mod';

  @override
  String get mod_profiles_managerDisablingMod => 'Disabling mod';

  @override
  String get mod_profiles_managerSwappingVersion => 'Swapping version';

  @override
  String get mod_profiles_managerActivateIgnoreMissingMods =>
      'Activate (ignore missing mods)';

  @override
  String get mod_profiles_managerActivate => 'Activate';

  @override
  String mod_profiles_managerUnknownMod(Object modId) {
    return 'Unknown Mod ($modId)';
  }

  @override
  String mod_profiles_managerVersionSwapDescription(
    Object fromVersion,
    Object modName,
    Object toVersion,
  ) {
    return '$modName $fromVersion → $toVersion';
  }

  @override
  String mod_profiles_managerModIsMissing(Object modId) {
    return 'Mod \"$modId\" is missing.';
  }

  @override
  String get mod_profiles_managerMissingMod => 'Missing Mod';

  @override
  String mod_profiles_managerVersionSubstitutedBody(
    Object bestVersion,
    Object modName,
    Object version,
  ) {
    return 'Version $version of \"$modName\" is not available, so $bestVersion will be used instead.';
  }

  @override
  String mod_profiles_managerVersionNotAvailable(
    Object modName,
    Object version,
  ) {
    return 'Version $version of \"$modName\" is not available.';
  }

  @override
  String get mod_profiles_managerVersionMissing => 'Version missing';

  @override
  String get mod_profiles_managerVersionSubstituted => 'Version substituted';

  @override
  String get mod_profiles_managerMissingModsWillBe =>
      'Missing mods will be discarded from your profile after activating.';

  @override
  String get recordNoSourceRecordYet =>
      'No source record exists for this mod yet.\nRecords are created automatically when TriOS processes installed mods.';

  @override
  String get recordNotInstalled => '(not installed)';

  @override
  String get recordUnknownValue => '(unknown)';

  @override
  String get recordNoVersionCheckerData => '(no version checker data)';

  @override
  String get recordNotFoundInCatalog => '(not found in catalog)';

  @override
  String get recordNoDownloadsRecorded => '(no downloads recorded)';

  @override
  String get category_managerLibrary => 'Library';

  @override
  String get category_managerUtility => 'Utility';

  @override
  String get category_managerQualityOfLife => 'Quality of Life';

  @override
  String get category_managerMegamod => 'Megamod';

  @override
  String get category_managerFaction => 'Faction';

  @override
  String get category_managerShipPack => 'Ship Pack';

  @override
  String get category_managerWeaponFighterPack => 'Weapon/Fighter Pack';

  @override
  String get category_managerGraphics => 'Graphics';

  @override
  String get category_managerColonies => 'Colonies';

  @override
  String get category_managerQuestsBars => 'Quests & Bars';

  @override
  String get category_managerExploration => 'Exploration';

  @override
  String get category_managerOfficers => 'Officers';

  @override
  String get category_managerSkillsAbilities => 'Skills & Abilities';

  @override
  String get category_managerAudio => 'Audio';

  @override
  String get category_managerPortraitPack => 'Portrait Pack';

  @override
  String get category_managerFlagPack => 'Flag Pack';

  @override
  String get category_managerTotalConversion => 'Total Conversion';

  @override
  String get category_managerMiscCampaignMod => 'Misc. Campaign Mod';

  @override
  String get tipsHiddenTipsExplanation =>
      'Hidden tips are tips that have a freq of 0, so they don\'t appear ingame.';

  @override
  String get tipsAboutBody =>
      'Shows all loading screen tips, which mod adds them, and how often they appear (freq).\nYou may hide a tip to stop it from showing ingame. TriOS will automatically re-apply your changes if a mod is updated.';

  @override
  String get tipsHideSelected => 'Hide Selected';

  @override
  String get tipsUnhideSelected => 'Unhide Selected';

  @override
  String get tipsUnknownModName => '(unknown mod name)';

  @override
  String get tipsHide => 'Hide';

  @override
  String get tipsUnhide => 'Unhide';

  @override
  String get tipsNoTipText => '(No tip text)';

  @override
  String get tipsHowLikelyThisTip =>
      'How likely this tip is to be shown. 1 is normal. Higher is more likely. 0 is never.';

  @override
  String tipsFreqLabel(Object freq) {
    return 'Freq: $freq';
  }

  @override
  String get tipsHiddenLabel => '(hidden)';

  @override
  String tipsTipAddedBy(Object modName, Object versions) {
    return 'Tip added by $modName,\nversion(s): $versions';
  }

  @override
  String get chipperNothingUploaded =>
      'Nothing is ever uploaded. All processing is done on your computer.';

  @override
  String get modsGridFilterModName => 'Mod name';

  @override
  String get modsGridFilterModId => 'Mod ID';

  @override
  String get modsGridFilterAuthorNameIncludesAliases =>
      'Author name (includes aliases)';

  @override
  String get modsGridFilterModVersion => 'Mod version';

  @override
  String get modsGridFilterGameVersionCompatibility =>
      'Game version compatibility';

  @override
  String get modsGridFilterDependencyNameOrId =>
      'Name or ID of a mod it requires';

  @override
  String get modsGridFilterEnabledDescription =>
      'Whether the mod is enabled (true/false)';

  @override
  String get modsGridUpdatesAvailable => 'Updates Available';

  @override
  String get modsGridFavorite => 'Favorite';

  @override
  String get modsGridVersionSelect => 'Version Select';

  @override
  String get modsGridModIcon => 'Mod Icon';

  @override
  String get modsGridModTypeIcon => 'Mod Type Icon';

  @override
  String get modsGridLastEnabled => 'Last Enabled';

  @override
  String get modsGridLastUpdated => 'Last Updated';

  @override
  String get modSummaryNoAuthor => '(no author)';

  @override
  String get modSummaryNoDescription => '(no description)';

  @override
  String modsGridOriginalGameVersion(Object version) {
    return 'Original game version: $version';
  }

  @override
  String get modsGridNoGameVersion => '(no game version)';

  @override
  String get modsGridThisWillScanAll =>
      'This will scan all enabled mods and estimate the total VRAM usage.';

  @override
  String get modsGridThisMayTakeALag =>
      'This may take a few minutes and cause your computer to lag!';

  @override
  String get modsGridCancelScan => 'Cancel Scan';

  @override
  String get modsGridEstVram => 'Est. VRAM';

  @override
  String get modsGridSwapBetweenModLoadouts =>
      'Swap between mod loadouts. Manage them in the Profiles tab.';

  @override
  String get modsGridModProfile => 'Mod Profile';

  @override
  String get modsGridIfAModHasIconUseColors =>
      'If a mod has an icon, use its colors to style the mod row.';

  @override
  String get modsGridShowAWarningIcon =>
      'Show a warning icon next to mods whose data has a problem, like a mod whose .version file and mod_info.json don\'t agree on the version.';

  @override
  String get modsGridIfAModIsInMultipleCategories =>
      'If a mod is in multiple categories, show the mod in each category rather than only in its primary category.';

  @override
  String get modsGridWhetherToShowUpdatesSection =>
      'Whether to show a section at the top of the page containing only mods with updates.';

  @override
  String get modsGridShowingUpdatesSection => 'Showing Updates section';

  @override
  String get modsGridShowingUpdatesSectionInclMuted =>
      'Showing Updates section (incl. muted)';

  @override
  String get modsGridNotShowingUpdateSection => 'Not showing Update section';

  @override
  String modsGridEnableAllConfirm(Object count) {
    return 'Are you sure you want to enable all $count mods?';
  }

  @override
  String get modsGridThisWillEnableLatest =>
      'This will enable the latest version of all disabled mods.\nMods that are already enabled won\'t be changed.';

  @override
  String modsGridDisableAllConfirm(Object count) {
    return 'Are you sure you want to disable all $count mods?';
  }

  @override
  String get modsGridVramEstimateTooltip =>
      'An *estimate* of how much VRAM is used based on the images in the mod folder.\nThis may be inaccurate.';

  @override
  String get modsGridVramEstimate => 'VRAM Estimate';

  @override
  String modsGridFromModImages(Object bytes, Object count) {
    return '$bytes from mod ($count images)';
  }

  @override
  String get modsGridIllustratedEntitiesNote =>
      '\n\nNOTE\nIllustrated Entities dynamically loads and unloads images from VRAM.';

  @override
  String get modsGridClickHornToSeeFullChangelog =>
      'Click horn to see full changelog';

  @override
  String modsGridUpdateVersionIsMuted(Object version) {
    return 'Update $version is muted. You\'ll be notified for the next version.';
  }

  @override
  String get modsGridUpdatesMuted => 'Updates muted';

  @override
  String modsGridModRequires(Object dependency, Object name) {
    return '$name requires $dependency';
  }

  @override
  String modsGridEnableDependencyName(Object name) {
    return 'Enable $name';
  }

  @override
  String get modsGridCouldnTOpenBrowser =>
      'Couldn\'t open browser. Google recommends Chrome for a faster experience!';

  @override
  String modsGridYouHaveInstalledNeeds(
    Object installedVersion,
    Object requiredVersion,
  ) {
    return 'You have $installedVersion. This mod needs $requiredVersion or newer.';
  }

  @override
  String modsGridUpdateDependencyVersionRequired(
    Object name,
    Object requiredVersion,
  ) {
    return 'Update $name ($requiredVersion required)';
  }

  @override
  String get modsGridClickToDownloadLatest =>
      'Click to download the latest version.';

  @override
  String get modsGridClickToOpenDownloadPage =>
      'Click to open the download page.';

  @override
  String modsGridSearchForNewerDependency(Object name) {
    return 'Search for newer $name';
  }

  @override
  String modsGridInstallDependency(Object name) {
    return 'Install $name';
  }

  @override
  String modsGridDownloadAndInstallDependency(Object appName, Object name) {
    return 'Download and install $name with $appName';
  }

  @override
  String modsGridSearchDependency(Object name) {
    return 'Search $name';
  }

  @override
  String modDataIssuesVersionCheckerMismatch(
    Object modInfoVersion,
    Object versionCheckerVersion,
  ) {
    return 'This mod\'s Version Checker says $versionCheckerVersion but its mod_info.json says $modInfoVersion';
  }

  @override
  String modDataIssuesVersionMismatchDetail(Object versionCheckerVersion) {
    return 'The mod\'s .version file and its mod_info.json list different versions. This is a mistake by the mod author. TriOS uses the Version Checker version ($versionCheckerVersion) when comparing versions.';
  }

  @override
  String modManagerDependencyFound(Object version) {
    return '(found $version)';
  }

  @override
  String get modManagerDependencyMissing => '(missing)';

  @override
  String modManagerDependencyDisabled(Object version) {
    return '(disabled: $version)';
  }

  @override
  String modManagerDependencyWrongVersion(Object version) {
    return '(wrong version: $version)';
  }

  @override
  String modManagerDependencyFoundVersion(Object version) {
    return '(found: $version)';
  }

  @override
  String get modInfoDialogUnknown => '(unknown)';

  @override
  String get modInfoDialogTotalConversion => 'Total Conversion';

  @override
  String get modInfoDialogUtilityMod => 'Utility Mod';

  @override
  String get modInfoDialogDownloadedFrom => 'Downloaded from';

  @override
  String get modInfoDialogInstalledVersions => 'Installed Versions';

  @override
  String get modInfoDialogInstalledVersion => 'Installed Version';

  @override
  String get modInfoDialogAvailable => 'Available';

  @override
  String get modInfoDialogUpToDate => 'Up to date';

  @override
  String modInfoDialogEnabledList(Object names) {
    return 'Enabled: $names';
  }

  @override
  String modInfoDialogDisabledList(Object names) {
    return 'Disabled: $names';
  }

  @override
  String get modInfoDialogMuted => 'Muted';

  @override
  String modInfoDialogVersionMuted(Object version) {
    return '$version muted';
  }

  @override
  String get modInfoDialogUnmuted => 'Unmuted';

  @override
  String modInfoDialogFirstSeenDate(Object date) {
    return 'First seen: $date';
  }

  @override
  String modInfoDialogLastEnabledDate(Object date) {
    return 'Last enabled: $date';
  }

  @override
  String get modInfoDialogViews => 'Views';

  @override
  String get modInfoDialogReplies => 'Replies';

  @override
  String get modInfoDialogLastPost => 'Last Post';

  @override
  String get modInfoDialogCreated => 'Created';

  @override
  String get modInfoDialogBoard => 'Board';

  @override
  String get modInfoDialogYes => 'Yes';

  @override
  String get modInfoDialogNo => 'No';

  @override
  String get modInfoDialogDisableThisMod => 'Disable this mod';

  @override
  String get modInfoDialogEnableAVersion => 'Enable a version';

  @override
  String get modInfoDialogDeleteThisMod => 'Delete this mod';

  @override
  String get catalogUpdateAvailable => 'Update available';

  @override
  String get modSummaryLastEnabled => 'Last enabled: ';

  @override
  String modSummaryNoModsDependOn(Object name) {
    return 'No mods depend on $name';
  }

  @override
  String get modSummaryDisabledDependents => 'Disabled Dependents';

  @override
  String modSummaryWantsVersion(Object version) {
    return ' (wants $version)';
  }

  @override
  String get auditActionEnabled => 'Enabled';

  @override
  String get auditActionDisabled => 'Disabled';

  @override
  String get auditActionDeleted => 'Deleted';

  @override
  String auditActionWithTimestamp(Object action, Object date, Object reason) {
    return '$action $date\nReason: $reason';
  }

  @override
  String get modContextMenuRed => 'Red';

  @override
  String get modContextMenuCoral => 'Coral';

  @override
  String get modContextMenuAmber => 'Amber';

  @override
  String get modContextMenuChartreuse => 'Chartreuse';

  @override
  String get modContextMenuEmerald => 'Emerald';

  @override
  String get modContextMenuSky => 'Sky';

  @override
  String get modContextMenuViolet => 'Violet';

  @override
  String get modContextMenuRose => 'Rose';

  @override
  String categoryContextMenuManageCategory(Object category) {
    return 'Manage: $category';
  }

  @override
  String get categoryContextMenuPleaseSelectAPrimary =>
      '(please select a primary category)';

  @override
  String get categoryNameLabel => 'Category name';

  @override
  String categoryManagementPopupCategoryAssignedTo(Object count) {
    return 'This category is assigned to $count mod(s). They will become uncategorized.';
  }

  @override
  String get categoryManagementPopupAddCategory => 'Add category...';

  @override
  String get categoryManagementPopupCreateCategory => 'Create category';

  @override
  String get categoryIconPickerDialogSearchIcons => 'Search icons...';

  @override
  String get modInstallSelectionDialogCouldnTInstallThis =>
      'Couldn\'t install this file';

  @override
  String get modInstallSelectionDialogCouldnTInstallThese =>
      'Couldn\'t install these files';

  @override
  String modInstallSelectionDialogInstallCountOfMods(
    Object selected,
    Object total,
  ) {
    return 'Install $selected of $total mods';
  }

  @override
  String get modInstallSelectionDialogCouldnTBeInstalled =>
      'Couldn\'t be installed:';

  @override
  String modInstallSelectionDialogCouldnTBeInstalledCount(Object count) {
    return 'Couldn\'t be installed ($count):';
  }

  @override
  String get modInstallSelectionDialogToggleWhetherAlreadyInstalled =>
      'Toggle whether already-installed mods are replaced by the versions being installed.';

  @override
  String get modInstallSelectionDialogNoModsSelected => 'No mods selected';

  @override
  String modInstallSelectionDialogInstallCountMods(Object count) {
    return 'Install $count mods';
  }

  @override
  String get modInstallSelectionDialogTheseModsAllHave =>
      'These mods all have the same id and version, so only one may be selected.';

  @override
  String get modInstallSelectionDialogExistingModWillBe =>
      '(existing mod will be replaced)';

  @override
  String modInstallSelectionDialogAlreadyInstalled(Object version) {
    return '(already installed$version)';
  }

  @override
  String get modInstallationErrorDialogThereWasAnError =>
      'There was an error while installing.\nPlease install the mod manually.';

  @override
  String get modInstallationErrorDialogThereWereErrorsWhile =>
      'There were errors while installing.\nPlease install the mods manually.\n';

  @override
  String modInstallationErrorDialogCheckLogs(Object appName) {
    return 'Check the $appName logs for more information.\n\n';
  }

  @override
  String get modVersionSelectionDropdownThisModRequiresA =>
      'This mod requires a different version of the game';

  @override
  String modVersionSelectionDropdownMultipleEnabled(Object name) {
    return 'Warning\nYou have two or more enabled mod folders for $name. The game will pick one at \'random\'.\nSelect one version from the dropdown.';
  }

  @override
  String modVersionSelectionDropdownRequires(Object dependencies) {
    return 'Requires $dependencies';
  }

  @override
  String modVersionSelectionDropdownMultipleSameVersion(
    Object appName,
    Object versions,
  ) {
    return 'Warning\nYou have two or more of the same version ($versions) of this mod in your mods folder. $appName may not handle this correctly.\nPlease remove one manually.';
  }

  @override
  String get modVersionSelectionDropdownClickToDisable => 'Click to disable';

  @override
  String modVersionSelectionDropdownClickToUseNewerVersion(Object version) {
    return 'Click to use newer version $version';
  }

  @override
  String get modDataWarningIconWarningsHidden =>
      'Mod data warnings are hidden. Turn them back on in the Mods page menu.';

  @override
  String get modListExporterCopiedImportViaProfiles =>
      'Copied mod list to clipboard. Import via Mod Profiles page.';

  @override
  String get batchInstallationNotifierFinalizing => 'Finalizing...';

  @override
  String get batchPreScannerSourceDoesNotExist => 'Source does not exist';

  @override
  String get batchPreScannerNotASupportedArchive =>
      'Not a supported archive format';

  @override
  String get batchPreScannerNoModInfoJson => 'No mod_info.json found in source';

  @override
  String get batchPreScannerCouldNotParseAny =>
      'Could not parse any mod_info.json in source';

  @override
  String batchInstallationFilesProgress(Object count, Object total) {
    return '$count / $total files';
  }

  @override
  String wispgridGroupItemsCount(Object count) {
    return '$count items';
  }

  @override
  String get wispgridGroupAllMods => 'All Mods';

  @override
  String wispgridGroupMoveItemsTo(Object count) {
    return 'Move $count items to…';
  }

  @override
  String get wispgridGroupMoveTo => 'Move to…';

  @override
  String wispgridGroupMoveItemsToGroup(Object count, Object group) {
    return 'Move $count items to $group';
  }

  @override
  String wispgridGroupMoveToGroup(Object group) {
    return 'Move to $group';
  }

  @override
  String get wispgridGroupUncategorized => 'Uncategorized';

  @override
  String get wispgridGroupNoAuthor => 'No Author';

  @override
  String get wispgridGroupModType => 'Mod Type';

  @override
  String get wispgridGroupUtility => 'Utility';

  @override
  String get wispgridGroupOther => 'Other';

  @override
  String get wispgridGroupUnknown => 'Unknown';

  @override
  String get wispgridGroupPinned => 'Pinned';

  @override
  String wispgridGroupEstimatedVramUseBy(Object group) {
    return 'Estimated VRAM use by $group\n';
  }

  @override
  String wispgridGroupEstimateVramUsageFor(Object count) {
    return 'Estimate VRAM usage for $count unscanned mods';
  }

  @override
  String get wispgridHeaderRowClickToSortTooltip =>
      'Click to sort. Drag the edges to resize.\nRight-click for grouping and column options.';

  @override
  String get wispgridHeaderRowFreezeThisColumn => 'Freeze this column';

  @override
  String get wispgridHeaderRowUnfreezeThisColumn => 'Unfreeze this column';

  @override
  String get catalogHasDownloadLink => 'Has Download Link';

  @override
  String get catalogHasSourceCode => 'Has Source Code';

  @override
  String get catalogDiscord => 'Discord';

  @override
  String get catalogForum => 'Forum';

  @override
  String get catalogArchived => 'Archived';

  @override
  String get catalogStatus => 'Status';

  @override
  String get catalogBothInstalledAvailable => 'Both Installed & Available';

  @override
  String get catalogOnlyInstalled => 'Only Installed';

  @override
  String get catalogNotInstalled => 'Not Installed';

  @override
  String get catalogAllVersions => 'All Versions';

  @override
  String get catalogModCatalog => 'Mod Catalog';

  @override
  String catalogModsCount(Object count) {
    return '$count Mods';
  }

  @override
  String get catalogUrl => 'URL';

  @override
  String get catalogForumDarkThemeInstructions =>
      'Forum Dark Theme Instructions';

  @override
  String get catalogForumDarkThemeBody =>
      'Read the whole thing first!\n\n1. Log in to the forum, then reopen this dialog.\n2. Click the button below to navigate to the theme settings.\n3. Next to \'Current Theme\', click (change) and select \'Back n Black\'.';

  @override
  String get catalogForumProfilePrefs => 'Forum Profile Prefs';

  @override
  String get catalogCheckingForWebviewSupport =>
      'Checking for webview support...';

  @override
  String get catalogBrowserDisabledByDefault =>
      'The web browser is disabled by default\nto prevent crash looping on some systems.\n\nClick Load Once, and, if it works, click Always Load next time.';

  @override
  String catalogAppQuitUnexpectedly(Object appName) {
    return '$appName quit unexpectedly.\nThe browser has been disabled as a precaution.';
  }

  @override
  String catalogBrowserLoadedUntilExit(Object appName) {
    return 'Browser will be loaded until $appName exits.';
  }

  @override
  String catalogBrowserAlwaysLoad(Object appName) {
    return 'Browser will always load (unless $appName crashes).';
  }

  @override
  String get catalogCatalogMod => 'Catalog mod';

  @override
  String get catalogUnableToDisplayWeb => 'Unable to display web browser';

  @override
  String get catalogWebviewIsRequiredBut =>
      'WebView2 is required but not installed.';

  @override
  String get catalogPleaseInstallItFrom =>
      'Please install it from https://developer.microsoft.com/en-us/microsoft-edge/webview2/';

  @override
  String get catalogLinuxIsNotSupported => 'Linux is not supported';

  @override
  String get catalogUseAStandaloneBrowser =>
      'Use a standalone browser to find mods (maybe at https://starmodder.pages.dev ?) instead.';

  @override
  String get catalogNotSupported => 'Not supported';

  @override
  String get catalogShowAiModSummaries => 'Show AI mod summaries';

  @override
  String get catalogTurnOnAiFeatures =>
      'Turn on AI features in Settings to use this.';

  @override
  String catalogPartOfThreadTooltip(Object threadTitle) {
    return 'Part of the \"$threadTitle\" forum thread.';
  }

  @override
  String catalogPartOfThread(Object threadTitle) {
    return 'part of $threadTitle';
  }

  @override
  String get catalogInstalledDisabled => 'Installed, disabled';

  @override
  String get catalogNoDescriptionYet => 'No description...yet!';

  @override
  String get catalogLlmModThisCard => 'LLM mod (this card)';

  @override
  String get catalogResolvedDownloadCandidates =>
      'Resolved download candidates';

  @override
  String get catalogUpdateAvailableSupportsInstall =>
      'Update available.\n\nThis mod supports Install with TriOS';

  @override
  String get catalogUpdateAvailableOpenDownload =>
      'Update available.\nOpen download page';

  @override
  String get catalogInstalledAndEnabledHint =>
      'Installed and enabled.\nRight-click the card to disable.';

  @override
  String get catalogInstalledButDisabledHint =>
      'Installed but disabled.\nRight-click the card to enable.';

  @override
  String get catalogInstall => 'Install';

  @override
  String catalogDownloadSupportsInstall(Object modName) {
    return 'Download $modName.\n\nThis mod supports Install with TriOS.';
  }

  @override
  String catalogDownloadName(Object modName) {
    return 'Download $modName';
  }

  @override
  String get catalogGet => 'Get';

  @override
  String get catalogOpenTheDownloadPage => 'Open the download page';

  @override
  String get catalogNoDownloadAvailable => 'No download available';

  @override
  String get catalogSeveralDownloadsAvailable =>
      'Several downloads available.\nClick to choose';

  @override
  String get catalogModdingSubforum => 'Modding Subforum';

  @override
  String catalogForumViewsCount(Object count) {
    return '$count forum views';
  }

  @override
  String catalogForumRepliesCount(Object count) {
    return '$count forum replies';
  }

  @override
  String catalogLastForumPost(Object date) {
    return 'Last forum post: $date';
  }

  @override
  String catalogSourceCodeOn(Object host) {
    return 'Source code on $host';
  }

  @override
  String get catalogClickToOpenInBrowser => 'Click to open in your browser';

  @override
  String get catalogClickToReadFullLicense => 'Click to read the full license.';

  @override
  String get catalogItemNounMods => 'mods';

  @override
  String get catalogItemNounThreads => 'threads';

  @override
  String get catalogForumIndexSubforumsPostsStats =>
      'forum index, subforums, individual posts and stats';

  @override
  String get catalogSource => 'Source';

  @override
  String get catalogDataSourcesDialogPath => 'Path';

  @override
  String get catalogRefreshDisabledWhileLoading =>
      'Refresh disabled while loading';

  @override
  String get catalogFetchFreshData => 'Fetch fresh data, bypassing the cache';

  @override
  String get catalogDeleteCachedFiles => 'Delete the cached files from disk';

  @override
  String get catalogNothingCachedToClear => 'Nothing cached to clear';

  @override
  String get catalogDataSourcesDialogNotCached => 'Not cached';

  @override
  String get catalogDataSourcesDialogLoading => 'Loading…';

  @override
  String get catalogDataSourcesDialogLoaded => 'Loaded';

  @override
  String catalogCachedAgeAgo(Object age, Object ttl) {
    return 'Cached $age ago (TTL $ttl)';
  }

  @override
  String catalogNotCachedWithTtl(Object ttl) {
    return 'Not cached (TTL $ttl)';
  }

  @override
  String get forumPostHeaderHideTheModSummary => 'Hide the mod summary';

  @override
  String get forumPostHeaderShowTheModSummary => 'Show the mod summary';

  @override
  String get forumPostHeaderExitFullScreen => 'Exit full screen';

  @override
  String get forumPostHeaderFullScreen => 'Full screen';

  @override
  String get forumPostHeaderAlreadyInstalled => 'Already installed';

  @override
  String get forumPostHeaderNotInstalled => 'Not installed';

  @override
  String get forumPostHeaderOpenDownloadPage => 'Open download page';

  @override
  String get catalogSpoiler => 'Spoiler';

  @override
  String catalogEmbeddedVideo(Object label) {
    return 'Embedded video · $label';
  }

  @override
  String catalogPostCount(Object count) {
    return '$count posts';
  }

  @override
  String catalogOpenAuthorProfile(Object authors) {
    return 'Open $authors\'s forum profile in your browser';
  }

  @override
  String catalogSummaryFromSources(Object place) {
    return 'Summary from $place.';
  }

  @override
  String get modSummarySummaryFromModInfo => 'Summary from mod_info.json.';

  @override
  String catalogSummaryGeneratedByAi(Object appName) {
    return 'Summary generated by AI. See the $appName About page for AI Disclosure.';
  }

  @override
  String get modSummaryWhatHappensToYour =>
      'What happens to your existing saved games when you update this mod';

  @override
  String get catalogAiSummaryAlways => 'Always';

  @override
  String get catalogAiSummaryOnlyIfMissing => 'Only if missing';

  @override
  String get catalogAiSummaryNever => 'Never';

  @override
  String get catalogClickActionForumDialog => 'Forum dialog';

  @override
  String get catalogClickActionEmbeddedBrowser => 'Embedded browser';

  @override
  String get catalogClickActionSystemBrowser => 'System browser';

  @override
  String catalogSideRailHide(Object panel) {
    return 'Hide $panel';
  }

  @override
  String catalogSideRailShow(Object panel) {
    return 'Show $panel';
  }

  @override
  String get catalogVersionChecker => 'Version checker';

  @override
  String catalogVersionCheckerWithVersion(Object version) {
    return 'Version checker ($version)';
  }

  @override
  String catalogInstallWithAppName(Object appName) {
    return 'Install with $appName';
  }

  @override
  String get catalogMirror => 'Mirror';

  @override
  String get app_action_buttonsYouMustEnableAllowReporting =>
      'You must enable \'Allow Crash Reporting\' in Settings to report bugs.\nThis icon may be hidden on the Settings page.';

  @override
  String get app_action_buttonsContinuingWillSendA =>
      'Continuing will send a bug report. You will be able to enter additional details about the issue on the next page.';

  @override
  String app_action_buttonsIWantToReportA(Object appName) {
    return 'I want to report a $appName bug';
  }

  @override
  String get app_action_buttonsSwitchToSidebarLayout =>
      'Switch to sidebar layout';

  @override
  String get app_action_buttonsSwitchToTopToolbarLayout =>
      'Switch to top toolbar layout';

  @override
  String get app_action_buttonsWhenEnabledModifyingA =>
      'When enabled, modifying a mod\'s rules.csv will\nreload in-game rules as long as dev mode is enabled.';

  @override
  String app_action_buttonsRulesHotReloadIs(Object state) {
    return '\n\nrules.csv hot reload is $state.';
  }

  @override
  String app_action_buttonsClickTo(Object action) {
    return '\nClick to $action.';
  }

  @override
  String get app_action_buttonsGameDetection => 'Game Detection';

  @override
  String get app_action_buttonsRunning => 'Running';

  @override
  String get app_action_buttonsNotRunning => 'Not running';

  @override
  String get app_action_buttonsMatchedBy => 'Matched by';

  @override
  String get app_action_buttonsDetectors => 'Detectors';

  @override
  String get app_action_buttonsCheckDuration => 'Check Duration';

  @override
  String get app_action_buttonsPeriod => 'Period';

  @override
  String get app_action_buttonsErrors => 'Errors';

  @override
  String get app_sidebarExpandSidebar => 'Expand sidebar';

  @override
  String get app_sidebarCollapseSidebar => 'Collapse sidebar';

  @override
  String get app_sidebarSwitchToTopToolbar => 'Switch to top toolbar';

  @override
  String get app_right_toolbarUnableToFindOr =>
      'Unable to find or modify file(s).';

  @override
  String get app_right_toolbarRightClickTriosExe =>
      'Right-click TriOS.exe and select \'Run as Administrator\'.';

  @override
  String get app_right_toolbarEnsureTheyExist =>
      '\nEnsure that they exist and are not read-only.\n';

  @override
  String get app_right_toolbarTriosMayNotBeAble =>
      '\nTriOS may not be able to modify game files, otherwise.\n';

  @override
  String app_right_toolbarUnableToEditFile(Object description, Object path) {
    return '❌ Unable to edit $description.\n    ($path).';
  }

  @override
  String get app_right_toolbarUnknownPath => 'unknown path';

  @override
  String get warningTitle => 'Warning';

  @override
  String get app_right_toolbarMustRunAsAdmin => 'Must Run as Admin';

  @override
  String get app_right_toolbarRunningAsAdministratorNdrag =>
      'Running as Administrator.\nDrag\'n\'drop will not work due to Windows security limits.';

  @override
  String get app_right_toolbarTriosLikeSmolBefore =>
      'TriOS, like SMOL before it, is a hobby that I do because I enjoy it, and because I enjoy giving to Starsector.';

  @override
  String get app_right_toolbarNtheyReTheResult =>
      '\nThey\'re the result of many hundreds of hours of coding, and I hope they have been useful (and even enjoyable) for you.';

  @override
  String get app_right_toolbarNifYouFeelLike =>
      '\nIf you feel like donating, thank you. If you can\'t donate but wish you were rich enough to just give money away, thank you anyway :)';

  @override
  String get app_right_toolbarNtakeCareOfYourself => '\nTake care of yourself,';

  @override
  String get activityIconDownloading => 'Downloading...';

  @override
  String get activityIconInstalling => 'Installing...';

  @override
  String get activityIconModInstalled => 'Mod installed';

  @override
  String get activityIconModsInstalled => 'Mods installed';

  @override
  String get nav_reorder_menuThisRestoresTheDefault =>
      'This restores the default order of the navigation icons.';

  @override
  String get settingsGroupStarsector => 'Starsector';

  @override
  String settingsGroupTriosUpdates(String appName) {
    return '$appName Updates';
  }

  @override
  String get settingsSelfUpdateUnavailableMac =>
      'Self-update is not available on macOS. Please download new versions from the Releases page.';

  @override
  String get settingsPrereleasesTooltip =>
      'Play with fire.\nEnabling this will include Previews when checking for updates.\nPreviews are *usually* stable, but no guarantees. They contain bugfixes and often add a feature or two that may not be totally finished.';

  @override
  String settingsEnableTriosPreviewReleases(String appName) {
    return 'Enable $appName preview releases';
  }

  @override
  String get settingsInterface => 'Interface';

  @override
  String get settingsWindowScaleTooltip =>
      'Makes the UI larger or smaller.\nMin 25%, max 300%.';

  @override
  String settingsTriosScale(String appName) {
    return '$appName scale';
  }

  @override
  String get settingsScaleCautionTooltip =>
      'Make small changes at a time.\nTri-Tachyon is not responsible if you set it to 300% and it\'s so big you can\'t get to the setting to fix it.';

  @override
  String get settingsModOrganization => 'Mod Organization';

  @override
  String get settingsFolderNamingTooltip =>
      'If enabled, TriOS will always add the version number to the folder name when installing a mod.\nFor example; LazyLib-1.8b, LazyLib-1.8, LazyLib-1.7.\n\nIf disabled, the latest mod won\'t change folder name, even when you update the mod.\nOlder versions of a mod will still include the version number in order to tell them apart.\nFor example; LazyLib, LazyLib-1.8, LazyLib-1.7.';

  @override
  String get settingsManualNamingTooltip =>
      'Manual mode. TriOS will not rename folders.\nThis may result in TriOS overwriting mods when updating or installing new versions, if the folder already exists.\nFor example, if you have folder `LazyLib` and install a new version where the folder name is also `LazyLib`, the older one will be overwritten.\n\nTODO: clean up this UI and use a dropdown or something :)';

  @override
  String get settingsOldModVersions => 'Old mod versions';

  @override
  String get settingsKeepOnlyOneModVersion => 'Keep only one mod version';

  @override
  String get settingsKeepAllModVersions => 'Keep all mod versions';

  @override
  String get settingsKeepVersionsNeverRemove =>
      'TriOS will never automatically remove mod versions.';

  @override
  String get settingsKeepVersionsReplaceMod =>
      'Installing or updating a mod will replace the mod.';

  @override
  String settingsKeepVersionsKeepLastN(num count) {
    return 'Installing or updating a mod will remove all but the last $count highest versions.';
  }

  @override
  String get settingsRemoveAllButNewest =>
      'Remove all but the newest version of each mod.';

  @override
  String settingsRemoveAllButNewestCount(num count) {
    return 'Remove all but the newest $count versions of each mod.';
  }

  @override
  String get settingsCleanUpPrompt =>
      'Prompts for confirmation before deleting anything.';

  @override
  String get settingsConcurrentExtractionsTooltip =>
      'Number of mod archives to extract at the same time during batch installation.\nHigher values install faster but use more CPU and disk I/O.';

  @override
  String get settingsCompanionMod => 'Companion Mod';

  @override
  String settingsCompanionModDescription(String appName) {
    return 'The $appName Companion Mod is required to replace portraits without touching the actual mods (see Portraits tab).\nIt does nothing else and has effectively no impact on loading or performance.';
  }

  @override
  String get settingsCompanionModNotInstalled =>
      'The Companion Mod is not installed.';

  @override
  String get settingsCompanionModSetUpCorrectly =>
      'The Companion Mod is set up correctly.';

  @override
  String get settingsCompanionModNotEnabled =>
      'The Companion Mod is installed but not enabled.';

  @override
  String settingsReinstallCompanionTooltip(String appName) {
    return 'If the Companion Mod already exists, it\'ll be replaced with a fresh version.\nPortrait replacements that show in $appName will NOT be lost.';
  }

  @override
  String get settingsReinstallCompanionMod => 'Reinstall Companion Mod';

  @override
  String get settingsInstallCompanionMod => 'Install Companion Mod';

  @override
  String get settingsOpenCompanionModFolder => 'Open Companion Mod Folder';

  @override
  String get settingsMisc => 'Misc';

  @override
  String settingsRescanTooltip(String appName) {
    return 'This sets how often we check if there are new or changed mods in your folder.\nA shorter time means more frequent checks.\nDoes not scan when $appName is in the background.';
  }

  @override
  String settingsRescanEvery(num count) {
    return 'Rescan mod folder every: $count seconds';
  }

  @override
  String settingsNotificationDuration(num count) {
    return 'Notification duration: $count seconds';
  }

  @override
  String settingsMaxHttpRequests(num count) {
    return 'Max HTTP requests at once: $count';
  }

  @override
  String settingsErrorReportingTooltip(String appName) {
    return 'This allows $appName to send crash/error reports to get fixed.\nNo personal/identifiable data is sent.\nWill soft-restart $appName to apply.';
  }

  @override
  String settingsRestartToApply(String appName) {
    return '$appName must be restarted to apply this change.';
  }

  @override
  String settingsErrorReportingDialogContent(String appName) {
    return 'If allowed, $appName uses Sentry.io to collect error reports.\nIf not allowed, the Sentry SDK will be completely disabled; it will not be initialized on startup, which is why the soft restart is required to toggle this setting and why \'Report A Bug\' is not available if it is disabled.\n\nIf error reporting is enabled, care is taken to avoid sending any personal/identifiable data such as IP addresses, usernames (even in file paths), device names, location, etc.\nMod names, device info (OS, CPU count, RAM, etc) is sent.';
  }

  @override
  String settingsLaunchPrecheckTooltip(String appName) {
    return 'Whether to check for mod dependencies and prevent launching if they aren\'t met.\nDisable if $appName is getting them wrong, or you\'d just like to use vanilla dependency check behavior.';
  }

  @override
  String settingsCheckGameRunningTooltip(String appName) {
    return 'Whether to check if the game is running and lock parts of $appName.\nDisable if $appName is detecting incorrectly.';
  }

  @override
  String get settingsGameRunningCheckError =>
      'Error checking if game is running!';

  @override
  String settingsAccessibilitySemanticsTooltip(String appName) {
    return 'The Flutter framework (what $appName uses) has a bug that causes freezes related to text fields on some Linux distros.\nDisabling accessibility semantics fixes those freezes.\nYou may need to fully restart $appName to apply the changes.';
  }

  @override
  String get settingsAiFeatures => 'AI Features';

  @override
  String settingsDisableAiTooltip(String appName) {
    return 'When checked, $appName never shows anything AI-related:\n- Generated mod summaries on the Catalog page';
  }

  @override
  String get settingsJunkDrawerSubtitle =>
      'Junk drawer of developer actions and info';

  @override
  String settingsAlreadyLatestVersion(
    String current,
    String found,
    String prerelease,
  ) {
    return 'You are already on the latest version (current: $current, found: $found$prerelease)';
  }

  @override
  String settingsDeepLinkTooltip(String appName) {
    return 'Registers or unregisters $appName as the handler for \'Install with $appName\' links,\nwhich lets you install mods with one click from websites.';
  }

  @override
  String get settingsDisableOpenWithTrios => 'Disable \'Open with TriOS\'';

  @override
  String get settingsEnableOpenWithTrios => 'Enable \'Open with TriOS\'';

  @override
  String get settingsYourThemes => 'Your themes';

  @override
  String get settingsBuiltIn => 'Built-in';

  @override
  String get settingsThemeTooltip =>
      'Change up the colors.\nNote: only the default theme (StarsectorTriOSTheme) is regularly tested.';

  @override
  String get settingsCopyThemeTooltip =>
      'Copy theme as JSON\nPuts the selected theme on the clipboard, ready to paste into your own themes file.';

  @override
  String settingsThemeCopiedSnackbar(String name) {
    return '\"$name\" copied. Paste it into your themes file.';
  }

  @override
  String settingsOpenThemesFileTooltip(String path) {
    return 'Open my themes file\n$path';
  }

  @override
  String get settingsFontTooltip =>
      'The font all of TriOS\'s text is drawn in.\nSystem uses whatever font your operating system provides.';

  @override
  String get debugSectionShowDiagnosticsTooltip =>
      'Shows internal diagnostics in the toolbar, including\nprocess detection status and cache statistics.';

  @override
  String get debugSectionEngineTrailsTooltip =>
      'Draws the trail of smoke or glow behind a ship\'s lit engines\nin the ship viewer. Still being worked on.';

  @override
  String get debugSectionRestoreWarningTooltip =>
      'CAUTION: May mess up TriOS\'s settings (not mods).\nGoing back in time is not tested. Recommend backing up your settings first (click Log File button to open folder).';

  @override
  String get debugSectionSelectARelease => '← Select a release';

  @override
  String debugSectionConsoleLogLevel(String appName) {
    return '← Select $appName console logging level (resets at restart)';
  }

  @override
  String debugSectionFileLogLevel(String appName) {
    return '← Select $appName file logging level (resets at restart)';
  }

  @override
  String get debugSectionResetCategoriesDialog =>
      'This will reset categories to defaults, removing any user-created categories.\nMod assignments to default categories will be kept.';

  @override
  String get debugSectionTestError => 'This is a test error';

  @override
  String debugSectionDetectedFiles(num count) {
    return 'Detected ($count):';
  }

  @override
  String debugSectionCacheAgeHours(num hours) {
    return '${hours}h ago';
  }

  @override
  String debugSectionCacheAgeMinutes(num minutes) {
    return '${minutes}m ago';
  }

  @override
  String debugSectionCachedWithCount(String age, num count) {
    return 'Cached $age, $count entries';
  }

  @override
  String debugSectionCached(String age) {
    return 'Cached $age';
  }

  @override
  String get debugSectionNotCached => 'Not cached';

  @override
  String get debugSectionForumDataRefreshed => 'Forum data refreshed.';

  @override
  String debugSectionForumUpdated(String time) {
    return 'Updated: $time';
  }

  @override
  String debugSectionForumTotalEntries(num count) {
    return 'Total entries: $count';
  }

  @override
  String debugSectionForumMatchedCount(num count) {
    return 'Matched to ModRecords: $count';
  }

  @override
  String debugSectionForumEntryLine(
    String topicId,
    String title,
    num views,
    num replies,
  ) {
    return '#$topicId  $title  ($views views, $replies replies)';
  }

  @override
  String get debugSectionNotCollectedNote =>
      'Note: the below information is not collected by TriOS.\nThis is here in case TriOS is misbehaving, to hopefully see if anything looks wrong.';

  @override
  String debugSectionCurrentDirectoryEnv(String path) {
    return 'Current directory (env variable): $path';
  }

  @override
  String debugSectionCurrentDirectoryExecutable(String path) {
    return 'Current directory based on executable: $path';
  }

  @override
  String debugSectionLocaleIntl(String locale) {
    return 'Locale (using Intl package): $locale';
  }

  @override
  String debugSectionRamUsage(String amount) {
    return 'RAM usage: $amount';
  }

  @override
  String debugSectionMaxRamUsage(String amount) {
    return 'Max RAM usage: $amount';
  }

  @override
  String debugSectionTriosVersion(String version) {
    return 'TriOS version: $version';
  }

  @override
  String debugSectionDartVersion(String version) {
    return 'Dart version: $version';
  }

  @override
  String debugSectionOs(String os, String version) {
    return 'OS: $os $version';
  }

  @override
  String debugSectionProcessors(num count) {
    return 'Processors: $count';
  }

  @override
  String get debugSectionFilterByVariantId => 'Filter by variant id';

  @override
  String get debugSectionNoSearch => '(no search)';

  @override
  String get debugSectionIdNotFound => '(id not found)';

  @override
  String get debugSectionAllMods => 'ALL Mods';

  @override
  String get navLabelDash => 'Dash';

  @override
  String get navLabelMods => 'Mods';

  @override
  String get navLabelProfiles => 'Profiles';

  @override
  String get navLabelCatalog => 'Catalog';

  @override
  String get navLabelLogs => 'Logs';

  @override
  String get navLabelVramEstimator => 'VRAM Estimator';

  @override
  String get navLabelCodex => 'Codex';

  @override
  String get navLabelShips => 'Ships';

  @override
  String get navLabelWeapons => 'Weapons';

  @override
  String get navLabelHullmods => 'Hullmods';

  @override
  String get navLabelFactions => 'Factions';

  @override
  String get navLabelPortraits => 'Portraits';

  @override
  String get navLabelSector => 'Sector';

  @override
  String get navLabelTips => 'Tips';

  @override
  String get navLabelSettings => 'Settings';

  @override
  String get navTooltipDashboard => 'Dashboard';

  @override
  String get navTooltipModManager => 'Mod Manager';

  @override
  String get navTooltipModProfiles => 'Mod Profiles';

  @override
  String get navTooltipModCatalog => 'Mod Catalog';

  @override
  String get navTooltipLogViewer => 'Log Viewer';

  @override
  String get navTooltipVramEstimator => 'VRAM Estimator';

  @override
  String get navTooltipCodex => 'Codex';

  @override
  String get navTooltipShipViewer => 'Ship Viewer';

  @override
  String get navTooltipWeaponViewer => 'Weapon Viewer';

  @override
  String get navTooltipHullmodViewer => 'Hullmod Viewer';

  @override
  String get navTooltipFactionViewer => 'Faction Viewer';

  @override
  String get navTooltipPortraitViewer => 'Portrait Viewer & Replacer';

  @override
  String get navTooltipSectorMap => 'Sector Map';

  @override
  String get navTooltipTipsManager => 'Tips Manager';

  @override
  String get navTooltipSettings => 'Settings';

  @override
  String get downloadStatusQueued => 'Queued';

  @override
  String get downloadStatusRetrievingFileInfo => 'Retrieving File Info';

  @override
  String get downloadStatusDownloading => 'Downloading';

  @override
  String get downloadStatusCompleted => 'Completed';

  @override
  String get downloadStatusFailed => 'Failed';

  @override
  String get downloadStatusPaused => 'Paused';

  @override
  String get downloadStatusCanceled => 'Canceled';

  @override
  String get toastGroupAllModsInstalled => 'All mods installed';

  @override
  String get toastGroupInstallingMods => 'Installing mods';

  @override
  String get toastGroupDownloadingMods => 'Downloading mods';

  @override
  String toastGroupInstalledOne(num count) {
    return 'Installed $count mod';
  }

  @override
  String toastGroupInstalledMany(num count) {
    return 'Installed $count mods';
  }

  @override
  String toastGroupInstallingOne(num count) {
    return 'Installing $count mod';
  }

  @override
  String toastGroupInstallingMany(num count) {
    return 'Installing $count mods';
  }

  @override
  String toastGroupDownloadingOne(num count) {
    return 'Downloading $count mod';
  }

  @override
  String toastGroupDownloadingMany(num count) {
    return 'Downloading $count mods';
  }

  @override
  String toastGroupSuccessFailed(num successCount, num failedCount) {
    return '$successCount successful, $failedCount failed';
  }

  @override
  String toastGroupComplete(num completed, num total) {
    return '$completed of $total complete';
  }

  @override
  String toastGroupMoreCount(num count) {
    return '+$count more';
  }

  @override
  String get toastGroupRemoveFromGroup => 'Remove from group';

  @override
  String get commonInstalling => 'Installing...';

  @override
  String get commonDownloading => 'Downloading...';

  @override
  String get commonCollapse => 'Collapse';

  @override
  String get commonExpand => 'Expand';

  @override
  String get toastInstallationFailed => 'Installation failed';

  @override
  String get toastDownloadedArchiveSize => 'Downloaded archive size';

  @override
  String get toastInstalledSizeOnDisk => 'Installed size on disk';

  @override
  String toastPreviouslyEnabled(String version) {
    return 'Previously enabled: $version';
  }

  @override
  String toastUpdatedToVersion(String appName, String version) {
    return '$appName was updated to $version!';
  }

  @override
  String toastVersionNowAvailable(String version) {
    return '$version is now available!';
  }

  @override
  String updateToVersion(String version) {
    return 'Update to $version';
  }

  @override
  String get aprilFoolsActuallyJoke =>
      'Ok, it\'s actually an April Fool\'s joke. It\'s completely offline and harmless, promise.';

  @override
  String aprilFoolsChatbotAvailable(String chatbotName) {
    return 'New! $chatbotName is now available in TriOS.';
  }

  @override
  String get contextMenuOpenForumPage => 'Open Forum Page';

  @override
  String get contextMenuOpenNexusPage => 'Open Nexus Page';

  @override
  String get contextMenuOpenForumPageUnavailable =>
      'Open Forum Page (unavailable)';

  @override
  String get contextMenuNoVersionCheckerForumId =>
      'Mod has not set up Version Checker, or it does not contain a forum thread id.';

  @override
  String get contextMenuCopyInstallLink => 'Copy install link';

  @override
  String get contextMenuCopyInstallLinkUnavailable =>
      'Copy install link (unavailable)';

  @override
  String get contextMenuNoInstallLinkSource =>
      'This mod has no Version Checker URL or direct download link to build an install link from.';

  @override
  String get contextMenuRedownloadReinstall => 'Redownload & Reinstall';

  @override
  String get contextMenuRedownloadUnavailable => 'Redownload unavailable';

  @override
  String get contextMenuNoDirectDownload =>
      'This mod does not support direct download. Please manually redownload/reinstall.';

  @override
  String get contextMenuViewChangelogUnavailable =>
      'View Changelog (unavailable)';

  @override
  String get contextMenuNoChangelog =>
      'This mod has no changelog. It needs Version Checker with a changelog link.';

  @override
  String contextMenuMuteThisUpdate(String version) {
    return 'Mute this update ($version)';
  }

  @override
  String contextMenuUnmuteThisUpdate(String version) {
    return 'Unmute this update ($version)';
  }

  @override
  String get deepLinkAlreadyInstalled => 'Already installed';

  @override
  String get deepLinkInstallModFromLink => 'Install Mod from Link';

  @override
  String get deepLinkInstallModsFromLink => 'Install Mods from Link';

  @override
  String deepLinkDependencies(num count) {
    return 'Dependencies ($count)';
  }

  @override
  String get deepLinkNoModsSelected => 'No mods selected';

  @override
  String deepLinkDownloadAndInstall(num count) {
    return 'Download & Install ($count)';
  }

  @override
  String deepLinkRequiresVersion(String version) {
    return 'Requires ≥ $version';
  }

  @override
  String get deepLinkVersionFile => 'Version file';

  @override
  String get deepLinkCannotInstallWhileGameRunning =>
      'Cannot install mods while Starsector is running.';

  @override
  String get deepLinkConfigureGameDirectory =>
      'Please configure your Starsector game directory before installing mods via links.';

  @override
  String get deepLinkVersionFileNoDownloadLink =>
      'The mod\'s version file has no download link and cannot be automatically installed.';

  @override
  String get deepLinkInvalidDownloadUrl =>
      'The mod\'s download link isn\'t a valid http/https URL.';

  @override
  String deepLinkVersionFileFetchFailed(String statusCode) {
    return 'Couldn\'t fetch the mod\'s version file (HTTP $statusCode).';
  }

  @override
  String get deepLinkVersionFileReadFailed =>
      'Couldn\'t read the mod\'s version file.';

  @override
  String get dragDropWebLinkDownload => 'Web link download';

  @override
  String get dragDropGameRunningClose =>
      'Game is running. Close to install mods.';

  @override
  String get activityToday => 'Today';

  @override
  String get activityYesterday => 'Yesterday';

  @override
  String get activityClearHistoryWarning =>
      'This permanently clears the installation activity history. This action cannot be undone.';

  @override
  String get activityUnpinOverlay => 'Unpin (overlay)';

  @override
  String get activityPinSidePanel => 'Pin (side panel)';

  @override
  String get activityNoActivityYet => 'No activity yet';

  @override
  String get activityInProgress => 'In Progress';

  @override
  String get activityScanning => 'Scanning...';

  @override
  String activityDownloadedFrom(String source) {
    return 'Downloaded from\n$source';
  }

  @override
  String get activityInstalledFromArchive => 'Installed from archive';

  @override
  String downloadManagerFailedToInstall(String name) {
    return 'Failed to install $name.';
  }

  @override
  String downloadManagerDownloadUrl(String url) {
    return 'Download URL: $url';
  }

  @override
  String get shipsEntityName => 'Ships';

  @override
  String get shipsGroupAllShips => 'All Ships';

  @override
  String get shipsColumnId => 'ID';

  @override
  String get shipsColumnHull => 'Hull';

  @override
  String get shipsColumnWpns => 'Wpns';

  @override
  String get shipsColumnBuiltInWpns => 'Built-in Wpns';

  @override
  String get shipsColumnBuiltInMods => 'Built-in Mods';

  @override
  String get shipsColumnBuiltInWings => 'Built-in Wings';

  @override
  String get shipsColumnTech => 'Tech';

  @override
  String get shipsColumnDesignation => 'Designation';

  @override
  String get shipsColumnSystem => 'System';

  @override
  String get shipsColumnDp => 'DP';

  @override
  String get shipsColumnFleetPts => 'Fleet Pts';

  @override
  String get shipsColumnHitpoints => 'Hitpoints';

  @override
  String get shipsColumnArmor => 'Armor';

  @override
  String get shipsColumnMaxFlux => 'Max Flux';

  @override
  String get shipsColumnFluxDiss => 'Flux Diss';

  @override
  String get shipsColumnOrdnance => 'Ordnance';

  @override
  String get shipsColumnFighterBays => 'Fighter Bays';

  @override
  String get shipsColumnMaxSpeed => 'Max Speed';

  @override
  String get shipsColumnAccel => 'Accel';

  @override
  String get shipsColumnDecel => 'Decel';

  @override
  String get shipsColumnTurnRate => 'Turn Rate';

  @override
  String get shipsColumnTurnAccel => 'Turn Accel';

  @override
  String get shipsColumnMass => 'Mass';

  @override
  String get shipsColumnShield => 'Shield';

  @override
  String get shipsColumnDefenseId => 'Defense ID';

  @override
  String get shipsColumnShieldArc => 'Shield Arc';

  @override
  String get shipsColumnShieldUpkeep => 'Shield Upkeep';

  @override
  String get shipsColumnShieldEff => 'Shield Eff.';

  @override
  String get shipsColumnPhaseCost => 'Phase Cost';

  @override
  String get shipsColumnPhaseUpkeep => 'Phase Upkeep';

  @override
  String get shipsColumnMinCrew => 'Min Crew';

  @override
  String get shipsColumnMaxCrew => 'Max Crew';

  @override
  String get shipsColumnCargo => 'Cargo';

  @override
  String get shipsColumnFuel => 'Fuel';

  @override
  String get shipsColumnFuelLy => 'Fuel/LY';

  @override
  String get shipsColumnRange => 'Range';

  @override
  String get shipsColumnMaxBurn => 'Max Burn';

  @override
  String get shipsColumnSensorProfile => 'Sensor Profile';

  @override
  String get shipsColumnSensorStrength => 'Sensor Strength';

  @override
  String get shipsColumnCreditsBase => 'Credits (base)';

  @override
  String get shipsColumnCrPerDay => 'CR%/Day';

  @override
  String get shipsColumnCrToDeploy => 'CR to Deploy';

  @override
  String get shipsColumnPpt => 'PPT';

  @override
  String get shipsColumnCrLossSec => 'CR Loss/Sec';

  @override
  String get shipsColumnSuppliesMon => 'Supplies/Mon';

  @override
  String get shipsColumnRarity => 'Rarity';

  @override
  String get shipsColumnBreakProb => 'Break Prob';

  @override
  String get shipsColumnMinPieces => 'Min Pieces';

  @override
  String get shipsColumnMaxPieces => 'Max Pieces';

  @override
  String get shipsColumnTravelDrive => 'Travel Drive';

  @override
  String get shipsColumnStyle => 'Style';

  @override
  String get shipsFilterGroupType => 'Type';

  @override
  String get shipsFilterValueSkin => 'Skin';

  @override
  String get shipsFilterValueBaseHull => 'Base Hull';

  @override
  String get shipsFilterHullSize => 'Hull Size';

  @override
  String get shipsFilterWeaponSlotType => 'Weapon Slot Type';

  @override
  String get shipsFilterWeaponSize => 'Weapon Size';

  @override
  String get shipsFilterMountType => 'Mount Type';

  @override
  String get shipsFilterShieldType => 'Shield Type';

  @override
  String get shipsFilterTechManufacturer => 'Tech/Manufacturer';

  @override
  String get shipsFilterDesignation => 'Designation';

  @override
  String get shipsFilterDeploymentPoints => 'Deployment Points';

  @override
  String get shipsFilterOrdnancePoints => 'Ordnance Points';

  @override
  String get shipsFilterFluxDissipation => 'Flux Dissipation';

  @override
  String get shipsFilterFluxCapacity => 'Flux Capacity';

  @override
  String get shipsFilterFuelCapacity => 'Fuel Capacity';

  @override
  String get shipsFilterCargoCapacity => 'Cargo Capacity';

  @override
  String get shipsFilterCrewCapacity => 'Crew Capacity';

  @override
  String get shipsLabelOrdnancePoints => 'Ordnance points';

  @override
  String get shipsLabelCargoCapacity => 'Cargo capacity';

  @override
  String get shipsLabelMaximumCrew => 'Maximum crew';

  @override
  String get shipsLabelFuelCapacity => 'Fuel capacity';

  @override
  String get shipsLabelArmorRating => 'Armor rating';

  @override
  String get shipsLabelSensorProfile => 'Sensor profile';

  @override
  String get shipsLabelSensorStrength => 'Sensor strength';

  @override
  String get shipsSearchHullSize =>
      'Hull size (frigate, destroyer, cruiser, capital_ship)';

  @override
  String get shipsSearchShieldType => 'Shield type (FRONT, OMNI, PHASE, NONE)';

  @override
  String get shipsSearchSystemId => 'Ship system ID';

  @override
  String get shipsSearchDefenseId => 'Defense system ID';

  @override
  String get shipsSearchTechManufacturer => 'Tech/manufacturer';

  @override
  String get shipsSearchDesignation => 'Ship designation';

  @override
  String get shipsSearchStyle => 'Visual style';

  @override
  String get shipsSearchModSubstring => 'Mod name substring match';

  @override
  String get shipsSearchBuiltInHullmod => 'Built-in hullmod, by name or ID';

  @override
  String get shipsSearchHint =>
      'Ship hint; matches any hint in a multi-value set';

  @override
  String get shipsSearchTag =>
      'Ship CSV tag; matches any tag in a multi-value set';

  @override
  String get shipsSearchHitpoints => 'Hull hitpoints';

  @override
  String get shipsSearchArmorRating => 'Armor rating';

  @override
  String get shipsSearchMaxFlux => 'Max flux capacity';

  @override
  String get shipsSearchFluxDissipation => 'Flux dissipation';

  @override
  String get shipsSearchOrdnancePoints => 'Ordnance points';

  @override
  String get shipsSearchMaxSpeed => 'Max speed';

  @override
  String get shipsSearchAcceleration => 'Acceleration';

  @override
  String get shipsSearchDeceleration => 'Deceleration';

  @override
  String get shipsSearchMaxTurnRate => 'Max turn rate';

  @override
  String get shipsSearchTurnAcceleration => 'Turn acceleration';

  @override
  String get shipsSearchFighterBays => 'Fighter bays';

  @override
  String get shipsSearchShieldArc => 'Shield arc';

  @override
  String get shipsSearchShieldEfficiency => 'Shield efficiency';

  @override
  String get shipsSearchShieldUpkeep => 'Shield upkeep';

  @override
  String get shipsSearchPhaseCost => 'Phase cost';

  @override
  String get shipsSearchPhaseUpkeep => 'Phase upkeep';

  @override
  String get shipsSearchMinCrew => 'Minimum crew';

  @override
  String get shipsSearchMaxCrew => 'Maximum crew';

  @override
  String get shipsSearchCargoCapacity => 'Cargo capacity';

  @override
  String get shipsSearchFuelCapacity => 'Fuel capacity';

  @override
  String get shipsSearchFuelPerLy => 'Fuel used per light year';

  @override
  String get shipsSearchRange => 'Range';

  @override
  String get shipsSearchMaxBurn => 'Max burn';

  @override
  String get shipsSearchMass => 'Ship mass';

  @override
  String get shipsSearchDeploymentPoints => 'Deployment points';

  @override
  String get shipsSearchFleetPoints => 'Fleet points';

  @override
  String get shipsSearchBaseValue => 'Base credit value';

  @override
  String get shipsSearchWeaponSlots => 'Weapon slots';

  @override
  String get shipsSearchPeakCr => 'Peak CR seconds';

  @override
  String get shipsSearchCrPerDay => 'CR recovered per day';

  @override
  String get shipsSearchCrToDeploy => 'CR cost to deploy';

  @override
  String get shipsSearchCrLoss => 'CR lost per second past peak';

  @override
  String get shipsSearchSuppliesPerMonth => 'Supplies per month';

  @override
  String get shipsSearchSensorProfile => 'Sensor profile';

  @override
  String get shipsSearchSensorStrength => 'Sensor strength';

  @override
  String get shipsSearchMinPieces => 'Minimum debris pieces';

  @override
  String get shipsSearchMaxPieces => 'Maximum debris pieces';

  @override
  String get shipsSearchBuiltInWeapons => 'Number of built-in weapons';

  @override
  String get shipsSearchBuiltInHullmods => 'Number of built-in hullmods';

  @override
  String get shipsSearchBuiltInWings => 'Number of built-in fighter wings';

  @override
  String shipsSearchSizeSlots(Object size) {
    return '$size slots';
  }

  @override
  String shipsSearchTypeSlots(Object type) {
    return '$type mountable slots';
  }

  @override
  String shipsSearchSizeTypeSlots(Object size, Object type) {
    return '$size $type slots';
  }

  @override
  String get shipsSkinBadgeTooltip =>
      'This ship comes from a .skin file.\nSkins are variations of standard hulls. For example, the Falcon (P) is a skin of the Falcon.';

  @override
  String get shipCodexPhaseCloak => 'Phase cloak';

  @override
  String shipCodexShieldType(Object shieldType) {
    return '$shieldType shield';
  }

  @override
  String get shipCodexLabelSpecial => 'Special';

  @override
  String get shipCodexLabelDefense => 'Defense';

  @override
  String get shipCodexSectionLogistical => 'Logistical data';

  @override
  String get shipCodexCrPerDeployment => 'CR per deployment';

  @override
  String get shipCodexRecoveryPerDay => 'Recovery (/day)';

  @override
  String get shipCodexRecoverySupplies => 'Recovery (supplies)';

  @override
  String get shipCodexDeploymentPoints => 'Deployment points';

  @override
  String get shipCodexPeakPerformance => 'Peak performance (sec)';

  @override
  String get shipCodexHullSize => 'Hull size';

  @override
  String get shipCodexMaintenanceShort => 'Maintenance (sup/mo)';

  @override
  String get shipCodexMaintenanceFull => 'Maintenance (supplies/month)';

  @override
  String get shipCodexSkeletonCrew => 'Skeleton crew';

  @override
  String get shipCodexMaximumBurn => 'Maximum burn';

  @override
  String get shipCodexFuelLyJumpCost => 'Fuel/ly, jump cost';

  @override
  String get shipCodexSectionCombat => 'Combat performance';

  @override
  String get shipCodexHullIntegrity => 'Hull integrity';

  @override
  String get shipCodexShieldArc => 'Shield arc';

  @override
  String get shipCodexShieldUpkeepSec => 'Shield upkeep/sec';

  @override
  String get shipCodexShieldFluxDamage => 'Shield flux/damage';

  @override
  String get shipCodexCloakActivationCost => 'Cloak activation cost';

  @override
  String get shipCodexCloakUpkeepSec => 'Cloak upkeep/sec';

  @override
  String get shipCodexFluxCapacity => 'Flux capacity';

  @override
  String get shipCodexFluxDissipation => 'Flux dissipation';

  @override
  String get shipCodexTopSpeed => 'Top speed';

  @override
  String get shipCodexLabelSystem => 'System:';

  @override
  String get shipCodexLabelMounts => 'Mounts:';

  @override
  String get shipCodexLabelArmaments => 'Armaments:';

  @override
  String get shipCodexLabelHullMods => 'Hull Mods:';

  @override
  String get shipDetailsLabelDefense => 'Defense';

  @override
  String get shipDetailsSectionCombat => 'Combat';

  @override
  String get shipDetailsOrdnancePts => 'Ordnance Pts';

  @override
  String get shipDetailsWeapons => 'Weapons';

  @override
  String get shipDetailsSectionShieldPhase => 'Shield / Phase';

  @override
  String get shipDetailsShieldEfficiency => 'Shield Efficiency';

  @override
  String get shipDetailsSectionMobility => 'Mobility';

  @override
  String get shipDetailsSectionCrewLogistics => 'Crew & Logistics';

  @override
  String get shipDetailsSectionEconomicsCr => 'Economics & CR';

  @override
  String get shipDetailsBaseValue => 'Base Value';

  @override
  String get shipDetailsPptSec => 'PPT (s)';

  @override
  String get shipDetailsSuppliesMo => 'Supplies/Mo';

  @override
  String get shipDetailsSectionMisc => 'Misc';

  @override
  String get shipDetailsCollisionRadius => 'Collision Radius';

  @override
  String get shipDetailsHints => 'Hints';

  @override
  String get shipDetailsTags => 'Tags';

  @override
  String get shipDetailsBuiltInWeapons => 'Built-in Weapons';

  @override
  String get shipBlueprintResetZoom => 'Reset zoom';

  @override
  String get shipBlueprintShowBounds => 'Show bounds';

  @override
  String get shipBlueprintShowModules => 'Show modules';

  @override
  String get shipBlueprintShowMounts => 'Show mounts';

  @override
  String get shipBlueprintShowArcs => 'Show arcs';

  @override
  String get shipBlueprintShowBuiltInWeapons => 'Show built-in weapons';

  @override
  String get shipBlueprintShowDecorativeWeapons => 'Show decorative weapons';

  @override
  String get shipBlueprintShowEngineGlow => 'Show engine glow';

  @override
  String get shipBlueprintShowShields => 'Show shields';

  @override
  String get shipBlueprintBackgroundTransparent => 'Transparent';

  @override
  String get shipBlueprintBackgroundBlack => 'Black';

  @override
  String get shipBlueprintBackgroundDarkGrey => 'Dark grey';

  @override
  String get shipBlueprintBackgroundLightGrey => 'Light grey';

  @override
  String get shipBlueprintBackgroundWhite => 'White';

  @override
  String get shipBlueprintBackgroundDarkBlue => 'Dark blue';

  @override
  String get shipBlueprintBackgroundDarkRed => 'Dark red';

  @override
  String get shipBlueprintBackgroundSpace1 => 'Space 1';

  @override
  String get shipBlueprintBackgroundSpace2 => 'Space 2';

  @override
  String get shipBlueprintBackgroundSpace3 => 'Space 3';

  @override
  String get shipBlueprintBackgroundSpace4 => 'Space 4';

  @override
  String get shipBlueprintBackgroundSpace5 => 'Space 5';

  @override
  String get shipBlueprintBackgroundSpace6 => 'Space 6';

  @override
  String get shipBlueprintBackgroundGalatia => 'Galatia';

  @override
  String get shipBlueprintBackgroundHyperspace => 'Hyperspace';

  @override
  String get shipBlueprintBackgroundHyperspaceCool => 'Hyperspace (cool)';

  @override
  String get weaponsEntityName => 'Weapons';

  @override
  String get weaponsGroupAllWeapons => 'All Weapons';

  @override
  String get weaponsColumnId => 'ID';

  @override
  String get weaponsColumnWeaponType => 'Weapon Type';

  @override
  String get weaponsColumnSize => 'Size';

  @override
  String get weaponsColumnDmgType => 'Dmg Type';

  @override
  String get weaponsColumnTechManufacturer => 'Tech/Manufacturer';

  @override
  String get weaponsColumnSpecClass => 'Spec Class';

  @override
  String get weaponsColumnRole => 'Role';

  @override
  String get weaponsColumnAccuracy => 'Accuracy';

  @override
  String get weaponsColumnTracking => 'Tracking';

  @override
  String get weaponsColumnSpeed => 'Speed';

  @override
  String get weaponsColumnTurnRateText => 'Turn Rate (text)';

  @override
  String get weaponsColumnDmgShot => 'Dmg/Shot';

  @override
  String get weaponsColumnImpact => 'Impact';

  @override
  String get weaponsColumnOp => 'OP';

  @override
  String get weaponsColumnCost => 'Cost';

  @override
  String get weaponsColumnFluxShot => 'Flux/Shot';

  @override
  String get weaponsColumnFluxSec => 'Flux/Sec';

  @override
  String get weaponsColumnRange => 'Range';

  @override
  String get weaponsColumnDmgSec => 'Dmg/Sec';

  @override
  String get weaponsColumnAmmo => 'Ammo';

  @override
  String get weaponsColumnAmmoSec => 'Ammo/Sec';

  @override
  String get weaponsColumnReloadSize => 'Reload Size';

  @override
  String get weaponsColumnEmp => 'EMP';

  @override
  String get weaponsColumnChargeup => 'Chargeup';

  @override
  String get weaponsColumnChargedown => 'Chargedown';

  @override
  String get weaponsColumnBurstSize => 'Burst Size';

  @override
  String get weaponsColumnBurstDelay => 'Burst Delay';

  @override
  String get weaponsColumnMinSpread => 'Min Spread';

  @override
  String get weaponsColumnMaxSpread => 'Max Spread';

  @override
  String get weaponsColumnSpreadShot => 'Spread/Shot';

  @override
  String get weaponsColumnSpreadDecay => 'Spread Decay';

  @override
  String get weaponsColumnAfAccBonus => 'AF Acc Bonus';

  @override
  String get weaponsColumnProjSpeed => 'Proj Speed';

  @override
  String get weaponsColumnBeamSpeed => 'Beam Speed';

  @override
  String get weaponsColumnLaunchSpeed => 'Launch Speed';

  @override
  String get weaponsColumnFlightTime => 'Flight Time';

  @override
  String get weaponsColumnProjHp => 'Proj HP';

  @override
  String get weaponsColumnTurnRate => 'Turn Rate';

  @override
  String get weaponsColumnTier => 'Tier';

  @override
  String get weaponsColumnRarity => 'Rarity';

  @override
  String get weaponsColumnHints => 'Hints';

  @override
  String get weaponsColumnTags => 'Tags';

  @override
  String get weaponsColumnGroupTag => 'Group Tag';

  @override
  String get weaponsFilterHint => 'Hint';

  @override
  String get weaponsFilterDamagePerShot => 'Damage per Shot';

  @override
  String get weaponsFilterDamagePerSecond => 'Damage per Second';

  @override
  String get weaponsFilterFluxPerSecond => 'Flux per Second';

  @override
  String get weaponsSearchTrackingQuality =>
      'Tracking quality (excellent, good, poor, none)';

  @override
  String get weaponsSearchAmmoCount =>
      'Ammo count (none = unlimited); supports numeric operators';

  @override
  String get weaponsSearchWeaponType =>
      'Weapon type (missile, energy, ballistic, hybrid)';

  @override
  String get weaponsSearchMountSize => 'Mount size (small, medium, large)';

  @override
  String get weaponsSearchDamageType =>
      'Damage type (kinetic, he, energy, fragmentation)';

  @override
  String get weaponsSearchWeaponRange => 'Weapon range';

  @override
  String get weaponsSearchOpCost => 'Ordnance points cost';

  @override
  String get weaponsSearchDps => 'Damage per second';

  @override
  String get weaponsSearchHintTag =>
      'Weapon hint tag; matches any hint in a multi-value set';

  @override
  String get weaponsSearchTag =>
      'Weapon CSV tag; matches any tag in a multi-value set';

  @override
  String get weaponsSearchDamagePerShot => 'Damage per shot';

  @override
  String get weaponsSearchEmpDamage => 'EMP damage';

  @override
  String get weaponsSearchFluxPerShot => 'Flux per shot';

  @override
  String get weaponsSearchFluxPerSecond => 'Flux per second';

  @override
  String get weaponsSearchChargeUp => 'Charge-up time in seconds';

  @override
  String get weaponsSearchChargeDown => 'Charge-down time in seconds';

  @override
  String get weaponsSearchBurstSize => 'Burst size (number of shots)';

  @override
  String get weaponsSearchBurstDelay => 'Delay between burst shots';

  @override
  String get weaponsSearchBarrelsTogether =>
      'Barrels fired together per shot (LINKED and DUAL barrel modes)';

  @override
  String get weaponsSearchTurnRate => 'Projectile/beam turn rate';

  @override
  String get weaponsSearchProjectileSpeed => 'Projectile speed';

  @override
  String get weaponsSearchBeamSpeed => 'Beam speed';

  @override
  String get weaponsSearchLaunchSpeed => 'Missile launch speed';

  @override
  String get weaponsSearchFlightTime => 'Projectile flight time';

  @override
  String get weaponsSearchProjectileHitpoints => 'Projectile hitpoints';

  @override
  String get weaponsSearchAmmoRegen => 'Ammo regeneration per second';

  @override
  String get weaponsSearchReloadSize => 'Reload size';

  @override
  String get weaponsSearchImpact => 'Impact/force value';

  @override
  String get weaponsSearchAutofireBonus => 'Autofire accuracy bonus';

  @override
  String get weaponsSearchMaxSpread => 'Maximum spread';

  @override
  String get weaponsSearchMinSpread => 'Minimum spread';

  @override
  String get weaponsSearchSpreadPerShot => 'Spread added per shot';

  @override
  String get weaponsSearchEffectiveDps =>
      'Damage per second, allowing for charge-up and bursts';

  @override
  String get weaponsSearchSustainedDps =>
      'Damage per second once ammo regeneration is the limit';

  @override
  String get weaponsSearchBurstDamage =>
      'Damage dealt by one burst (burst beams only)';

  @override
  String get weaponsSearchRefireDelay => 'Seconds between shots or bursts';

  @override
  String get weaponsSearchFluxPerDamage =>
      'Flux spent per point of damage; lower is more efficient';

  @override
  String get weaponsSearchFluxPerSecFiring =>
      'Flux spent per second while firing';

  @override
  String get weaponsSearchSustainedFlux =>
      'Flux spent per second at the sustained rate of fire';

  @override
  String get weaponsSearchEmpPerActivation => 'EMP damage per activation';

  @override
  String get weaponsSearchSpecClass =>
      'Weapon spec class (beam, projectile, missile, etc.)';

  @override
  String get weaponsSearchMountType =>
      'Effective mount type (TURRET, HARDPOINT, HIDDEN)';

  @override
  String get weaponsSearchPrimaryRole => 'Primary role description';

  @override
  String get weaponsSearchGroupTag => 'Weapon group tag';

  @override
  String get weaponsSearchTier => 'Weapon tier';

  @override
  String get weaponsSearchRarityValue => 'Rarity value';

  @override
  String get weaponCodexSectionPrimary => 'Primary data';

  @override
  String get weaponCodexPrimaryRole => 'Primary role';

  @override
  String get weaponCodexMountType => 'Mount type';

  @override
  String weaponCodexCountsAs(Object type) {
    return 'Counts as $type for stat modifiers';
  }

  @override
  String get weaponCodexDamage => 'Damage';

  @override
  String get weaponCodexDps => 'Damage / second';

  @override
  String get weaponCodexDpsSustained => 'Damage / second (sustained)';

  @override
  String get weaponCodexEmpDamage => 'EMP damage';

  @override
  String get weaponCodexEmpDps => 'EMP DPS';

  @override
  String get weaponCodexFluxSec => 'Flux / second';

  @override
  String get weaponCodexFluxSecSustained => 'Flux / second (sustained)';

  @override
  String get weaponCodexFluxShot => 'Flux / shot';

  @override
  String get weaponCodexFluxPerDamage => 'Flux / damage';

  @override
  String get weaponCodexFluxPerNonEmpDamage => 'Flux / non-EMP damage';

  @override
  String weaponCodexLimitedCharges(Object count) {
    return 'Limited charges ($count)';
  }

  @override
  String weaponCodexLimitedAmmo(Object count) {
    return 'Limited ammo ($count)';
  }

  @override
  String weaponCodexNoFluxLimitedCharges(Object count) {
    return 'No flux cost to fire, limited charges ($count)';
  }

  @override
  String weaponCodexNoFluxLimitedAmmo(Object count) {
    return 'No flux cost to fire, limited ammo ($count)';
  }

  @override
  String get weaponCodexNoFluxCost => 'No flux cost to fire';

  @override
  String get weaponCodexSectionAncillary => 'Ancillary data';

  @override
  String get weaponCodexDamageType => 'Damage type';

  @override
  String get weaponCodexHitpoints => 'Hitpoints';

  @override
  String get weaponCodexTurnRate => 'Turn rate';

  @override
  String get weaponCodexMaxCharges => 'Max charges';

  @override
  String get weaponCodexMaxAmmo => 'Max ammo';

  @override
  String get weaponCodexSecondsRecharge => 'Seconds / recharge';

  @override
  String get weaponCodexSecondsReload => 'Seconds / reload';

  @override
  String get weaponCodexChargesGained => 'Charges gained';

  @override
  String get weaponCodexReloadSize => 'Reload size';

  @override
  String get weaponCodexBurstSize => 'Burst size';

  @override
  String get weaponCodexRefireDelay => 'Refire delay (seconds)';

  @override
  String get weaponCodexDamageKinetic => 'Kinetic';

  @override
  String get weaponCodexDamageHighExplosive => 'High Explosive';

  @override
  String get weaponCodexDamageFragmentation => 'Fragmentation';

  @override
  String get weaponCodexDamageEnergy => 'Energy';

  @override
  String get weaponCodexDamageOther => 'Other';

  @override
  String weaponCodexDamageTypeBeam(Object name) {
    return '$name (Beam)';
  }

  @override
  String get weaponCodexDescKinetic => '200% vs shields, 50% vs armor';

  @override
  String get weaponCodexDescHighExplosive => '200% vs armor, 50% vs shields';

  @override
  String get weaponCodexDescFragmentation =>
      '25% vs shields and armor, 100% vs hull';

  @override
  String get weaponCodexDescEnergy => '100% vs shields, armor, and hull';

  @override
  String weaponCodexNoHardFlux(Object desc) {
    return '$desc (no hard flux)';
  }

  @override
  String get weaponCodexRequiresBallisticEnergyHybrid =>
      'Requires a Ballistic, Energy, or Hybrid slot';

  @override
  String get weaponCodexRequiresEnergyMissileSynergy =>
      'Requires an Energy, Missile, or Synergy slot';

  @override
  String get weaponCodexRequiresBallisticMissileComposite =>
      'Requires a Ballistic, Missile, or Composite slot';

  @override
  String get weaponCodexUniversalSlot => 'Can be installed in any type of slot';

  @override
  String get weaponCodexQualityPerfect => 'Perfect';

  @override
  String get weaponCodexQualityExcellent => 'Excellent';

  @override
  String get weaponCodexQualityGood => 'Good';

  @override
  String get weaponCodexQualityMedium => 'Medium';

  @override
  String get weaponCodexQualityPoor => 'Poor';

  @override
  String get weaponCodexQualityVeryPoor => 'Very Poor';

  @override
  String get weaponCodexQualityTerrible => 'Terrible';

  @override
  String get weaponCodexCantTurn => 'Can\'t turn';

  @override
  String get weaponCodexQualityVerySlow => 'Very Slow';

  @override
  String get weaponCodexQualitySlow => 'Slow';

  @override
  String get weaponCodexQualityFast => 'Fast';

  @override
  String get weaponCodexQualityVeryFast => 'Very Fast';

  @override
  String get weaponDetailsLabelType => 'Type';

  @override
  String get weaponDetailsRawType => 'Raw Type';

  @override
  String get weaponDetailsSectionCombat => 'Combat';

  @override
  String get weaponDetailsSectionFireMechanics => 'Fire Mechanics';

  @override
  String get weaponDetailsSectionAccuracySpread => 'Accuracy & Spread';

  @override
  String get weaponDetailsSectionProjectile => 'Projectile';

  @override
  String get weaponDetailsSectionMisc => 'Misc';

  @override
  String get weaponDetailsEnergyShot => 'Energy/Shot';

  @override
  String get weaponDetailsEnergySec => 'Energy/Sec';

  @override
  String get weaponDetailsSpreadDecaySec => 'Spread Decay/Sec';

  @override
  String get weaponDetailsExtraArcAi => 'Extra Arc (AI)';

  @override
  String get weaponDetailsNoDpsInTooltip => 'No DPS In Tooltip';

  @override
  String get weaponDetailsYes => 'Yes';

  @override
  String get weaponDetailsHints => 'Hints';

  @override
  String get weaponDetailsTags => 'Tags';

  @override
  String get weaponDetailsForWeaponTooltip => 'For Weapon Tooltip';

  @override
  String get weaponDetailsPrimaryRole => 'Primary Role';

  @override
  String get weaponDetailsTurnRateTxt => 'Turn Rate (txt)';

  @override
  String get vramNoImages => 'No images.';

  @override
  String get vramTopImagesTitle => 'Images Estimated to Use the Most VRAM';

  @override
  String get vramTopImagesNote =>
      'Note: Image dimensions in VRAM are usually bigger than actual.';

  @override
  String vramScanFileProgress(Object percent, Object scanned, Object total) {
    return '$scanned / $total ($percent)';
  }

  @override
  String vramDurationMinSec(Object minutes, Object seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String vramDurationSec(Object seconds) {
    return '${seconds}s';
  }

  @override
  String get vramSelectorScanAllDeprecated => 'Scan All (deprecated)';

  @override
  String get vramSelectorFolderScanDesc =>
      'Counts every image in mod folders, even unused ones. Overestimates VRAM use.';

  @override
  String get vramSelectorReferencedDesc =>
      'Searches the mod\'s text files and code for image paths. More accurate than folder scan, but takes longer.';

  @override
  String get vramRefShips => 'Ship hulls (.ship + ship_data.csv)';

  @override
  String get vramRefShipsDesc =>
      'Sprite paths referenced by .ship JSON files and ship_data.csv.';

  @override
  String get vramRefWeapons => 'Weapons (.wpn + .proj + weapon_data.csv)';

  @override
  String get vramRefWeaponsDesc =>
      'Sprite paths referenced by weapon JSON files, projectile JSON files, and weapon_data.csv.';

  @override
  String get vramRefFactions => 'Factions (.faction)';

  @override
  String get vramRefFactionsDesc =>
      'Logo, crest, and portrait paths referenced by .faction JSON files.';

  @override
  String get vramRefPortraits => 'Portraits (portraits.csv)';

  @override
  String get vramRefPortraitsDesc =>
      'Portrait paths listed in data/characters/portraits/portraits.csv.';

  @override
  String get vramRefSettingsGraphics => 'settings.json graphics block';

  @override
  String get vramRefSettingsGraphicsDesc =>
      'Paths declared in data/config/settings.json under the graphics block.';

  @override
  String get vramRefDataConfigJson => 'data/config JSON files';

  @override
  String get vramRefDataConfigJsonDesc =>
      'Image paths found in JSON files under data/config/ (beyond settings.json).';

  @override
  String get vramRefDataCsv => 'data/ CSV files';

  @override
  String get vramRefDataCsvDesc =>
      'Image paths found in any CSV under data/ beyond the hull, weapon, and portrait tables (e.g. mod-defined campaign / world tables).';

  @override
  String get vramRefGraphicsLibMaps => 'GraphicsLib maps (CSV + cache folder)';

  @override
  String get vramRefGraphicsLibMapsDesc =>
      'Map paths declared in the mod\'s GraphicsLib CSV, plus GraphicsLib mod\'s own cache/ folder. Kept independently of base-sprite references.';

  @override
  String get vramRefJarStrings => 'JAR string literals';

  @override
  String get vramRefJarStringsDesc =>
      'Path-like string literals in compiled classes of every .jar in the mod.';

  @override
  String get vramRefJavaSources => 'Loose .java sources';

  @override
  String get vramRefJavaSourcesDesc =>
      'Path-like string literals in any .java source file in the mod.';

  @override
  String get vramRefFrameAnimations => 'Frame animations';

  @override
  String get vramRefFrameAnimationsDesc =>
      'Finds auto-loaded frame siblings of referenced sprites. When a weapon/effect references e.g. foo_00.png, Starsector\'s engine also loads foo_01.png, foo_02.png, ... from the same folder.';

  @override
  String get vramRefPhaseGlows => 'Phase glows';

  @override
  String get vramRefPhaseGlowsDesc =>
      'Finds ship phase-glow siblings (e.g. foo_glow.png, foo_glow1.png) of referenced sprites. Starsector auto-loads these from the same folder when the base ship sprite is referenced.';

  @override
  String get commonYes => 'Yes';

  @override
  String get commonId => 'ID';

  @override
  String get commonTags => 'Tags';

  @override
  String get commonTier => 'Tier';

  @override
  String get commonTechManufacturer => 'Tech/manufacturer';

  @override
  String commonLabelCount(Object count, Object label) {
    return '$label ($count)';
  }

  @override
  String commonLabelValue(Object label, Object value) {
    return '$label: $value';
  }

  @override
  String get shipSizeFrigate => 'Frigate';

  @override
  String get shipSizeDestroyer => 'Destroyer';

  @override
  String get shipSizeCruiser => 'Cruiser';

  @override
  String get shipSizeCapital => 'Capital';

  @override
  String get shipSizeFighter => 'Fighter';

  @override
  String get factionViewerVanillaPercent => 'Vanilla %';

  @override
  String get factionViewerAddedBy => 'Added by';

  @override
  String get factionViewerAllFactions => 'All Factions';

  @override
  String factionViewerModifiedBy(Object names) {
    return 'Modified by: $names';
  }

  @override
  String get factionViewerSource => 'Source';

  @override
  String get factionViewerVisibility => 'Visibility';

  @override
  String get factionViewerSearchFactionId => 'Faction ID';

  @override
  String get factionViewerSearchFactionDisplayName => 'Faction display name';

  @override
  String get factionViewerSearchSourceModOrVanilla => 'Source mod or vanilla';

  @override
  String get factionViewerSearchKnownShips => 'Number of known ships';

  @override
  String get factionViewerSearchKnownWeapons => 'Number of known weapons';

  @override
  String get factionViewerSearchKnownFighters => 'Number of known fighters';

  @override
  String get factionViewerSearchHiddenFromIntel =>
      'Whether faction is hidden from intel tab (true/false)';

  @override
  String get factionViewerSearchDoctrineAggressionLevel =>
      'Doctrine aggression level';

  @override
  String get factionViewerSearchDoctrineWarshipWeight =>
      'Doctrine warship weight';

  @override
  String get factionViewerSearchDoctrineCarrierWeight =>
      'Doctrine carrier weight';

  @override
  String get factionViewerSearchDoctrinePhaseShipWeight =>
      'Doctrine phase ship weight';

  @override
  String get factionViewerSearchDoctrineFleetSize =>
      'Doctrine fleet size (number of ships)';

  @override
  String get factionViewerSearchDoctrineShipSizePreference =>
      'Doctrine ship size preference';

  @override
  String get factionViewerSearchDoctrineOfficerQuality =>
      'Doctrine officer quality';

  @override
  String get factionViewerSearchDoctrineShipQuality => 'Doctrine ship quality';

  @override
  String factionProfileDialogFileSourceSuffix(Object modName) {
    return ' ($modName)';
  }

  @override
  String get finderPresetColonyHunter => 'Colony Hunter';

  @override
  String get finderPresetResourceBaron => 'Resource Baron';

  @override
  String get finderPresetCryosleeperNearby => 'Cryosleeper Nearby';

  @override
  String get finderPresetSelfSufficient => 'Self-Sufficient';

  @override
  String finderNearbyRangeLyLabel(Object ly) {
    return '$ly LY';
  }

  @override
  String get finderBottleneckHabitable => 'Habitable';

  @override
  String get finderBottleneckGasGiant => 'Gas giant';

  @override
  String get finderBottleneckUnclaimedOnly => 'Unclaimed only';

  @override
  String get finderBottleneckStableLocations => 'Stable locations';

  @override
  String get finderBottleneckDistanceFromCore => 'Distance from core';

  @override
  String finderBottleneckResourceFloor(Object resource) {
    return '$resource floor';
  }

  @override
  String finderBottleneckNearLandmark(Object landmark) {
    return 'Near $landmark';
  }

  @override
  String get sectorMapUninhabited => 'Uninhabited';

  @override
  String sectorMapSizeLabel(Object size) {
    return 'size $size';
  }

  @override
  String get portraitsViewerReplacerTooltip =>
      'Portrait Viewer: View and search portraits from your mods.\nPortrait Replacer: Drag and drop portraits from the right pane to replace portraits on the left pane.';

  @override
  String get portraitsViewer => 'Viewer';

  @override
  String get portraitsReplacer => 'Replacer';

  @override
  String get portraitsViewerInfoTooltip =>
      'Displays images that are *likely* to be portraits from the highest version of each mod.\n\nBecause mods may use any image as a portrait and load images dynamically in code, this is not an exact science, but best guesses.\nPortraits must be:\n- Square\n- Between 128x128 and 256x256\n- An image file';

  @override
  String get portraitsTutorial => 'Tutorial';

  @override
  String get portraitsHowToUse => 'How To Use';

  @override
  String portraitsHowToUseBody(Object pool) {
    return 'On the left side are the portraits that you will see in-game.\nOn the right side is the $pool - your options for replacing images on the left.\n\nGrab portraits from the right side and move them to the left side to replace what you see in-game.';
  }

  @override
  String get portraitsPortraitPool => 'Portrait Pool';

  @override
  String portraitsUnderTheHoodBody(Object appName) {
    return 'A list of portraits to replace is saved as a json file (in the $appName data folder, which is synced one-way to the Companion Mod).\nThe $appName Companion Mod reads that file when you load your game, then swaps the portraits for that game session only.\nIt does not change any mod files - replacement is all done in-memory, in-game.';
  }

  @override
  String portraitsImagesCount(Object total) {
    return '$total images';
  }

  @override
  String portraitsImagesCountWithShown(num total, num visible) {
    return '$total images ($visible shown)';
  }

  @override
  String portraitsCompanionModNotFound(Object appName) {
    return '$appName Companion mod not found!\nPortrait Replacement will not work.\n\nClick to install it.';
  }

  @override
  String portraitsCompanionModNotEnabled(Object appName) {
    return '$appName Companion mod is not enabled. Portrait replacements will not work.\n\nClick to enable it.';
  }

  @override
  String portraitsCompanionModInstallFirst(Object appName) {
    return '$appName Companion Mod not found. Please install it first from Settings.';
  }

  @override
  String get portraitsImportCustomImages =>
      'Import custom images to use as portrait replacements';

  @override
  String portraitsErrorLoading(Object error) {
    return 'Error loading portraits: $error';
  }

  @override
  String portraitsReplacementAdded(Object original, Object replacement) {
    return 'Replacement added: $original -> $replacement';
  }

  @override
  String portraitsOriginalFile(Object file) {
    return 'Original: $file';
  }

  @override
  String get portraitsOriginalFileNotFound => 'Original file not found';

  @override
  String portraitsReplacementFile(Object file) {
    return 'Replacement: $file';
  }

  @override
  String get portraitsReplacementFileNotFound => 'Replacement file not found';

  @override
  String portraitsReplacementModLabel(Object mod) {
    return 'Replacement Mod: $mod';
  }

  @override
  String get portraitsOpenOriginalImage => 'Open original image';

  @override
  String get portraitsOpenReplacementImage => 'Open replacement image';

  @override
  String get portraitsOpenFolder => 'Open folder';

  @override
  String get portraitsRemoveReplacement => 'Remove replacement';

  @override
  String portraitsFactionsLabel(Object factions) {
    return 'Factions: $factions';
  }

  @override
  String portraitsDimensionsLabel(Object height, Object width) {
    return 'Dimensions: $width x $height';
  }

  @override
  String portraitsModLabel(Object mod) {
    return 'Mod: $mod';
  }

  @override
  String get portraitsFilterConfirmedTooltip =>
      'Only show images that are confirmed portraits.\n\nPortraits defined in .faction files have genders.\nPortraits from settings.json files do not.';

  @override
  String get portraitsFilterReplacedTooltip =>
      'Only show images that have replacements.';

  @override
  String get portraitsFilterEnabledModsTooltip =>
      'Only show images from enabled mods.';

  @override
  String get portraitsFilterGender => 'Gender';

  @override
  String get portraitsFilePathNotAvailable => 'File path not available';

  @override
  String portraitsFailedToCopy(Object error) {
    return 'Failed to copy: $error';
  }

  @override
  String portraitsFailedToReadImage(Object error) {
    return 'Failed to read image: $error';
  }

  @override
  String portraitsImageMustBeSquare(Object size) {
    return 'Image must be square ($size is not square)';
  }

  @override
  String portraitsImageSizeRange(Object max, Object min, Object size) {
    return 'Image must be between ${min}x$min and ${max}x$max (got $size)';
  }

  @override
  String portraitsImportSummary(Object failed, Object imported) {
    return '$imported imported successfully, $failed failed';
  }

  @override
  String portraitsValidPortraitSingular(Object count) {
    return '$count valid portrait';
  }

  @override
  String portraitsValidPortraitsCount(Object count) {
    return '$count valid portraits';
  }

  @override
  String portraitsFailedValidationSuffix(Object count) {
    return ', $count failed validation';
  }

  @override
  String get portraitsSelectGenderHint =>
      'Select male or female for each portrait.\nPortraits in .faction files only support male and female.';

  @override
  String get portraitsAllMale => 'All Male';

  @override
  String get portraitsAllFemale => 'All Female';

  @override
  String get hullmodsTechManufacturer => 'Tech/Manufacturer';

  @override
  String get hullmodsUiTags => 'UI Tags';

  @override
  String get hullmodsShortDesc => 'Short Desc.';

  @override
  String get hullmodsOpFrigate => 'OP (Frig)';

  @override
  String get hullmodsOpDestroyer => 'OP (Dest)';

  @override
  String get hullmodsOpCruiser => 'OP (Cru)';

  @override
  String get hullmodsOpCapital => 'OP (Cap)';

  @override
  String get hullmodsAllHullmods => 'All Hullmods';

  @override
  String get hullmodsSearchTier => 'Hullmod tier (1, 2, 3)';

  @override
  String get hullmodsSearchModNameSubstring => 'Mod name substring match';

  @override
  String get hullmodsSearchCsvTagMatchesAny => 'CSV tag; matches any tag';

  @override
  String get hullmodsSearchUiTagMatchesAny => 'UI tag; matches any UI tag';

  @override
  String get hullmodsSearchRarityValue => 'Rarity value';

  @override
  String get hullmodsSearchBaseCreditValue => 'Base credit value';

  @override
  String get hullmodsSearchOpCostFrigates =>
      'Ordnance points cost for frigates';

  @override
  String get hullmodsSearchOpCostDestroyers =>
      'Ordnance points cost for destroyers';

  @override
  String get hullmodsSearchOpCostCruisers =>
      'Ordnance points cost for cruisers';

  @override
  String get hullmodsSearchOpCostCapitalShips =>
      'Ordnance points cost for capital ships';

  @override
  String get hullmodCodexCardData => 'Hullmod data';

  @override
  String get hullmodCodexCardOpCost => 'OP cost';

  @override
  String get hullmodCodexCardOpCostFrigate => 'OP cost (Frigate)';

  @override
  String get hullmodCodexCardOpCostDestroyer => 'OP cost (Destroyer)';

  @override
  String get hullmodCodexCardOpCostCruiser => 'OP cost (Cruiser)';

  @override
  String get hullmodCodexCardOpCostCapital => 'OP cost (Capital)';

  @override
  String hullmodCodexCardTags(Object tags) {
    return 'Tags: $tags';
  }

  @override
  String get hullmodCodexCardSModBonus => 'S-Mod bonus';

  @override
  String get codexFacetType => 'Type';

  @override
  String get codexFacetMountType => 'Mount type';

  @override
  String get codexFacetDamageType => 'Damage type';

  @override
  String get codexFacetTypeSpecial => 'Special';

  @override
  String get codexShipTypeCarrier => 'Carrier';

  @override
  String get codexShipTypeCivilian => 'Civilian';

  @override
  String get codexShipTypePhase => 'Phase';

  @override
  String get codexShipTypeWarship => 'Warship';

  @override
  String get codexLabelStations => 'Stations';

  @override
  String get codexLabelShipSystems => 'Ship Systems';

  @override
  String get codexLabelFighters => 'Fighters';

  @override
  String get codexGroupingOther => 'Other';

  @override
  String codexWeaponSubtitle(Object size, Object type) {
    return '$size $type weapon';
  }

  @override
  String get shipSystemCodexCardSystemData => 'System data';

  @override
  String get shipSystemCodexCardFluxPerUse => 'Flux per use';

  @override
  String get shipSystemCodexCardFluxPerSecond => 'Flux per second';

  @override
  String get shipSystemCodexCardMaxUses => 'Max uses';

  @override
  String get shipSystemCodexCardRegen => 'Regen';

  @override
  String get shipSystemCodexCardCooldown => 'Cooldown';

  @override
  String get shipSystemCodexCardToggle => 'Toggle';

  @override
  String get shipSystemCodexCardPhaseCloak => 'Phase cloak';

  @override
  String get app_action_buttonsReportABug => 'Report a bug';
}
