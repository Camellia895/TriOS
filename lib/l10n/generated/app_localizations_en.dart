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
}
