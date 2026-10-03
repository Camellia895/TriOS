// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String aboutTagline(Object appName) {
    return '$appName 是一个模组管理器、启动器和工具箱。\n使用 Dart/Flutter 编写。';
  }

  @override
  String get aboutForumThread => '论坛帖子';

  @override
  String get aboutSourceCode => '源代码';

  @override
  String get aboutPrivacyPolicy => '隐私政策';

  @override
  String aboutPrivacySentry(Object appName) {
    return '• 如果你选择允许，设备信息（如操作系统和屏幕分辨率）、模组列表以及 $appName 的错误信息将被收集并上传到由 Sentry.io 管理的服务器。这些信息与随机生成的 id 关联，用于修复漏洞。收集数据示例：https://i.imgur.com/k9E6zxO.png。';
  }

  @override
  String aboutPrivacyNoAllow(Object appName) {
    return '• 如果不允许，$appName 仅在版本检查器更新、模组更新、下载模组目录文件等明显需要联网的场景使用网络。';
  }

  @override
  String get aboutPrivacyNoPersonal =>
      '• 任何时候都不会收集个人信息。我不知道你是谁、你在哪里、你的用户名是什么等等。';

  @override
  String get aboutAiDisclosure => 'AI 使用披露';

  @override
  String aboutAiCatalog(Object appName) {
    return '• AI 用于辅助生成模组目录（$appName 下载并显示的文本文件），方式是发送论坛页面的 HTML 内容。这用于一些没有 AI 很难完成的处理，例如：';
  }

  @override
  String get aboutAiDetectMods => '识别并提取同一论坛页面上的多个模组。';

  @override
  String get aboutAiChangelogs => '论坛页面上的更新日志。';

  @override
  String get aboutAiDetectLinks => '识别并归类更多种类的下载链接。论坛页面上不存在的链接会被忽略（防止幻觉）。';

  @override
  String get aboutAiSummaries => '生成模组摘要。';

  @override
  String aboutAiWritesApp(Object appName) {
    return '• AI 用于辅助编写 $appName。';
  }

  @override
  String get aboutAiModContent => '• 除编写代码时自动发送的内容外，不会向 AI 发送模组内容。';

  @override
  String aboutAiNoService(Object appName) {
    return '• $appName 本身不使用也不联系任何 AI 服务。';
  }

  @override
  String get catalogAlwaysLoad => '始终加载';

  @override
  String get catalogAlsoInThisThread => '同帖中的其他模组';

  @override
  String get catalogAlsoNeeds => '还需要：';

  @override
  String get catalogBack => '后退';

  @override
  String get catalogBrowser => '浏览器';

  @override
  String get catalogCancel => '取消';

  @override
  String get catalogClearCache => '清除缓存';

  @override
  String get catalogClose => '关闭';

  @override
  String get catalogCopyBestDownloadHint => '将最佳下载链接复制到剪贴板';

  @override
  String get catalogCopyDiscordLink => '复制 Discord 链接';

  @override
  String get catalogCopyDownloadLink => '复制下载链接';

  @override
  String get catalogCopyUrl => '复制 URL';

  @override
  String get catalogDataSources => '数据源…';

  @override
  String get catalogDataSourcesTitle => '模组目录数据源';

  @override
  String get catalogDebugInfo => '调试信息';

  @override
  String get catalogDirectDownload => '直接下载';

  @override
  String get catalogDisable => '停用';

  @override
  String get catalogDiscordLinkCopied => 'Discord 链接已复制到剪贴板';

  @override
  String get catalogDonationLinks => '捐赠链接';

  @override
  String get catalogDownload => '下载';

  @override
  String catalogDownloadConfirmPrompt(String modName) {
    return '是否下载“$modName”？';
  }

  @override
  String get catalogDownloadLinkCopied => '下载链接已复制到剪贴板';

  @override
  String get catalogDownloads => '下载';

  @override
  String get catalogEdited => '•  编辑于';

  @override
  String get catalogEnable => '启用';

  @override
  String get catalogForward => '前进';

  @override
  String get catalogForumIndexSubforumsAndDiscord => '论坛索引、子版块和 Discord';

  @override
  String get catalogFullChangelog => '完整更新日志';

  @override
  String get catalogGameVersion => '游戏版本';

  @override
  String get catalogGridItemMinSize => '网格项最小尺寸';

  @override
  String get catalogHasUpdate => '有更新';

  @override
  String catalogInCategory(String category) {
    return '分类：$category';
  }

  @override
  String get catalogIndex => '索引';

  @override
  String get catalogInstalled => '已安装';

  @override
  String get catalogInstalledMod => '已安装模组';

  @override
  String get catalogLicense => '许可证';

  @override
  String get catalogLinks => '链接';

  @override
  String get catalogLoadOnce => '加载一次';

  @override
  String catalogMutedUpdates(num count) {
    return '$count 条已静音的更新';
  }

  @override
  String catalogMutedUpdatesBadge(num count) {
    return '+ $count';
  }

  @override
  String get catalogOk => '确定';

  @override
  String get catalogOpen => '打开';

  @override
  String get catalogOpenCacheFolder => '打开缓存文件夹';

  @override
  String get catalogOpenCacheFolderTooltip => '在文件资源管理器中打开缓存文件夹';

  @override
  String get catalogOpenFile => '打开文件';

  @override
  String get catalogOpenForumPage => '打开论坛页面';

  @override
  String get catalogOpenInBrowser => '在浏览器中打开';

  @override
  String get catalogOpenInBuiltInBrowser => '在内置浏览器中打开';

  @override
  String get catalogOpenInDiscord => '在 Discord 中打开';

  @override
  String get catalogOpenInWebBrowser => '在网页浏览器中打开';

  @override
  String get catalogOpenNexusModsPage => '打开 NexusMods 页面';

  @override
  String get catalogOtherDownloadOptions => '其他下载选项';

  @override
  String get catalogPosted => '发布于';

  @override
  String catalogPreparingToInstall(String modName) {
    return '正在准备安装 $modName…';
  }

  @override
  String get catalogQbsForumBundle => 'QB 的论坛合集';

  @override
  String get catalogReadFullLicense => '阅读完整许可证';

  @override
  String get catalogReadLicense => '阅读许可证';

  @override
  String get catalogRecentUpdates => '最近更新';

  @override
  String catalogRecentUpdatesCount(num count) {
    return '最近更新（$count）';
  }

  @override
  String get catalogRecheck => '重新检查';

  @override
  String get catalogRefreshNow => '立即刷新';

  @override
  String get catalogReload => '重新加载';

  @override
  String catalogRestart(String appName) {
    return '然后重启 $appName。';
  }

  @override
  String get catalogSaveCompatibility => '存档兼容性';

  @override
  String catalogSliderValueWithUnit(num value, String unit) {
    return '$value $unit';
  }

  @override
  String get catalogSourceCode => '源代码';

  @override
  String catalogSourceCodeHost(String hostName) {
    return '$hostName';
  }

  @override
  String get catalogSpaceBetweenCards => '卡片间距';

  @override
  String get catalogSummary => '摘要';

  @override
  String get catalogViewModDetails => '查看模组详情...';

  @override
  String get catalogWebsite => '网站';

  @override
  String get catalogWispsModRepo => 'Wisp 的模组仓库';

  @override
  String chatbotAppVersion(String appName, String version) {
    return '$appName v$version';
  }

  @override
  String get chatbotAllEnabledModsAppearCompatible => '所有已启用的模组看起来都兼容！';

  @override
  String get chatbotAllInstalledModsAreCurrentlyEnabled => '所有已安装的模组当前均已启用。';

  @override
  String get chatbotAllModsAreUpToDate => '所有模组都是最新的！';

  @override
  String chatbotChangelogFor(String name, String text) {
    return '$name 的更新日志：\n$text';
  }

  @override
  String get chatbotCouldNotDetermineCurrentRam =>
      '无法确定当前的 RAM 分配。请确保已在设置中配置游戏目录。';

  @override
  String chatbotCurrentRamAllocation(String ram, String ramGb) {
    return '当前 RAM 分配：$ram MB$ramGb\n\n如需修改，请前往仪表盘页面调整 RAM 滑块，或输入 \"more ram\" 获取建议。';
  }

  @override
  String get chatbotSuggestionHelpMeWithMods => '帮我处理模组';

  @override
  String get chatbotModMetadataNotAvailableYet => '模组元数据尚未就绪。';

  @override
  String get chatbotNoRamInformationAvailable => '暂无 RAM 信息。请确保已在设置中配置游戏目录。';

  @override
  String get chatbotNoVramDataAvailable =>
      '暂无 VRAM 数据。\n请在侧边栏打开 VRAM 估算器页面进行扫描。';

  @override
  String get chatbotNoChangelogsLoadedYet => '尚未加载更新日志。更新日志会在检查模组更新时获取。';

  @override
  String get chatbotNoConflictsFound => '已启用的模组中没有发现冲突。';

  @override
  String get chatbotNoErrorsFoundInLog => '日志中没有发现错误。一切正常！';

  @override
  String get chatbotNoModCategoriesDefinedYet =>
      '尚未定义模组分类。\n你可以在模组管理器中右键点击模组来创建分类。';

  @override
  String get chatbotNoModChangeHistory => '暂无模组变更历史记录。';

  @override
  String get chatbotNoModDependenciesFound => '未找到模组依赖。';

  @override
  String chatbotNoModFoundMatching(String query) {
    return '未找到与“$query”匹配的模组。';
  }

  @override
  String chatbotNoModFoundMatchingHint(String query) {
    return '未找到与“$query”匹配的模组。请检查拼写、尝试更短的名称，或使用缩写。';
  }

  @override
  String get chatbotNoModMetadataAvailable => '暂无模组元数据。';

  @override
  String get chatbotNoModProfileToCompare => '当前没有已激活的模组配置方案可供比较。';

  @override
  String get chatbotNoModProfileActive =>
      '当前没有激活的模组配置方案。\n请在“模组配置方案”页面创建并激活一个配置方案。';

  @override
  String get chatbotNoModProfilesSaved =>
      '尚未保存模组配置方案。\n请在“模组配置方案”页面创建配置方案，以保存不同的模组组合。';

  @override
  String get chatbotNoModsCurrentlyEnabled => '当前没有启用任何模组。';

  @override
  String get chatbotNoModsInstalled => '尚未安装任何模组。';

  @override
  String chatbotNoModsFoundByAuthor(String authorQuery) {
    return '未找到作者为“$authorQuery”的模组。';
  }

  @override
  String get chatbotNoModsDetectedInLog => '未在日志文件中检测到模组。';

  @override
  String get chatbotNoTipsAvailable => '暂无小贴士。小贴士来自你已安装模组的 mod_info.json 文件。';

  @override
  String get chatbotNoTotalConversionMods => '尚未安装总转换类模组。';

  @override
  String get chatbotNoUtilityLibraryMods => '尚未安装工具/库类模组。';

  @override
  String get chatbotStarsectorNotRunning => 'Starsector 似乎没有在运行。';

  @override
  String get chatbotStarsectorCurrentlyRunning =>
      'Starsector 正在运行。\n注意：重启游戏后模组更改才会生效。';

  @override
  String get chatbotSuggestionTroubleshoot => '故障排除';

  @override
  String get chatbotVersionCheckDataNotAvailable => '版本检查数据尚未就绪。请稍后重试。';

  @override
  String get chatbotSuggestionWhatCanYouDo => '你能做什么？';

  @override
  String chatbotYouAreRunningNoUpdateInfo(String appName, String version) {
    return '你正在使用 $appName v$version。\n暂时没有更新信息。';
  }

  @override
  String chatbotYouAreRunningUpdating(String appName, String version) {
    return '你正在使用 $appName v$version。\n正在下载更新。详情请查看设置页面。';
  }

  @override
  String chatbotFindItInSidebar(String page) {
    return '你可以在侧边栏中找到它：\n  $page';
  }

  @override
  String get chatbotYouHaveZeroMods => '你启用的模组数量为零。这也算不上模组列表。';

  @override
  String chatbotYourLogFileIsAt(String path) {
    return '你的日志文件位于：\n$path';
  }

  @override
  String modManagerModsSelected(num count) {
    return '已选中 $count 个模组';
  }

  @override
  String modManagerModsCount(num count) {
    return '$count 个模组';
  }

  @override
  String get wispgridGroupReEstimateVramUsage => '（重新）估算 VRAM 占用';

  @override
  String get modsGridNoneActive => '（无）';

  @override
  String get modsGridAboutVramVramEstimator => '关于 VRAM 与 VRAM 估算器';

  @override
  String get createCategoryDialogAddCategory => '添加分类';

  @override
  String get categoryContextMenuAddCategory => '添加分类…';

  @override
  String get modsGridAddMods => '添加模组';

  @override
  String get modsGridAddSecondGroupingLevel => '在主分组下添加第二级分组。';

  @override
  String get categoryContextMenuAllIcons => '所有图标…';

  @override
  String get modSummaryAuthor => '作者';

  @override
  String get modContextMenuCategories => '分类';

  @override
  String get modsGridCategory => '分类';

  @override
  String get categoryContextMenuCategoryColor => '分类颜色';

  @override
  String get categoryContextMenuCategoryIcon => '分类图标';

  @override
  String get modContextMenuChangeCategory => '更改分类';

  @override
  String get categoryManagementPopupChangeColor => '更改颜色';

  @override
  String get modsGridChangeGrouping => '更改模组在网格中的分组方式。';

  @override
  String get categoryManagementPopupChangeIcon => '更改图标';

  @override
  String get modContextMenuCheckVramOfSelected => '检查所选模组的 VRAM';

  @override
  String get modContextMenuCheckForUpdates => '检查更新';

  @override
  String get categoryContextMenuChooseCategories => '选择分类';

  @override
  String get modManagerClear => '清除';

  @override
  String get createCategoryDialogColor => '颜色：';

  @override
  String get modListExporterCopiedToClipboard => '已将模组列表复制到剪贴板。';

  @override
  String get modsGridCopyAllModsToClipboard => '复制所有模组到剪贴板';

  @override
  String get modsGridCopyEnabledModsToClipboard => '复制已启用的模组到剪贴板';

  @override
  String get modContextMenuCopyToClipboard => '复制到剪贴板';

  @override
  String get createCategoryDialogCreate => '创建';

  @override
  String get categoryManagementPopupCustom => '自定义';

  @override
  String modManagerDataIssuesIn(String modName) {
    return '$modName 的数据问题';
  }

  @override
  String get categoryManagementPopupDelete => '删除';

  @override
  String categoryManagementPopupDeleteCategory(String categoryName) {
    return '删除“$categoryName”？';
  }

  @override
  String get modInfoDialogDependencies => '前置模组';

  @override
  String get modInfoDialogDependents => '被依赖项';

  @override
  String get modInfoDialogDescription => '描述';

  @override
  String get modsGridDisableAll => '全部停用';

  @override
  String get modsGridDisableAllMods => '停用所有模组';

  @override
  String get modsGridDontShowUpdates => '不显示更新';

  @override
  String get categoryManagementPopupDone => '完成';

  @override
  String get modsGridEnableAll => '全部启用';

  @override
  String get modsGridEnableAllMods => '启用所有模组';

  @override
  String get modInstallationErrorDialogError => '错误';

  @override
  String get modsGridEstimate => '估算';

  @override
  String get modsGridEstimateVram => '估算 VRAM';

  @override
  String get modInfoDialogEstimateVramUsage => '估算 VRAM 占用';

  @override
  String get modsGridFirstSeen => '首次发现';

  @override
  String get modSummaryFirstSeenByTrios => 'TriOS 首次发现时间';

  @override
  String modContextMenuForceToVersion(String version) {
    return '强制为 $version';
  }

  @override
  String get wispgridGroupRowGroupBy => '分组依据';

  @override
  String get wispgridGroupRowHeaderStyle => '表头样式';

  @override
  String get wispgridHeaderRowHideAll => '全部隐藏';

  @override
  String get modManagerHideModDataWarnings => '隐藏模组数据警告';

  @override
  String get wispgridHeaderRowHideShowColumns => '显示/隐藏列';

  @override
  String categoryIconPickerDialogIconFor(String modName) {
    return '$modName 的图标';
  }

  @override
  String get createCategoryDialogIcon => '图标：';

  @override
  String get wispGridIncoherentScreaming => '语无伦次的尖叫';

  @override
  String get modsGridItDoesntMeanOld => '这不代表你老了。';

  @override
  String get modSummaryLastEnabledByTrios => 'TriOS 最近启用时间';

  @override
  String get wispgridGroupRowLine => '线条';

  @override
  String get modsGridLoad => '加载顺序 #';

  @override
  String get categoryManagementPopupManageCategories => '管理分类';

  @override
  String get wispgridGroupManageCategories => '管理分类…';

  @override
  String get categoryManagementPopupMaterial => 'Material';

  @override
  String get auditModAuditLog => '模组审计日志';

  @override
  String get modsGridModButtonsHighContrast => '模组按钮：高对比度';

  @override
  String get modContextMenuModColor => '模组颜色';

  @override
  String get modInfoDialogModIndex => '模组索引';

  @override
  String get modInfoDialogModInfo => '模组信息';

  @override
  String get modInfoDialogModRepo => '模组仓库';

  @override
  String get modsGridMoreOptions => '更多选项';

  @override
  String get modsGridName => '名称';

  @override
  String get categoryIconPickerDialogNoIcon => '无图标';

  @override
  String get categoryIconPickerDialogNoIconsFound => '未找到图标';

  @override
  String get categoryIconPickerDialogNoMaterialIconsFound => '未找到 Material 图标';

  @override
  String get modsGridOnlyShowEnabledMods => '仅显示已启用的模组';

  @override
  String get modInfoDialogOpenFolder => '打开文件夹';

  @override
  String get modInfoDialogOpenPage => '打开页面';

  @override
  String get modInstallationErrorDialogOpenStarsectorModsFolder =>
      '打开 Starsector mods 文件夹';

  @override
  String get modInfoDialogOpenModFolder => '打开模组文件夹';

  @override
  String get modsGridOpenSidePanel => '打开侧边面板';

  @override
  String get createCategoryDialogPickAColor => '选择颜色';

  @override
  String get modsGridPinFavoritedModsToTop => '将收藏的模组置顶';

  @override
  String get modsGridProfile => '配置：';

  @override
  String get categoryContextMenuRename => '重命名';

  @override
  String categoryContextMenuRenameCategory(String categoryName) {
    return '重命名“$categoryName”';
  }

  @override
  String get wispgridGroupRepeatModsInEachCategory => '在每个分类中重复模组';

  @override
  String get modInstallSelectionDialogReplaceAllAlreadyPresent => '替换所有已存在的模组';

  @override
  String get wispgridHeaderRowResetGridLayout => '重置网格布局';

  @override
  String get modVersionSelectionDropdownSelectADifferentVersion => '选择其他版本';

  @override
  String get categoryContextMenuSetPrimaryCategory => '设为主要分类';

  @override
  String get wispgridGroupRowShortCard => '矮卡片';

  @override
  String get wispgridHeaderRowShowAll => '全部显示';

  @override
  String get modsGridShowModDataWarnings => '显示模组数据警告';

  @override
  String get modsGridShowAllUpdates => '显示所有更新';

  @override
  String get modInstallationErrorDialogShowModFile => '显示模组文件';

  @override
  String get modsGridShowUnmutedUpdates => '显示未静音的更新';

  @override
  String get modInfoDialogSources => '来源';

  @override
  String get wispgridGroupRowTallCard => '高卡片';

  @override
  String get wispgridGroupRowThenBy => '其次依据';

  @override
  String get modInfoDialogTrios => 'TriOS';

  @override
  String get modInfoDialogUpdate => '更新';

  @override
  String get modsGridUpdatesVisibility => '更新可见性';

  @override
  String modInfoDialogUpdatesStatus(String updatesStatus) {
    return '更新：$updatesStatus';
  }

  @override
  String get modInfoDialogVram => 'VRAM';

  @override
  String get modsGridVramEst => 'VRAM 估算';

  @override
  String get modsGridVersion => '版本';

  @override
  String get modSummaryVersions => '版本';

  @override
  String modInfoDialogByAuthor(String author) {
    return '作者：$author';
  }

  @override
  String modManagerVersionShort(String version) {
    return 'v$version';
  }

  @override
  String profileModsCount(num count) {
    return '$count 个模组';
  }

  @override
  String get profileTheyMayClick => '3. 他们可以点击';

  @override
  String profileActivateConfirm(String profileName) {
    return '启用“$profileName”？';
  }

  @override
  String get profileBackupAndActivate => '备份配置并启用';

  @override
  String get profileBothIdentical => '两个配置完全相同。';

  @override
  String get profileClipboardEmpty => '剪贴板为空';

  @override
  String get profileCopyButtonOnA => '模组配置上的复制按钮。';

  @override
  String get profileCopyMissingToClipboard => '复制缺失项到剪贴板';

  @override
  String get profileCopyToClipboard => '复制模组配置到剪贴板';

  @override
  String get profileCreateProfile => '创建配置';

  @override
  String get profileDeleteProfile => '删除配置';

  @override
  String get profileDeleteProfileConfirm => '删除配置？';

  @override
  String get profileDuplicateProfile => '创建配置副本';

  @override
  String profileFailedToImport(String error) {
    return '导入配置失败：$error';
  }

  @override
  String get profileImport => '导入';

  @override
  String get profileImportASharedProfile => '从剪贴板导入分享的模组配置';

  @override
  String get profileImportAsCopy => '导入为副本';

  @override
  String profileImported(String name) {
    return '成功导入配置：$name';
  }

  @override
  String profileImportUnable(String name) {
    return '无法导入配置“$name”。';
  }

  @override
  String get profileMissingMods => '缺失的模组';

  @override
  String get profileMissingVersions => '缺失的版本';

  @override
  String get profileModProfiles => '模组配置';

  @override
  String get profileModListCopied => '模组列表已复制到剪贴板';

  @override
  String get profileNewProfile => '新建配置';

  @override
  String get profileOk => '确定';

  @override
  String get profileOpenSaveFolder => '打开存档目录';

  @override
  String get profileAlreadyExists => '配置已存在';

  @override
  String get profileRereadFromSavesFolder => '从存档目录重新读取';

  @override
  String get profileSearchCatalog => '搜索目录';

  @override
  String get profileSharingModProfiles => '分享模组配置';

  @override
  String get profileOverwriteExisting => '覆盖现有配置';

  @override
  String get profileWip => '开发中';

  @override
  String get recordAuthorLabel => '作者：';

  @override
  String get recordAuthorsLabel => '作者：';

  @override
  String get recordCatalog => '目录';

  @override
  String get recordCatalogNameLabel => '目录名称：';

  @override
  String get recordCategoriesLabel => '类别：';

  @override
  String get recordChangelogUrlLabel => '更新日志链接：';

  @override
  String get recordDirectDownloadUrlLabel => '直接下载链接：';

  @override
  String get recordDiscordUrlLabel => 'Discord 链接：';

  @override
  String get recordDownloadHistory => '下载历史';

  @override
  String get recordDownloadPageUrlLabel => '下载页面链接：';

  @override
  String get recordDownloadedAtLabel => '下载时间：';

  @override
  String get recordDownloadedFromLabel => '下载来源：';

  @override
  String get recordFirstSeenLabel => '首次发现：';

  @override
  String get recordForumThreadIdLabel => '论坛帖子 ID：';

  @override
  String get recordForumUrlLabel => '论坛链接：';

  @override
  String get recordIdentity => '标识信息';

  @override
  String get recordLastSeenLabel => '最后发现：';

  @override
  String get recordMasterVersionFileUrlLabel => '主版本文件链接：';

  @override
  String get recordModIdLabel => '模组 ID：';

  @override
  String recordModSourcesTitle(String name) {
    return '模组来源：$name';
  }

  @override
  String get recordNameLabel => '名称：';

  @override
  String get recordNamesLabel => '名称：';

  @override
  String get recordNexusModsIdLabel => 'Nexus Mods ID：';

  @override
  String get recordNexusUrlLabel => 'Nexus 链接：';

  @override
  String get recordPathLabel => '路径：';

  @override
  String get recordKeyLabel => '记录键：';

  @override
  String get recordSave => '保存';

  @override
  String get recordVersionChecker => '版本检查';

  @override
  String get recordVersionLabel => '版本：';

  @override
  String get portraitConfirmedPortraits => '已确认头像';

  @override
  String get portraitOnlyYourChanges => '仅显示你的更改';

  @override
  String portraitErrorAddingReplacement(String error) {
    return '添加替换头像时出错：$error';
  }

  @override
  String portraitErrorImporting(String error) {
    return '导入头像时出错：$error';
  }

  @override
  String get portraitFemale => '女性';

  @override
  String portraitIdLabel(String id) {
    return 'ID：$id';
  }

  @override
  String get portraitImportPortraits => '导入头像';

  @override
  String get portraitImportResults => '导入结果';

  @override
  String get portraitLoading => '正在加载头像…';

  @override
  String get portraitMale => '男性';

  @override
  String get portraitNoOthersAvailable => '没有可用于替换的其他头像';

  @override
  String get portraitNoneFound => '未找到头像替换。';

  @override
  String get portraitOpenOriginalFolder => '打开原头像所在文件夹';

  @override
  String get portraitOpenReplacementFolder => '打开替换头像所在文件夹';

  @override
  String get portraitOpenOriginal => '打开原头像';

  @override
  String get portraitOpenReplacement => '打开替换头像';

  @override
  String get portraitOriginal => '原头像';

  @override
  String get portraitOriginalNotFound => '未找到原头像';

  @override
  String portraitPathLabel(String path) {
    return '路径：$path';
  }

  @override
  String get portraitPickReplacement => '选择替换头像';

  @override
  String get portraitReplacement => '头像替换';

  @override
  String get portraitReplacements => '头像替换';

  @override
  String get portraitRetry => '重试';

  @override
  String get portraitRevertToOriginal => '还原为原头像';

  @override
  String get portraitShowFilters => '显示筛选器';

  @override
  String portraitSizeLabel(String size) {
    return '大小：$size';
  }

  @override
  String get portraitUnderTheHood => '工作原理';

  @override
  String get portraitViewReplacements => '查看替换头像';

  @override
  String get shipsAlwaysShowEngineGlow => '始终显示引擎光晕';

  @override
  String get shipsCopiedSpriteToClipboard => '已复制贴图到剪贴板。';

  @override
  String get shipsCopySpriteToClipboard => '复制贴图到剪贴板';

  @override
  String get shipsOpenShipDataCsv => '打开 ship_data.csv';

  @override
  String get shipsOpenSpriteFolder => '打开贴图文件夹';

  @override
  String get shipsHasBuiltInWeapons => '拥有内置武器';

  @override
  String get shipsHasModules => '拥有子舰模块';

  @override
  String get shipsShowShipsThatAreModules => '显示作为模块的舰船';

  @override
  String get hullmodsSpoilers => '剧透内容';

  @override
  String get weaponsAlwaysShowWeaponGlow => '始终显示武器光晕';

  @override
  String get weaponsOpenWpnFile => '打开 .wpn 文件';

  @override
  String get weaponsOpenWeaponDataFolder => '打开武器数据文件夹';

  @override
  String get weaponsOpenWeaponDataCsv => '打开 weapon_data.csv';

  @override
  String get weaponsShowHiddenWeapons => '显示隐藏武器';

  @override
  String get hullmodsExportToCsv => '导出为 CSV';

  @override
  String get hullmodsOpenHullmodDataFolder => '打开舰插数据文件夹';

  @override
  String get hullmodsStretchIconsToFit => '拉伸图标以适应大小';

  @override
  String get hullmodsShowHiddenHullmods => '显示隐藏舰插';

  @override
  String get factionViewerCopyId => '复制 ID';

  @override
  String get factionViewerOpenModFolder => '打开模组文件夹';

  @override
  String get factionViewerOpenFactionFile => '打开 .faction 文件';

  @override
  String get factionViewerOpenFactionFolder => '打开阵营文件夹';

  @override
  String get factionViewerNoFactionsFound => '未找到阵营。';

  @override
  String get factionViewerOnlyEnabledMods => '仅已启用的模组';

  @override
  String get factionViewerHideHiddenFactions => '隐藏隐藏阵营';

  @override
  String get factionViewerHideModOnlyFactions => '隐藏仅模组阵营';

  @override
  String get shipBlueprintAnimateEngines => '引擎动画';

  @override
  String get shipBlueprintAnimateShields => '护盾动画';

  @override
  String get shipBlueprintStationModule => '空间站模块';

  @override
  String get shipCodexCardFighterBay => '舰载机机库';

  @override
  String get weaponCodexCardBaseValue => '基础价值：';

  @override
  String get weaponImageCellCopySpriteWithGlow => '复制贴图（含光晕）';

  @override
  String get spawnWeightsCalculatingSpawnWeights => '正在计算出场权重…';

  @override
  String get spawnWeightsFaction => '阵营';

  @override
  String get spawnWeightsRole => '定位';

  @override
  String get vanillaShareBarStillReadingMods => '仍在读取模组';

  @override
  String get vanillaShareBarVanilla => '原版';

  @override
  String get launcherExecutable => '可执行文件：';

  @override
  String get launcherGameIsRunning => '游戏正在运行';

  @override
  String get launcherLaunchPrecheckFailed => '启动预检失败';

  @override
  String get launcherLaunchAnyway => '仍然启动';

  @override
  String get launcherRam => '内存：';

  @override
  String get ramChangerApply => '应用';

  @override
  String get vmparamsFileSelectorDialogMoreInformation => '更多信息';

  @override
  String get vmparamsFileSelectorDialogNoVmparamsTypeFiles =>
      '在游戏目录中未找到 vmparams 类型的文件。';

  @override
  String get vmparamsFileSelectorDialogRescan => '重新扫描';

  @override
  String get vmparamsFileSelectorDialogVmparamsFiles => 'vmparams 文件';

  @override
  String factionCardDoctrineTooltip(String tooltip, num value) {
    return '$tooltip：$value/5\n注意：可能会被模组修改。';
  }

  @override
  String ramChangerRamGb(num ram) {
    return '$ram GB';
  }

  @override
  String factionProfileDialogDoctrineTooltip(String label, num value, num max) {
    return '$label：$value/$max\n注意：可能会被模组修改。';
  }

  @override
  String factionProfileDialogModifiedBy(String modifiers) {
    return '修改者：$modifiers';
  }

  @override
  String factionProfileDialogOpenFactionFile(String suffix) {
    return '打开 .faction 文件$suffix';
  }

  @override
  String factionProfileDialogOpenFactionFolder(String suffix) {
    return '打开阵营文件夹$suffix';
  }

  @override
  String spawnWeightsOpenWeightFile(String path) {
    return '打开设定此权重的文件\n$path';
  }

  @override
  String shipsFailedToCopySprite(String error) {
    return '复制贴图失败：$error';
  }

  @override
  String shipsOpenShipOrSkinFile(String fileType) {
    return '打开 $fileType 文件';
  }

  @override
  String shipBlueprintBackground(String label) {
    return '背景：$label';
  }

  @override
  String shipBlueprintModule(String moduleName) {
    return '模块：$moduleName';
  }

  @override
  String shipBlueprintSlotType(String type) {
    return '类型：$type';
  }

  @override
  String get viewerCopyingImagesNotSupported => '此平台不支持复制图片。';

  @override
  String get shipsSkin => '涂装';

  @override
  String shipsSkinOf(String hullName) {
    return '基于 $hullName';
  }

  @override
  String get shipsShipFile => '舰船文件';

  @override
  String get weaponsWeaponFile => '武器文件';

  @override
  String get weaponImageCellCopySpriteNoGlow => '复制贴图（不含光晕）';

  @override
  String get weaponImageCellCopiedSpriteWithGlow => '已复制贴图（含光晕）到剪贴板。';

  @override
  String get shipsFilterOnlyEnabledModsTooltip =>
      '仅显示已启用模组中的舰船。\n与武器、阵营和图鉴页面共用此设置。';

  @override
  String get shipsFilterHasModulesTooltip => '仅显示拥有子舰模块的舰船。';

  @override
  String get shipsFilterHasBuiltInWeaponsTooltip => '仅显示拥有内置武器的舰船。';

  @override
  String get shipsFilterShowModuleShipsTooltip => '显示被其他舰船用作子舰模块的舰船。';

  @override
  String get shipsSpoilerNone => '无剧透';

  @override
  String get shipsSpoilerSlight => '显示轻度剧透';

  @override
  String get shipsSpoilerAll => '显示全部剧透';

  @override
  String get shipsSpoilerNoneTooltip => '完全不显示剧透内容。';

  @override
  String get shipsSpoilerSlightTooltip => '显示标记为 CODEX_UNLOCKABLE 的舰船。';

  @override
  String get shipsSpoilerAllTooltip =>
      '显示全部剧透内容，包括 HIDE_IN_CODEX 及部分被严格隐去的原版标签舰船';

  @override
  String get weaponsFilterOnlyEnabledModsTooltip =>
      '仅显示已启用模组中的武器。\n与舰船、阵营和图鉴页面共用此设置。';

  @override
  String get weaponsFilterShowHiddenTooltip => '显示隐藏武器（内置、内部使用）。';

  @override
  String get weaponsSpoilerNone => '无剧透';

  @override
  String get weaponsSpoilerAll => '显示全部剧透';

  @override
  String get weaponsSpoilerNoneTooltip => '隐藏标记为 CODEX_UNLOCKABLE 的武器。';

  @override
  String get weaponsSpoilerAllTooltip => '显示标记为 CODEX_UNLOCKABLE 的武器。';

  @override
  String get hullmodsFilterOnlyEnabledModsTooltip => '仅显示已启用模组中的舰插。';

  @override
  String get hullmodsFilterShowHiddenTooltip => '显示隐藏舰插（内置、内部使用）。';

  @override
  String get hullmodsSpoilerNone => '无剧透';

  @override
  String get hullmodsSpoilerAll => '显示全部剧透';

  @override
  String get hullmodsSpoilerNoneTooltip =>
      '隐藏标记为 CODEX_UNLOCKABLE 或 CODEX_REQUIRE_RELATED 的舰插。';

  @override
  String get hullmodsSpoilerAllTooltip =>
      '显示标记为 CODEX_UNLOCKABLE 或 CODEX_REQUIRE_RELATED 的舰插。';

  @override
  String get factionViewerHideHiddenFactionsTooltip =>
      '隐藏 showInIntelTab: false 的阵营（残余、Omega 等）';

  @override
  String get factionViewerSearchShips => '搜索舰船...';

  @override
  String get factionViewerSearchFactions => '搜索阵营...';

  @override
  String get factionViewerOnlyEnabledModsTooltip =>
      '仅显示已启用模组提供的阵营数据。\n已禁用模组添加的舰船、武器和出场权重将被隐藏。';

  @override
  String get factionViewerAscending => '升序';

  @override
  String get factionViewerDescending => '降序';

  @override
  String get factionViewerViewModeCards => '卡片';

  @override
  String get factionViewerViewModeGrid => '表格';

  @override
  String get factionViewerSpawnWeights => '出场权重';

  @override
  String get factionViewerPatchOnly => '仅补丁';

  @override
  String get factionViewerNoWarshipsToSpawn => '该阵营没有可出场的战舰。';

  @override
  String get factionCardFleetWeights => '舰队权重：';

  @override
  String get factionCardFleetWeightsTooltip => '舰队权重中原版/各模组的贡献比例';

  @override
  String get factionCardCalculatingFleetWeights => '正在计算舰队权重…';

  @override
  String factionCardModsAddedOne(String name, num count) {
    return '$name +$count 个模组';
  }

  @override
  String factionCardModsAddedMany(String name, num count) {
    return '$name +$count 个模组';
  }

  @override
  String get factionCardWar => '战';

  @override
  String get factionCardCarr => '航母';

  @override
  String get factionCardPhse => '相位';

  @override
  String get factionCardOffQ => '军素';

  @override
  String get factionCardShpQ => '舰质';

  @override
  String get factionCardFleet => '舰队';

  @override
  String get factionCardShpNum => '舰数';

  @override
  String get factionCardAggr => '侵';

  @override
  String get factionCardStatShips => '舰船';

  @override
  String get factionCardStatWpns => '武器';

  @override
  String get factionCardStatMods => '舰插';

  @override
  String get factionDoctrineWarships => '战舰';

  @override
  String get factionDoctrineCarriers => '航母';

  @override
  String get factionDoctrinePhaseShips => '相位舰船';

  @override
  String get factionDoctrineOfficerQuality => '军官素质';

  @override
  String get factionDoctrineShipQuality => '舰船质量';

  @override
  String get factionDoctrineFleetSize => '舰队规模';

  @override
  String get factionDoctrineShipSize => '舰船体积';

  @override
  String get factionDoctrineAggression => '侵略性';

  @override
  String get factionDoctrinePhase => '相位';

  @override
  String get factionProfileDialogDoctrine => '学说';

  @override
  String get factionProfileDialogFleet => '舰队';

  @override
  String get factionProfileDialogPortraits => '肖像';

  @override
  String get factionProfileDialogBehavior => '行为';

  @override
  String get factionProfileDialogModsAddingFaction => '添加/修改此阵营的模组';

  @override
  String factionProfileDialogShipPrefix(String prefix) {
    return '舰船前缀：$prefix';
  }

  @override
  String factionProfileDialogPortraitsCount(num maleCount, num femaleCount) {
    return '男性 $maleCount 个，女性 $femaleCount 个';
  }

  @override
  String factionProfileDialogMoreCount(num count) {
    return '还有 $count 个';
  }

  @override
  String factionProfileDialogIllegalCommodities(String commodities) {
    return '违禁品：$commodities';
  }

  @override
  String factionProfileDialogAddedBy(String name) {
    return '添加者：$name';
  }

  @override
  String get factionProfileDialogNotAddedByEnabledMod =>
      '没有已启用的模组添加此阵营。它可能属于某个已禁用的模组。';

  @override
  String get factionProfileDialogSeeAllShips => '查看全部舰船';

  @override
  String get factionProfileDialogShipSpoilers => '舰船剧透';

  @override
  String get factionProfileDialogWeaponSpoilers => '武器剧透';

  @override
  String get factionProfileDialogNoSpoilers => '无剧透';

  @override
  String get factionProfileDialogSlightSpoilers => '轻度剧透';

  @override
  String get factionProfileDialogAllSpoilers => '全部剧透';

  @override
  String factionProfileDialogSectionCount(String label, num total) {
    return '$label：$total';
  }

  @override
  String factionProfileDialogSectionCountShown(
    String label,
    num total,
    num shown,
  ) {
    return '$label：$total（显示 $shown 个）';
  }

  @override
  String factionProfileDialogSectionCountZero(String label) {
    return '$label：0';
  }

  @override
  String factionProfileDialogSectionCountNoneShown(String label, num total) {
    return '$label：$total（显示 0 个）';
  }

  @override
  String spawnWeightsFallbackRole(String selectedRole, String fallbackRole) {
    return '此定位（$selectedRole）下没有可出场的舰船，因此游戏改用「$fallbackRole」。';
  }

  @override
  String spawnWeightsNothingToSpawn(String role) {
    return '该阵营在「$role」定位下没有可出场的舰船。';
  }

  @override
  String spawnWeightsNothingToSpawnFallback(String role, String fallbackRole) {
    return '该阵营在「$role」定位下没有可出场的舰船，因此游戏改从「$fallbackRole」中选取。';
  }

  @override
  String get spawnWeightsFooterTooltip =>
      '这些数字忽略了以下几点：\n• 模组通过代码添加的舰船\n• 游戏削减舰队点数消耗过高的舰船\n• 混入的武装货船\n• 完全替换而非追加文件的模组';

  @override
  String get spawnWeightsFooterNote => '这些数字接近但不完全准确。悬停查看详情。';

  @override
  String spawnWeightsSkippedEntries(num count) {
    return '$count 条记录因对应舰船未安装而被忽略。';
  }

  @override
  String get spawnWeightsNoShipsMatchSearch => '没有符合搜索条件的舰船。';

  @override
  String get spawnWeightsPriorityLegend => '优先舰船。阵营偏爱这些舰船，因此其出场率高于权重所显示的水平。';

  @override
  String get spawnWeightsPriorityTooltip => '优先舰船：该阵营偏爱此舰船，因此其出场率高于权重所显示的水平。';

  @override
  String get spawnWeightsHeaderShip => '舰船';

  @override
  String get spawnWeightsHeaderSize => '体积';

  @override
  String get spawnWeightsHeaderWeight => '权重';

  @override
  String get spawnWeightsHeaderWeightTooltip => '游戏文件中该舰船的权重数值。\n数值越高越容易被选中。';

  @override
  String get spawnWeightsHeaderShare => '占比';

  @override
  String get spawnWeightsHeaderShareTooltip => '该舰船在此定位总权重中所占的比例。';

  @override
  String get spawnWeightsHeaderSetBy => '设定来源';

  @override
  String get spawnWeightsHeaderSetByTooltip => '设定此权重的模组（或原版游戏）文件。';

  @override
  String get vanillaShareStillReading => '仍在读取模组。读取完成后将显示比例。';

  @override
  String vanillaShareTooltipOne(String share) {
    return '游戏为该阵营组建舰队时，每艘舰船的选取概率有 $share 来自原版游戏，其余来自 1 个模组。\n\n这是出场概率的占比，而非舰船数量的占比。';
  }

  @override
  String vanillaShareTooltipMany(String share, num modCount) {
    return '游戏为该阵营组建舰队时，每艘舰船的选取概率有 $share 来自原版游戏，其余来自 $modCount 个模组。\n\n这是出场概率的占比，而非舰船数量的占比。';
  }

  @override
  String vanillaShareSegmentTooltip(String name, String share) {
    return '$name：$share';
  }

  @override
  String vanillaShareSegmentTooltipOfFaction(
    String name,
    String share,
    String faction,
  ) {
    return '$name：占 $faction 出场权重的 $share';
  }

  @override
  String get vanillaShareStillReadingUnsorted => '仍在读取模组。这部分尚未完成归类。';

  @override
  String vanillaShareBarVanillaShare(String share) {
    return '原版：$share';
  }

  @override
  String get vanillaShareBarVanillaDash => '原版：—';

  @override
  String get shipBlueprintHardpoint => '固定炮位';

  @override
  String get shipBlueprintTurret => '旋转炮塔';

  @override
  String shipBlueprintBuiltIn(String name) {
    return '内置：$name';
  }

  @override
  String shipBlueprintSizeMount(String size, String mount) {
    return '$size $mount';
  }

  @override
  String shipBlueprintArc(String arc) {
    return '弧度：$arc°';
  }

  @override
  String shipBlueprintAngle(String angle) {
    return '角度：$angle°';
  }

  @override
  String ramChangerCannotWrite(String files, String appName) {
    return '无法写入 vmparams 文件：\n$files。\n\n请确认文件存在，或尝试以管理员身份运行 $appName。';
  }

  @override
  String ramChangerMbSetIn(String ram, String path) {
    return '$ram MB 设置于 $path';
  }

  @override
  String get ramChangerOrCustomRam => '或手动设置自定义内存分配';

  @override
  String get vmparamsFileSelectorDialogIntro => '选择 TriOS 读取和写入内存分配时使用的文件。';

  @override
  String vmparamsFileSelectorDialogMoreInfoBody(String appName) {
    return '不同的游戏启动器使用不同的配置文件。\n\n例如，如果你使用 Fast Rendering 启动游戏，它将使用 `starsector-core/fr.vmparams` 文件中指定的内存大小（截至 2026 年 3 月）。\n\n$appName 已扫描游戏目录，查找包含 Java 内存分配参数模式 `(?<=xmx).*?(?=\\s)` 的文件。\n\n对于下方勾选的每个文件，当你选择内存大小时，只会精确修改这些文件中的内存分配部分，不会改动文件的其余内容。';
  }

  @override
  String get vmparamsFileSelectorDialogRamNotDetected => '未检测到内存设置';

  @override
  String get vmparamsFileSelectorDialogSave => '保存';

  @override
  String launcherLaunch(String version) {
    return '启动 $version';
  }

  @override
  String get launcherRunning => '运行中...';

  @override
  String get launcherLaunchButton => '启动';

  @override
  String launcherTipNeverRequired(String appName) {
    return '提示：启动游戏永远不需要 $appName。';
  }

  @override
  String get launcherDirectLaunchWarning => '直接启动已开启。\n可能导致舰船隐身、战斗画面放大\n等问题。';

  @override
  String get launcherUnknownRam => '（未知内存）';

  @override
  String launcherPrecheckModIncompatible(
    String modName,
    String modVersion,
    String gameVersion,
  ) {
    return '模组 $modName 需要游戏版本 $modVersion，与当前版本 $gameVersion 不兼容。';
  }

  @override
  String launcherPrecheckDependencyMissing(String dependency) {
    return '缺少前置模组 $dependency';
  }

  @override
  String launcherPrecheckDependencyDisabled(String dependency) {
    return '前置模组 $dependency 已被禁用';
  }

  @override
  String launcherPrecheckDependencyWrongVersion(String dependency) {
    return '前置模组 $dependency 版本不正确';
  }

  @override
  String get launcherPrecheckForceCompatibility => '强制兼容（不推荐）';

  @override
  String get factionProfileDialogFactionColor => '阵营颜色';

  @override
  String get factionProfileDialogKnownShips => '已知舰船';

  @override
  String get factionProfileDialogKnownWeapons => '已知武器';

  @override
  String get factionProfileDialogKnownFighters => '已知舰载机';

  @override
  String get factionProfileDialogKnownHullmods => '已知舰插';

  @override
  String get onboardingUpTo => '（最多';

  @override
  String get onboarding2 => 'ಠ_ಠ';

  @override
  String get onboardingAllowReporting => '允许上报';

  @override
  String get onboardingEnableOneClickMod => '启用一键安装模组';

  @override
  String get onboardingKeepReportingDisabled => '保持停用上报';

  @override
  String get onboardingKeepAllModVersions => '保留所有模组版本';

  @override
  String get onboardingKeepOnlyOneMod => '仅保留一个模组版本';

  @override
  String toolbarChangelog(String appName) {
    return '$appName 更新日志';
  }

  @override
  String toolbarChatWith(String name) {
    return '与 $name 聊天';
  }

  @override
  String toolbarOpenAppLogFileFolder(String appName) {
    return '打开 $appName 日志文件夹';
  }

  @override
  String get toolbarRearrangeIcons => '排列图标';

  @override
  String get app_action_buttonsAbout => '关于';

  @override
  String get app_action_buttonsDisabled => '已停用';

  @override
  String get app_action_buttonsDonations => '捐赠';

  @override
  String get app_action_buttonsHideDonationButton => '隐藏捐赠按钮';

  @override
  String get app_action_buttonsHideLayoutToggle => '隐藏布局切换按钮';

  @override
  String get app_action_buttonsNotYetDetecting => '尚未检测';

  @override
  String get app_action_buttonsOpenStarsectorFolder => '打开 Starsector 文件夹';

  @override
  String get app_action_buttonsSettings => '设置';

  @override
  String get app_action_buttonsShowDonationPopup => '显示捐赠弹窗';

  @override
  String get activity_icon_buttonDismissNotification => '清除通知';

  @override
  String get activity_icon_buttonEnableAllNewlyInstalled => '启用所有新安装的模组';

  @override
  String get activity_icon_buttonHideThisPopup => '隐藏此弹窗';

  @override
  String get activity_icon_buttonInstallationActivity => '安装动态';

  @override
  String get app_sidebarExitRearrangeMode => '退出排列模式';

  @override
  String get app_sidebarSwitchLayout => '切换布局';

  @override
  String get app_sidebarTabRearrangeModeIs => '标签页排列模式已开启';

  @override
  String get app_right_toolbarKoFi => 'Ko-Fi';

  @override
  String get app_right_toolbarPatreon => 'Patreon';

  @override
  String get nav_reorder_menuResetNavOrder => '重置导航顺序？';

  @override
  String get nav_reorder_menuResetToDefaultOrder => '重置为默认顺序';

  @override
  String dashboardError(String error) {
    return '错误：$error';
  }

  @override
  String get dashboardNoLogLoaded => '未加载日志';

  @override
  String get dashboardRamAndGameSettings => '内存与游戏设置';

  @override
  String get launch_with_settingsChangeWhichFileLaunches => '更改启动游戏所用的文件';

  @override
  String get launch_with_settingsClearCustomLaunchSettings => '清除自定义启动设置';

  @override
  String get launch_with_settingsFullscreen => '全屏';

  @override
  String get launch_with_settingsSound => '声音';

  @override
  String get game_performanceChooseWhichVmparamsFiles => '选择要管理的 vmparams 文件';

  @override
  String get game_performanceGameDirectoryNotSet => '未设置游戏目录。';

  @override
  String get game_performanceResetToFps => '重置为 60 FPS';

  @override
  String get game_performanceUseVsync => '使用垂直同步';

  @override
  String get mod_dependenciesRequiredMods => '所需模组：';

  @override
  String get mod_list_basicAreYouSure => '确定吗？';

  @override
  String get mod_list_basicColorful => '彩色';

  @override
  String get mod_list_basicMoreSettings => '更多设置';

  @override
  String get mod_list_basicMutedUpdates => '已静音的更新';

  @override
  String get mod_list_basicSortBy => '排序方式';

  @override
  String get mod_list_basicSwapOnUpdate => '更新时切换版本';

  @override
  String get tipsAboutTipsHider => '关于提示隐藏器';

  @override
  String get tipsEnabledModsOnly => '仅已启用模组';

  @override
  String tipsError(String errorMessage) {
    return '错误：$errorMessage';
  }

  @override
  String get tipsGroupByMod => '按模组分组';

  @override
  String get tipsNoGrouping => '不分组';

  @override
  String get tipsNoTipsOrMods => '未找到提示（或模组）。';

  @override
  String get tipsSelect => '选择';

  @override
  String get tipsSelectAll => '全选';

  @override
  String get tipsShowHidden => '显示隐藏项';

  @override
  String get tipsTipsHider => '提示隐藏器';

  @override
  String get triosCancel => '取消';

  @override
  String get triosOk => '确定';

  @override
  String get triosAreYouSure => '确定吗？';

  @override
  String get triosClear => '清除';

  @override
  String get triosClearAll => '全部清除';

  @override
  String get triosEnable => '启用';

  @override
  String get triosDisable => '停用';

  @override
  String get triosUpdate => '更新';

  @override
  String get triosReset => '重置';

  @override
  String get triosSettings => '设置';

  @override
  String get triosNoThanks => '暂不';

  @override
  String get triosModProfiles => '模组配置';

  @override
  String get triosOpenModFolder => '打开模组文件夹';

  @override
  String get triosViewChangelog => '查看更新日志';

  @override
  String get triosEnableThisMod => '启用此模组';

  @override
  String contextMenuForceToVersion(String version) {
    return '强制为 $version';
  }

  @override
  String get contextMenuInstallLinkCopiedTo => '安装链接已复制到剪贴板。';

  @override
  String get contextMenuModSources => '模组来源...';

  @override
  String get contextMenuOpenFolder => '打开文件夹...';

  @override
  String get contextMenuChangeTo => '切换到...';

  @override
  String get contextMenuOpenModInfoJson => '打开 mod_info.json';

  @override
  String get contextMenuDeleteMod => '删除模组...';

  @override
  String contextMenuAllButVersion(String version) {
    return '除 $version 外的全部版本';
  }

  @override
  String get contextMenuAllVersions => '全部版本';

  @override
  String get contextMenuDeleteMods => '删除模组...';

  @override
  String get contextMenuAllButEnabledHighest => '每个模组仅保留已启用/最高版本';

  @override
  String get contextMenuAllSelectedMods => '全部选中的模组';

  @override
  String get contextMenuTroubleshoot => '故障排除...';

  @override
  String get contextMenuShowRawInfo => '显示原始信息';

  @override
  String get contextMenuEstimateVramUsage => '估算显存占用';

  @override
  String get contextMenuOpenInSidePanel => '在侧边面板中打开';

  @override
  String get contextMenuUnmuteUpdates => '取消静音更新';

  @override
  String get contextMenuMuteUpdates => '静音更新';

  @override
  String get contextMenuMuteAllUpdates => '静音全部更新';

  @override
  String get contextMenuView => '查看...';

  @override
  String get contextMenuShips => '舰船';

  @override
  String get contextMenuWeapons => '武器';

  @override
  String get contextMenuHullmods => '舰船插件';

  @override
  String contextMenuFactionsCount(num count) {
    return '阵营（$count）';
  }

  @override
  String get contextMenuViewAllInFaction => '在阵营查看器中查看全部';

  @override
  String get contextMenuFactions => '阵营';

  @override
  String get contextMenuPortraits => '肖像';

  @override
  String get debugSectionDebugMode => '调试模式';

  @override
  String get debugSectionIfModsAreFailing => '如果模组无法下载或更新，停用 SSL 证书校验可能会解决问题。';

  @override
  String get debugSectionAllowInsecureHttpsConnections => '允许不安全的 HTTPS 连接';

  @override
  String get debugSectionShowEngineTrails => '显示引擎尾迹';

  @override
  String get debugSectionIncludePreReleases => '包含预发布版本';

  @override
  String get debugSectionCheckForUpdateAllow => '检查更新（允许旧版本）';

  @override
  String debugSectionOpenSettingsFolder(String appName) {
    return '打开 $appName 设置文件夹';
  }

  @override
  String debugSectionForceEnableAprilFools(String chatbotName) {
    return '强制启用 2026 愚人节彩蛋（$chatbotName）';
  }

  @override
  String get debugSectionReOpenOnboardingDialog => '重新打开引导对话框';

  @override
  String debugSectionErrorRunningSelfUpdateScript(String error) {
    return '运行自动更新脚本时出错：$error';
  }

  @override
  String get debugSectionRunExistingSelfUpdate => '运行已有的自动更新脚本（如存在）';

  @override
  String get debugSectionRedownloadMagiclibShowsToast => '重新下载 MagicLib（显示通知）';

  @override
  String get debugSectionNoModsWithDownload => '未找到可用于测试的带下载地址的模组';

  @override
  String debugSectionStartedTestDownloads(num count) {
    return '已开始 $count 个测试下载——请查看分组通知！';
  }

  @override
  String get debugSectionTestNotificationGroupingDownload => '测试通知分组（下载 5 个模组）';

  @override
  String get debugSectionShowModAddedToast => '显示 MagicLib 模组添加通知';

  @override
  String get debugSectionThisWillWipeTrios => '这将清除 TriOS 的设置。';

  @override
  String get debugSectionWipeSettings => '清除设置';

  @override
  String get debugSectionResetCategories => '重置分类？';

  @override
  String get debugSectionResetCategoriesToDefaults => '将分类重置为默认值';

  @override
  String get debugSectionThrowError => '抛出错误';

  @override
  String get debugSectionForceUpdate => '强制更新';

  @override
  String debugSectionGameVersion(String version) {
    return '游戏版本：$version';
  }

  @override
  String get debugSectionReadGameVersionFrom => '从 starfarer_obf.jar 读取游戏版本。';

  @override
  String get debugSectionReadWeapons => '读取武器';

  @override
  String get debugSectionReadShipsFromCsv => '从 csv 和 json 文件读取舰船';

  @override
  String get debugSectionReadShips => '读取舰船';

  @override
  String debugSectionTriesToReadFrom(String path) {
    return '尝试读取 \'$path\'';
  }

  @override
  String get debugSectionReadStarsectorInstaller => '读取 Starsector 安装包';

  @override
  String get debugSectionForceReplaceTriosCompanion => '强制替换 TriOS 随行模组';

  @override
  String get debugSectionShowDetectedVmparamsFiles => '显示检测到的 vmparams 文件';

  @override
  String get debugSectionForumData => '论坛数据';

  @override
  String get debugSectionForceRefresh => '强制刷新';

  @override
  String debugSectionRefreshFailed(String error) {
    return '刷新失败：$error';
  }

  @override
  String get debugSectionClearCache => '清除缓存';

  @override
  String get debugSectionForumDataCacheCleared => '论坛数据缓存已清除。';

  @override
  String get debugSectionShowForumData => '显示论坛数据';

  @override
  String get debugSectionNoForumDataLoaded => '未加载论坛数据。';

  @override
  String debugSectionCurrentExecutable(String path) {
    return '当前可执行文件：$path';
  }

  @override
  String debugSectionTempFolder(String path) {
    return '临时文件夹：$path';
  }

  @override
  String debugSectionLocale(String locale) {
    return '区域设置：$locale';
  }

  @override
  String get debugSectionShowCurrentAppSettings => '显示当前应用设置';

  @override
  String get debugSectionShowLoadedModProfiles => '显示已加载的模组配置';

  @override
  String get debugSectionShowEnvironmentVariables => '显示环境变量';

  @override
  String get debugSectionEnvironmentVariables => '环境变量';

  @override
  String get debugSectionShowModCompatibility => '显示模组兼容性';

  @override
  String get debugSectionModCompatibility => '模组兼容性';

  @override
  String get debugSectionShowLoadedVersionChecker => '显示已加载的版本检查器缓存';

  @override
  String get debugSectionVersionCheckerCache => '版本检查器缓存';

  @override
  String get dragDropCannotModifyModsFolder => '无法修改模组文件夹';

  @override
  String get dragDropTryRunningTriosAs => '请尝试以管理员身份运行 TriOS。';

  @override
  String get activityClearAllActivity => '清空全部活动记录？';

  @override
  String get activityPermanentlyClearsHistory => '永久清除历史记录';

  @override
  String get deepLinkAlwaysInstallNewMods => '始终安装新模组，无需确认';

  @override
  String deepLinkIdTooltip(String id) {
    return 'ID：$id';
  }

  @override
  String deepLinkVersionTooltip(String version) {
    return '版本 $version';
  }

  @override
  String get deepLinkDownloadLink => '下载链接';

  @override
  String toastNewAppVersion(String appName) {
    return '$appName 新版本';
  }

  @override
  String get aprilFoolsStillNo => '还是不要';

  @override
  String get aprilFoolsOkFine => '好吧';

  @override
  String companionModUpdateTitle(String appName) {
    return '更新 $appName 随行模组';
  }

  @override
  String get catalog_data_sources_dialogClose => '关闭';

  @override
  String get codexAll => '全部';

  @override
  String get settingsAffectsHowQuicklyVersion =>
      '影响版本检查器的搜索速度。如果版本检查器频繁超时，请减小此数值。';

  @override
  String get settingsAllRightThenKeep => '好吧，那就保密吧。';

  @override
  String get settingsAllowErrorReporting => '允许错误报告';

  @override
  String get settingsAlwaysInstallModsFrom =>
      '通过“用 TriOS 打开”链接安装模组时始终直接安装，无需确认';

  @override
  String get settingsAnimatedBackgrounds => '动态背景';

  @override
  String get settingsAppIcon => '应用图标';

  @override
  String get settingsAppName => '应用名称';

  @override
  String get settingsApplyUiScaling => '应用界面缩放';

  @override
  String get settingsAutoSwapOnMod => '模组更新时自动切换';

  @override
  String get settingsBackgroundStyle => '背景样式';

  @override
  String get settingsCheckForUpdate => '检查更新';

  @override
  String get settingsCheckIfGameIs => '检查游戏是否正在运行';

  @override
  String get settingsCleanUp => '清理…';

  @override
  String get settingsColor => '颜色';

  @override
  String get settingsConcurrentExtractions => '并发解压数';

  @override
  String get settingsDebugging => '调试';

  @override
  String get settingsDefault => '默认';

  @override
  String get settingsDisableAllAiRelated => '停用所有 AI 相关功能';

  @override
  String get settingsEnableAccessibilitySemanticsMay => '启用无障碍语义（可能导致卡死）';

  @override
  String get settingsEnableLaunchPrecheck => '启用启动预检';

  @override
  String get settingsErrorReporting => '错误报告';

  @override
  String get settingsFollowTheme => '跟随主题';

  @override
  String get settingsFont => '字体';

  @override
  String get settingsHowLongNotificationsE => '通知（如“正在下载”）的显示时长。';

  @override
  String get settingsIDonTBelieve => '我不信（显示更新提示）';

  @override
  String get settingsIMFeelingLucky => '手气不错';

  @override
  String get settingsInstallingOrUpdatingA => '安装或更新模组会替换其之前的版本。';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsLanguageTooltip => '界面显示所用的语言。\n“系统”跟随操作系统的语言。';

  @override
  String get settingsLaunchButton => '启动按钮';

  @override
  String settingsLoadedThemes(num count) {
    return '已加载 $count 个你的主题。';
  }

  @override
  String get settingsManualFolderNaming => '手动文件夹命名';

  @override
  String get settingsNevermind => '算了';

  @override
  String get settingsNoNewReleaseFound => '未发现新版本';

  @override
  String get settingsNoSolicitors => '谢绝推销！';

  @override
  String get settingsOpenReleasesPage => '打开发布页面';

  @override
  String get settingsOverridePartsOfThe => '覆盖当前主题的部分外观';

  @override
  String get settingsOverrideTheAppIcon => '无论当前主题如何，覆盖应用图标。';

  @override
  String get settingsOverrideTheAppName => '无论当前主题如何，覆盖应用名称。';

  @override
  String get settingsOverrideTheLaunchButton => '无论当前主题如何，覆盖启动按钮样式。';

  @override
  String get settingsPlayer => '玩家';

  @override
  String get settingsRainbow => '彩虹';

  @override
  String get settingsReloadThemes => '重新加载主题';

  @override
  String get settingsRenameAllModFolders => '重命名所有模组文件夹';

  @override
  String get settingsRestartNow => '立即重启';

  @override
  String get settingsRestartRequired => '需要重启';

  @override
  String get settingsShowChangelog => '显示更新日志';

  @override
  String get settingsShowDonationButton => '显示捐赠按钮';

  @override
  String get settingsShowForceUpdateWarning => '显示“强制更新”警告';

  @override
  String get settingsShowLayoutToggleButton => '显示布局切换按钮';

  @override
  String get settingsShowReportBugButton => '显示报告问题按钮';

  @override
  String get settingsShowDriftingMotesWhen => '应用在前台时显示漂浮光点。';

  @override
  String get settingsThemeModifiers => '主题修饰';

  @override
  String get settingsUseTopToolbarInstead => '使用顶部工具栏代替侧边栏';

  @override
  String get settingsWhenCheckedUpdatingAn => '勾选后，更新已启用的模组时会切换到新版本。';

  @override
  String get settingsWhenEnabledModsOpened =>
      '启用后，通过“用 TriOS 打开”链接打开的模组会立即安装，跳过确认对话框。';

  @override
  String get settingsWhetherToShowThe => '是否在强制模组在当前游戏版本上运行时显示警告。';

  @override
  String get settingsWhichAnimationPlaysIn => '背景播放哪种动画。';

  @override
  String get settingsWhichThemeSColors => '光点使用哪个主题的颜色。默认跟随当前主题。';

  @override
  String get sectorMapSelectASave => '选择一个存档';

  @override
  String sectorMapSavePickerLabel(String name, num level) {
    return '$name（等级 $level）';
  }

  @override
  String get sectorMapFindSystem => '查找星系…';

  @override
  String get sectorMapSystemFinder => '星系查找器';

  @override
  String sectorMapSystemsSummary(num count, num inhabited) {
    return '$count 个星系  •  $inhabited 个有人居住';
  }

  @override
  String get sectorMapBackToTheSystem => '返回星系查找器';

  @override
  String get sectorMapFinder => '查找器';

  @override
  String get sectorMapRevealTheWholeSector => '立即显示整个星域';

  @override
  String get sectorMapShowEverythingSpoiler => '显示全部（剧透）';

  @override
  String get sectorMapFilterSystemsByFaction => '按阵营筛选星系';

  @override
  String get sectorMapShowAll => '显示全部';

  @override
  String get sectorMapSelectASaveTo => '选择一个存档以查看其星域。';

  @override
  String sectorMapCouldNotReadSector(String error) {
    return '无法读取该星域。\n\n$error';
  }

  @override
  String get sectorMapClose => '关闭';

  @override
  String sectorMapMarkets(num count) {
    return '市场（$count）';
  }

  @override
  String get sectorMapNoMarkets => '无市场';

  @override
  String get sectorMapSystemUninhabited => '该星系无人居住。';

  @override
  String sectorMapMarketSize(String faction, num size) {
    return '$faction • 规模 $size';
  }

  @override
  String get sectorMapCenter => '居中';

  @override
  String get finderClearAllKnobs => '清除所有筛选条件';

  @override
  String get finderReset => '重置';

  @override
  String get finderPresets => '预设';

  @override
  String get finderResources => '资源';

  @override
  String get finderFloorWeightHint => '下限是硬性门槛；权重表示你在意的程度。';

  @override
  String get finderMustHave => '必备条件';

  @override
  String get finderHabitableWorld => '宜居世界';

  @override
  String get finderGasGiantForVolatiles => '气态巨星（用于挥发物 / 燃料）';

  @override
  String get finderSkipSystemsWithFactionColony => '跳过已有阵营殖民地的星系';

  @override
  String get finderUnclaimedOnly => '仅无主星系（没有现存殖民地）';

  @override
  String get finderMinStableLocations => '最少稳定地点';

  @override
  String get finderAny => '任意';

  @override
  String get finderNearALandmark => '靠近地标';

  @override
  String finderLandmarkNoneInSave(String name) {
    return '$name（此存档中没有）';
  }

  @override
  String get finderWithin => '距离范围';

  @override
  String get finderPreferences => '偏好';

  @override
  String get finderPreferLowHazard => '偏好低危险度';

  @override
  String get finderPreferCloseToCore => '偏好靠近核心';

  @override
  String finderOtherConditions(num count) {
    return '其他条件（$count）';
  }

  @override
  String get finderUncuratedConditions => '此存档中的未整理 / 模组条件';

  @override
  String get finderHardCutoffAtLeast => '硬性门槛：至少有一颗行星达到该等级';

  @override
  String finderWeightLabel(String weight) {
    return '权重：$weight';
  }

  @override
  String get finderCatalogOre => '矿石';

  @override
  String get finderCatalogRareOre => '稀有矿石';

  @override
  String get finderCatalogOrganics => '有机物';

  @override
  String get finderCatalogVolatiles => '挥发物';

  @override
  String get finderCatalogFarmland => '农田';

  @override
  String get finderHintTuneKnobs => '调整条件直到匹配数量变少，然后显示最匹配结果的提示。';

  @override
  String finderHintSomewhereInConstellations(num count) {
    return '位于以下 $count 个星座中的某一个。';
  }

  @override
  String finderHintNarrowedToConstellations(num count) {
    return '已缩小到这 $count 个星座。';
  }

  @override
  String get finderHintUnnamedRegion => '位于深空的未命名区域。';

  @override
  String finderHintInConstellation(String name) {
    return '位于 $name 星座。';
  }

  @override
  String finderHintExactSystem(
    String system,
    String constellation,
    num hazard,
  ) {
    return '$system$constellation（危险度 $hazard%）。';
  }

  @override
  String finderSystemsFit(num count) {
    return '$count 个星系符合';
  }

  @override
  String finderBestMatchSummary(num count, num ordinal, num total) {
    return '$count 个星系符合  •  第 $ordinal/$total 个最佳匹配';
  }

  @override
  String get finderRevealAHint => '显示提示';

  @override
  String get finderShowOnTheMap => '在地图上显示';

  @override
  String get finderNarrowItDown => '进一步缩小';

  @override
  String get finderRevealTheNextBestMatch => '改为显示次佳匹配';

  @override
  String get finderDifferentMatch => '换个匹配';

  @override
  String get finderNoSystemsFit => '没有符合的星系';

  @override
  String get finderLoosenTheKnobs => '放宽条件以找到一些匹配。';

  @override
  String get finderRelaxingOneOfThese => '放宽以下条件之一可能会有帮助：';

  @override
  String finderHintTurnOff(String constraint, num count) {
    return '• 停用$constraint → 可匹配 $count 个';
  }

  @override
  String get codexFilters => '筛选';

  @override
  String get codexBack => '后退';

  @override
  String get codexForward => '前进';

  @override
  String get codexUpALevel => '上一级';

  @override
  String get codexRandomEntry => '随机条目';

  @override
  String get codexSearchTheCodex => '搜索图鉴…';

  @override
  String codexLoadingCategory(String name) {
    return '正在加载$name…';
  }

  @override
  String get codexPickACategory => '选择一个分类，或搜索全部内容。';

  @override
  String get codexAllCategories => '所有分类';

  @override
  String get codexGroupBy => '分组方式';

  @override
  String get codexLockedEntry => '已锁定的条目';

  @override
  String get codexHiddenBySpoilerFilter => '（已被剧透筛选隐藏）';

  @override
  String codexSearchResults(num count) {
    return '搜索结果（$count）';
  }

  @override
  String get codexRelatedEntries => '相关条目';

  @override
  String get codexNothingRelated => '没有相关内容';

  @override
  String get codexGeneral => '常规';

  @override
  String get codexSpoilers => '剧透';

  @override
  String get codexNone => '无';

  @override
  String get codexSlight => '轻微';

  @override
  String get codexMod => '模组';

  @override
  String get codexVanillaOnly => '仅原版';

  @override
  String get codexOnlyEnabledMods => '仅已启用的模组';

  @override
  String get codexShowHiddenWeapons => '显示隐藏武器';

  @override
  String get codexShowHiddenHullmods => '显示隐藏舰船插件';

  @override
  String get codexShowHiddenShipSystems => '显示隐藏舰船系统';

  @override
  String get codexShowModulesAsShipsTooltip =>
      '将空间站的组件（其对接部分）作为独立的舰船条目列出。无论如何设置，它们始终会显示在空间站的相关条目中。';

  @override
  String get codexShowModulesAsShips => '将组件显示为舰船';

  @override
  String get codexSelectAnEntryToSeeDetails => '选择一个条目以查看其详情。';

  @override
  String get codexEntryNotAvailable => '该条目不可用。';

  @override
  String get codexOpenTheFullDetails => '打开此条目的完整详情窗口。';

  @override
  String get codexOpenDetails => '打开详情';

  @override
  String get codexThirdPartyDataProvidedBy => '第三方数据由';

  @override
  String get codexTriTachyonDisclaimer =>
      '。Tri-Tachyon 公司对外部来源提供信息的准确性或可靠性不作保证。访问本图鉴附件，即表示你确认并同意免除 Tri-Tachyon 对因使用或知悉第三方数据所致任何损害的一切责任。';

  @override
  String get codexShipUsedByFactionTooltip => '该阵营使用此舰船，有时可在其殖民地的市场上买到。';

  @override
  String vramScansActive(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个扫描进行中',
    );
    return '进度  •  $_temp0';
  }

  @override
  String get vramCancelling => '正在取消…';

  @override
  String get vramCancel => '取消';

  @override
  String get vramOverall => '总计：';

  @override
  String vramOverallProgress(num done, num total, String percent) {
    return '$total 个模组中已扫描 $done 个  ($percent)';
  }

  @override
  String vramModsCount(num count) {
    return '$count 个模组';
  }

  @override
  String get vramPreparingScan => '正在准备扫描，收集模组文件夹…';

  @override
  String get vramDiscoveringImageFiles => '正在发现图像文件…';

  @override
  String get vramLastScan => '上次扫描：';

  @override
  String get vramNever => '从未';

  @override
  String vramTook(String duration) {
    return '耗时 $duration';
  }

  @override
  String get vramEnabled => '已启用';

  @override
  String get vramDisabled => '已停用';

  @override
  String get vramAllMods => '全部模组';

  @override
  String get vramEstimatedVramUse => '预计显存占用';

  @override
  String vramUnscannedCount(num count) {
    return '（$count 个未扫描）';
  }

  @override
  String vramScanAllToSeeTotals(String cohort) {
    return '扫描$cohort的全部模组以查看总计';
  }

  @override
  String vramNotScanned(num count) {
    return '未扫描（$count 个模组）';
  }

  @override
  String vramNotScannedTooltip(num count) {
    return '这 $count 个模组尚未扫描，因此其显存占用未知。运行一次扫描以查看总计。';
  }

  @override
  String vramModsCountInParens(num count) {
    return '（$count 个模组）';
  }

  @override
  String vramAddedByMods(String bytes, num images) {
    return '模组新增 $bytes（$images 张图片）';
  }

  @override
  String get vramRoughly => '约';

  @override
  String vramImagesCount(num count) {
    return '$count 张图片';
  }

  @override
  String vramAddedByGraphicsLib(String bytes, String detail) {
    return 'GraphicsLib 设置新增 $bytes（$detail）';
  }

  @override
  String vramAddedByVanilla(String bytes) {
    return '原版新增 $bytes';
  }

  @override
  String vramTotalLine(String bytes) {
    return '总计 $bytes';
  }

  @override
  String vramEstimatedVramUseBy(String cohort) {
    return '按$cohort估算的显存占用：';
  }

  @override
  String vramUnscannedOf(num unscanned, num total) {
    return '$total 个模组中有 $unscanned 个未扫描。';
  }

  @override
  String get vramGraphicsLibSettings => 'GraphicsLib 设置';

  @override
  String get vramYes => '是';

  @override
  String get vramNo => '否';

  @override
  String get vramOn => '开';

  @override
  String get vramOff => '关';

  @override
  String vramGfxStatusMain(String effects, String normals, String preload) {
    return '已启用效果：$effects\n生成法线贴图：$normals\n预加载全部：$preload';
  }

  @override
  String vramGfxStatusMaps(String normals, String materials, String surfaces) {
    return '法线贴图：$normals\n材质贴图：$materials\n表面贴图：$surfaces';
  }

  @override
  String get vramAboutVramEstimator => '关于显存估计器';

  @override
  String get vramYourVramIsBased => '显存取决于你的显卡，无法手动调整。';

  @override
  String get vramUsedByMods => '带舰船和武器的模组会占用显存。显存耗尽会导致游戏崩溃。';

  @override
  String vramAppCanEstimate(String appName) {
    return '$appName 可以估计模组的显存占用，但并不完美。\n要查看准确用量，请打开控制台（来自 Console Commands）并查看左上角。';
  }

  @override
  String get vramViewMoreInfo => '查看更多信息';

  @override
  String get vramWhatIsVram => '什么是显存？';

  @override
  String get vramWhatIsVramRamVsVram =>
      '显存（VRAM）即视频内存，与内存（RAM）不同，它物理上位于显卡上。不更换新显卡就无法升级。';

  @override
  String get vramWhatIsVramNotAssignable =>
      '与内存不同，显存无法手动分配（vmparams 文件仅对普通内存有效），游戏会按需使用。';

  @override
  String get vramWhatIsVramMoreImages =>
      '基本上，加载的图像（舰船、武器等）越多，需要的显存就越多。显存耗尽时会改用普通内存，但效率很低；如果内存也耗尽，游戏就会崩溃。';

  @override
  String get vramGraphicsLibDefaults =>
      'GraphicsLib 的默认设置会占用额外显存来改善画质。如果显存不足又不想停用模组，可以尝试调整其设置。';

  @override
  String get vramAboutThisTool => '关于此工具';

  @override
  String get vramToolEstimates => '此工具根据模组文件夹中的图像估计模组占用的显存大小。';

  @override
  String get vramLazyLoadingMods =>
      '少数模组（如 Illustrated Entities）仅在需要时才加载图像，因此实际显存占用会远低于估计值。';

  @override
  String get vramSelectors => '选择器';

  @override
  String get vramSelectorsIntro => '通过显存页面工具栏上的下拉菜单，选择工具决定统计哪些图像的方式：';

  @override
  String get vramSelectorFolderScan =>
      '• 文件夹扫描：统计模组文件夹中的每一张图像（排除少量文件名标记）。与工具的原始行为一致。当模组附带未使用的资源时可能多算。';

  @override
  String get vramSelectorReferencedOnly =>
      '• 仅引用：解析 .ship、.wpn、.proj、ship_data.csv、weapon_data.csv、.faction、portraits.csv、settings.json、GraphicsLib CSV、.jar 字符串常量和零散的 .java 源码，仅识别实际被引用的图像。磁盘上存在但未被引用的图像会单独显示为“未引用”（它们可能是开发遗留文件，或通过动态路径加载）。';

  @override
  String get vramKnownImprecisions => '“仅引用”模式的已知不精确之处：';

  @override
  String get vramImprecisionDynamicPaths =>
      '• 在 Java 中动态构建（字符串拼接）的资源路径可能无法被检测到。调试面板的“Track attribution”开关和“未引用”分组可以暴露这些缺口。';

  @override
  String get vramImprecisionObfuscatedJars => '• 混淆或加壳的 jar 可能导致字符串提取失败。';

  @override
  String get vramImprecisionGfxLibMaps =>
      '• 只要 CSV 条目存在，GraphicsLib 的法线 / 材质 / 表面贴图就会被保留，无论其基础贴图是否被引用。这符合 GraphicsLib 实际加载贴图的方式。';

  @override
  String get vramDebugToggles => '调试面板开关（仅在“仅引用”模式下可见）：';

  @override
  String get vramDebugPerSourceChips => '• 按来源的筛选块：逐个开关引用解析器以定位误报。';

  @override
  String get vramDebugSuppressUnreferenced =>
      '• 隐藏未引用：完全隐藏未引用分组，以便与文件夹扫描总计进行干净对比。';

  @override
  String get vramDebugTrackAttribution => '• 追踪归因：记录标记了每个文件的解析器，在单文件详情视图中显示。';

  @override
  String get vramSeeTrueUsage =>
      '要查看真实显存占用，请启用 Console Commands 模组并在游戏中打开它。可用显存量会显示在左上角。';

  @override
  String get vramCalculation => '计算方式';

  @override
  String get vramCalcBasis => '显存占用取决于图像的宽度、高度和通道数，与文件大小无关。';

  @override
  String get vramMultiplierNote =>
      '背景图像的系数为 1x，其他图像为 1.33x。1.33x 是 mipmap 使用的额外内存。';

  @override
  String get vramBackgroundsIgnored =>
      '与原版背景相同大小的背景会被忽略（因为原版始终只加载一张背景，所以同等大小的背景不会增加显存占用）。';

  @override
  String get vramLargestBackgroundCounted =>
      '如果模组有一张或多张大于原版背景的背景图，则只把其中最大的一张计入额外显存占用（additionalVRAMUse = modBackgroundVRAMUse - vanillaBackgroundVRAMUse）。';

  @override
  String get vramScanDebug => '显存扫描调试';

  @override
  String get vramMultithreadedScanning => '多线程扫描';

  @override
  String get vramMultithreadedSubtitle => '扫描更快，CPU 和文件句柄压力更大';

  @override
  String get vramMultithreadedTooltip =>
      '在 isolate 池中运行逐模组的扫描循环。模组列表较大时速度更快，但占用更多 CPU，且文件句柄上限会随池大小成倍增加。下次扫描时生效。';

  @override
  String get vramEnabledReferenceSources => '已启用的引用来源';

  @override
  String get vramSuppressUnreferencedBucket => '隐藏未引用分组';

  @override
  String get vramSuppressUnreferencedTooltip => '隐藏未引用分组，以便与文件夹扫描总计直接对比。';

  @override
  String vramEstimateFor(String mod) {
    return '显存估计：$mod';
  }

  @override
  String vramTabCountTotal(String base, num total) {
    return '$base（$total）';
  }

  @override
  String vramTabCountFiltered(String base, num filtered, num total) {
    return '$base（$filtered / $total）';
  }

  @override
  String get vramReferenced => '被引用';

  @override
  String get vramUnreferenced => '未引用';

  @override
  String get vramSearchPathOrReferencedBy => '搜索路径或引用来源…';

  @override
  String get vramClose => '关闭';

  @override
  String vramModStatus(String status) {
    return '状态：$status';
  }

  @override
  String vramScanMethod(String method) {
    return '方式：$method';
  }

  @override
  String get vramScanAll => '全部扫描';

  @override
  String get vramSelectiveScan => '选择性扫描';

  @override
  String vramGraphicsLibCsvEntries(num count) {
    return 'GraphicsLib CSV：$count 条记录';
  }

  @override
  String vramLastScanned(String time) {
    return '上次扫描于 $time';
  }

  @override
  String vramLastScanAt(String time) {
    return '上次扫描：$time';
  }

  @override
  String get vramRescanningThisMod => '正在重新扫描此模组…';

  @override
  String get vramRescanThisMod => '重新扫描此模组';

  @override
  String get vramScanInProgressNoRescan => '扫描进行中，无法重新扫描';

  @override
  String get vramBaseTextures => '基础贴图（不含 GraphicsLib）';

  @override
  String vramGfxLibMaps(String type) {
    return 'GraphicsLib $type 贴图';
  }

  @override
  String get vramTotals => '总计';

  @override
  String get vramReferencedTotal => '被引用总计（计入显存）';

  @override
  String get vramUnreferencedTooltip =>
      '磁盘上未检测到引用的图像。可能包含开发遗留文件或通过 Java 动态构建的路径。';

  @override
  String get vramUnreferencedNotCounted => '未引用（不计入）';

  @override
  String get vramUnreferencedAdvisory =>
      '注意：磁盘上没有被任何已解析引用指向的图像。可能是开发遗留文件，或通过解析器无法检测的动态路径加载。';

  @override
  String vramUnreferencedSuffix(String bytes) {
    return '+$bytes 未引用';
  }

  @override
  String get vramScanInProgress => '扫描进行中…';

  @override
  String vramRescanNamed(String mod) {
    return '重新扫描 $mod';
  }

  @override
  String get vramReasonGfxLibNotEnabled => 'GraphicsLib 未启用';

  @override
  String get vramReasonTypeDisabledInConfig => '该类型已在 GraphicsLib 设置中停用';

  @override
  String get vramReasonStreamedOnDemand => '由 GraphicsLib 按需流式加载；不计入';

  @override
  String get vramReasonNotCounted => '不计入';

  @override
  String get vramNoUnreferencedImages => '没有未引用的图像。';

  @override
  String get vramNoReferencedImages => '没有被计入的被引用图像。';

  @override
  String get vramFile => '文件';

  @override
  String get vramExplanation => '说明';

  @override
  String get vramDimensions => '尺寸';

  @override
  String get vramGraphicsLib => 'GraphicsLib';

  @override
  String get vramBytes => '字节';

  @override
  String vramTooltipDimensions(String size) {
    return '尺寸 (POT)：$size';
  }

  @override
  String vramTooltipChannels(num channels) {
    return '通道 × 位深：$channels';
  }

  @override
  String vramTooltipType(String type, String gfxlib) {
    return '类型：$type$gfxlib';
  }

  @override
  String vramTooltipTypeGfxLib(String name) {
    return '· GraphicsLib $name';
  }

  @override
  String get vramTooltipVanillaReplaceNoExtra => '替换了已计入原版显存的文件，因此不产生额外占用。';

  @override
  String vramTooltipVanillaReplaceLarger(String original, String extra) {
    return '以更大版本替换原版文件（$original），只有多出的 $extra 计入。';
  }

  @override
  String vramTooltipReferencedBy(String refs) {
    return '被引用于：\n$refs';
  }

  @override
  String get vramTooltipNoAttribution => '未记录引用来源（文件夹扫描模式或背景文件）。';

  @override
  String vramTooltipNotCounted(String reason) {
    return '未计入；$reason';
  }

  @override
  String get vramTooltipBackground => '背景图；仅最大的一张计入';

  @override
  String vramGfxLibTypeDisabledInConfig(String type) {
    return 'GraphicsLib $type 贴图已在设置中停用';
  }

  @override
  String vramGfxLibOnDemand(String type) {
    return 'preloadAllMaps 关闭时，GraphicsLib 会按需加载/卸载 $type 贴图';
  }

  @override
  String vramMapsNotCounted(String type) {
    return '$type 贴图不计入';
  }

  @override
  String get vramExplReplacesVanilla => '替换原版，无额外显存';

  @override
  String vramExplReplacesVanillaLarger(String extra) {
    return '替换原版，多出 $extra';
  }

  @override
  String get vramExplUnreferenced => '（未引用）';

  @override
  String get vramExplBackground => '背景';

  @override
  String get vramEstimateVram => '估计显存';

  @override
  String get vramReEstimateVram => '重新估计显存';

  @override
  String vramScanningCurrent(String current, String progress) {
    return '正在扫描：$current$progress';
  }

  @override
  String vramScanning(String progress) {
    return '正在扫描$progress';
  }

  @override
  String get vramMoreScanOptions => '更多扫描选项';

  @override
  String vramScanUnscannedMods(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '扫描 $count 个模组',
    );
    return '$_temp0';
  }

  @override
  String get vramAllModsScanned => '所有模组均已扫描';

  @override
  String get vramVramEstimator => '显存估计器';

  @override
  String get vramAboutVramAndEstimator => '关于显存与显存估计器';

  @override
  String get vramFilterMods => '筛选模组...';

  @override
  String get vramScanAllMods => '扫描全部模组';

  @override
  String get vramReScanAllMods => '重新扫描全部模组';

  @override
  String get vramEnabledModsOnly => '仅已启用的模组';

  @override
  String get vramExportCacheAsJson => '将缓存导出为 JSON…';

  @override
  String get vramExportDialogTitle => '将显存缓存导出为 JSON';

  @override
  String get vramCouldNotOpenSaveDialog => '无法打开保存对话框。';

  @override
  String vramExportedCacheTo(String path) {
    return '已将显存缓存导出到 $path';
  }

  @override
  String vramExportFailed(String error) {
    return '导出失败：$error';
  }

  @override
  String vramEstimatedVramUsageBar(String used, String total) {
    return '预计显存占用：$used / $total';
  }

  @override
  String get chipperSubtitle => 'Starsector 日志查看器';

  @override
  String get chipperLoadMyLog => '加载我的日志';

  @override
  String get chipperCopyAll => '全部复制';

  @override
  String get chipperOpenLogFile => '打开日志文件';

  @override
  String get chipperUploadLogFile => '上传日志文件';

  @override
  String get chipperWhatsItDo => '它是做什么的？';

  @override
  String get chipperWhatsItDoBody =>
      'Chipper 从日志中提取有用信息，方便查看。\n\n排查 Starsector 问题的第一步，就是在日志文件中查找错误和/或过期的模组。';

  @override
  String get chipperWhatDoYouDoWithLogs => '你会如何处理我的日志？';

  @override
  String get chipperLogsPrivacy =>
      '什么都不做；我看不到它们。一切都在你的浏览器中完成。文件及其任何部分都不会通过互联网发送。\n\n我不收集任何分析数据，托管服务商 Cloudflare 默认收集的除外，且全部是匿名的。';

  @override
  String get chipperCreatedUsingFlutter => '使用 Flutter（Google）创建';

  @override
  String get chipperProbablyDiscontinued => '所以它明年可能就会停止维护。';

  @override
  String get chipperSourceCode => '源代码：https://github.com/wispborne/chipper';

  @override
  String get chipperNotFoundInLog => '未在日志中找到。';

  @override
  String get chipperSystem => '系统';

  @override
  String get chipperCopy => '复制';

  @override
  String get chipperStarsectorLabel => 'Starsector：';

  @override
  String get chipperJreLabel => 'JRE：';

  @override
  String get chipperOsLabel => '操作系统：';

  @override
  String get chipperListMayBeIncomplete =>
      '此列表可能不完整。\n未在日志中找到“Running with the following mods”区块。';

  @override
  String chipperModsCount(num count) {
    return '模组（$count）';
  }

  @override
  String get chipperCopyLessInfo => '复制（较少信息）';

  @override
  String get chipperPopup => '弹出窗口';

  @override
  String chipperChippedIn(String ms) {
    return '处理用时 $ms 毫秒';
  }

  @override
  String chipperErrorsCount(num count) {
    return '错误（$count）';
  }

  @override
  String chipperErrorsFilteredCount(num filtered, num total) {
    return '错误（$filtered/$total）';
  }

  @override
  String get chipperFilter => '筛选...';

  @override
  String chipperPreviousLineOn(String thread) {
    return '$thread 上的上一行';
  }

  @override
  String get chipperGenericThread => '线程';

  @override
  String get chipperDropLogHere => '将 starsector.log 拖到此处';

  @override
  String get chipperOrCtrlVPaste => '或按 Ctrl+V 粘贴';

  @override
  String get chipperWindowsPathLabel => 'Windows：';

  @override
  String get chipperMacosPathLabel => 'MacOS：';

  @override
  String get chipperLinuxPathLabel => 'Linux：';

  @override
  String get chipperLoadingThinking => '思考中...';

  @override
  String get chipperLoadingProcessing => '处理中...';

  @override
  String get chipperLoadingParsing => '解析中...';

  @override
  String get chipperLoadingPondering => '琢磨日志中';

  @override
  String get chipperLoadingChipping => '处理日志中...';

  @override
  String get chipperLoadingBreakingDown => '拆解日志中...';

  @override
  String get chipperLoadingAnalyzing => '分析中...';

  @override
  String get chipperLoadingAnalysing => '分析中…';

  @override
  String get chipperLoadingSpinning => '运转中...';

  @override
  String get chipperLoadingPleaseWait => '请稍候...';

  @override
  String get chipperLoadingPleaseHold => '请稍等...';

  @override
  String get commonClose => '关闭';

  @override
  String get commonCancel => '取消';

  @override
  String get commonError => '错误';

  @override
  String commonErrorWithDetails(String error) {
    return '错误：$error';
  }

  @override
  String get commonSelectAll => '全选';

  @override
  String get commonDeselectAll => '取消全选';

  @override
  String get commonApply => '应用';

  @override
  String get commonDiscardChange => '放弃更改';

  @override
  String get commonCopyToClipboard => '复制到剪贴板';

  @override
  String get commonCopiedToClipboard => '已复制到剪贴板';

  @override
  String get commonNothingToCopy => '没有可复制的内容';

  @override
  String get commonConfirm => '确认';

  @override
  String get commonEdit => '编辑';

  @override
  String get commonEmpty => '（空）';

  @override
  String get commonSearch => '搜索';

  @override
  String get commonMoreOptions => '更多选项';

  @override
  String get commonRefresh => '刷新';

  @override
  String commonDurationSecond(num count) {
    return '$count 秒';
  }

  @override
  String commonDurationSeconds(num count) {
    return '$count 秒';
  }

  @override
  String commonDurationMinute(num count) {
    return '$count 分钟';
  }

  @override
  String commonDurationMinutes(num count) {
    return '$count 分钟';
  }

  @override
  String commonDurationHour(num count) {
    return '$count 小时';
  }

  @override
  String commonDurationHours(num count) {
    return '$count 小时';
  }

  @override
  String commonDurationDay(num count) {
    return '$count 天';
  }

  @override
  String commonDurationDays(num count) {
    return '$count 天';
  }

  @override
  String commonDurationWeek(num count) {
    return '$count 周';
  }

  @override
  String commonDurationWeeks(num count) {
    return '$count 周';
  }

  @override
  String commonDurationMonth(num count) {
    return '$count 个月';
  }

  @override
  String commonDurationMonths(num count) {
    return '$count 个月';
  }

  @override
  String commonDurationYear(num count) {
    return '$count 年';
  }

  @override
  String commonDurationYears(num count) {
    return '$count 年';
  }

  @override
  String commonTimeAgo(String duration) {
    return '$duration前';
  }

  @override
  String commonTimeInFuture(String duration) {
    return '$duration后';
  }

  @override
  String get dialogsModsFolderWarning => '你是想删掉模组目录吗？不行！不可以！';

  @override
  String dialogsFailedToDelete(String name, String error) {
    return '删除 $name 失败：$error';
  }

  @override
  String get dialogsEnabledSuffix => '（已启用）';

  @override
  String dialogsCompanionModWarning(String appName) {
    return '删除 Companion Mod 也会删除你通过 Portrait Replacer 导入的所有自定义图片！\n\n如果你曾使用 $appName 导入自定义头像，之后想再次使用就需要重新导入。';
  }

  @override
  String get dialogsDeleteModTitle => '删除模组';

  @override
  String get dialogsDeleteModsTitle => '删除模组';

  @override
  String dialogsDeleteCountMod(num count) {
    return '删除 $count 个模组';
  }

  @override
  String dialogsDeleteCountMods(num count) {
    return '删除 $count 个模组';
  }

  @override
  String get dialogsSelectTheModFolders => '选择要删除的模组目录：';

  @override
  String get dialogsDeleteWarningSg => '这将从磁盘删除该模组目录，此操作无法撤销。';

  @override
  String get dialogsDeleteWarningPl => '这将从磁盘删除这些模组目录，此操作无法撤销。';

  @override
  String get dialogsAnErrorOccurredWhile => '删除模组目录时发生错误。';

  @override
  String dialogsAboutAppName(String appName, String version) {
    return '$appName v$version';
  }

  @override
  String get dialogsAboutTagline => 'Starsector 工具箱\n由 Wisp 开发';

  @override
  String get debugInfoId => 'id：';

  @override
  String get debugInfoVersion => '版本：';

  @override
  String get debugInfoVersionChecker => '版本检查器';

  @override
  String get debugInfoInternalId => '内部 id：';

  @override
  String get debugInfoModFolder => '模组目录：';

  @override
  String get debugInfoIcon => '图标：';

  @override
  String get debugInfoVersionCheckerLocal => '版本检查器 - 本地';

  @override
  String get debugInfoVersionCheckerRemote => '版本检查器 - 远程（缓存查询）';

  @override
  String get debugInfoModMetadata => '模组元数据';

  @override
  String get debugInfoWholeMod => '整个模组：';

  @override
  String get debugInfoThisVersion => '此版本：';

  @override
  String get debugInfoSearchTags => '搜索标签';

  @override
  String get debugInfoNone => '（无）';

  @override
  String get dialogPagerPrevious => '上一个（左方向键）';

  @override
  String get dialogPagerNext => '下一个（右方向键）';

  @override
  String get brokenShipImageTooltip => '未找到图片。这是一根香蕉。';

  @override
  String modDataFileSubmenuLabel(String label, num count) {
    return '$label（$count）';
  }

  @override
  String modDataFileStatsAffected(String label, num count) {
    return '$label（属性受 $count 个文件影响）';
  }

  @override
  String get forceVersionCouldNotDetermine => '无法确定当前的 Starsector 版本。';

  @override
  String get forceVersionForce => '强制';

  @override
  String forceVersionTitleSingle(String version) {
    return '强制为 $version？';
  }

  @override
  String forceVersionTitleMultiple(num count, String version) {
    return '强制 $count 个模组为 $version？';
  }

  @override
  String forceVersionMadeForSuffix(String gameVersion, String currentVersion) {
    return '是为 Starsector $gameVersion 制作的，但你可以尝试在 $currentVersion 中运行。';
  }

  @override
  String get forceVersionSimpleModsNote =>
      '头像包等简单模组一般没问题。游戏更新通常不会破坏模组，但也取决于模组和游戏版本。';

  @override
  String forceVersionModMeantFor(
    String name,
    String version,
    String gameVersion,
  ) {
    return '- $name ($version) 是为 Starsector \'$gameVersion\' 设计的。';
  }

  @override
  String forceVersionConfirmMultiple(num count, String version) {
    return '确定要修改 $count 个 mod_info.json 文件以在 $version 下运行吗？';
  }

  @override
  String forceVersionConfirmSingle(String name, String version) {
    return '确定要修改 \'$name\' 的 mod_info.json 文件以在 $version 下运行吗？';
  }

  @override
  String viewerToolbarShownCount(num count) {
    return '（显示 $count 个）';
  }

  @override
  String get viewerToolbarSplitTooltip => '分屏显示两个可独立滚动的视图。';

  @override
  String get viewerToolbarCompareMode => '对比模式';

  @override
  String get refreshModsAndRecheck => '刷新模组并重新检查版本';

  @override
  String get refreshModsRefreshing => '刷新中';

  @override
  String get rangeFilterResetThisRange => '重置此范围';

  @override
  String get rangeFilterAny => '任意';

  @override
  String get underConstruction => '施工中';

  @override
  String get smartSearchFieldReference => '搜索字段参考';

  @override
  String get smartSearchViewFieldReference => '查看搜索字段参考';

  @override
  String get smartSearchSyntaxExamples =>
      '语法：field:value   field:>value   -field:value   field:\"multi word\"';

  @override
  String get filterAdvanced => '高级';

  @override
  String get filterAdvancedTooltip => '高级筛选：为每个筛选组添加“任一”/“全部”选项。';

  @override
  String get filterClearSearch => '清除搜索';

  @override
  String get filterHideFilters => '隐藏筛选器';

  @override
  String get filterShowFilters => '显示筛选器';

  @override
  String get filterTitle => '筛选器';

  @override
  String get filterSearchHint => '搜索过滤条件';

  @override
  String get filterClearAll => '全部清除';

  @override
  String get filterClearAllTooltip => '将筛选恢复为默认设置。\n部分筛选默认生效，例如剧透警告。';

  @override
  String get filterIncludeAll => '全部包含';

  @override
  String get filterExcludeAll => '全部排除';

  @override
  String get filterClearAllFilters => '清除所有筛选';

  @override
  String get filterGroupSearchScopedTooltip =>
      '仅作用于搜索结果中显示的值。\n按住 Shift 可作用于整个分组。';

  @override
  String get filterLogicAllTooltip => '全部：仅显示包含你所选全部值的条目。\n点击切换为“任一”。';

  @override
  String get filterLogicAnyTooltip => '任一：显示包含你所选任一值的条目。\n点击切换为“全部”。';

  @override
  String get filterLogicAll => '全部';

  @override
  String get filterLogicAny => '任一';

  @override
  String filterPillRemove(String label) {
    return '移除“$label”';
  }

  @override
  String get filterGroupPersistOn => '筛选组保存中';

  @override
  String get filterGroupPersistOff => '筛选组未保存';

  @override
  String csvExportTitle(String name) {
    return '导出 $name 数据';
  }

  @override
  String csvExportAllLoadedData(String name) {
    return '所有已加载的 $name 数据和字段。';
  }

  @override
  String csvExportGridDataOnly(String name) {
    return '仅网格中可见的 $name 数据和字段。';
  }

  @override
  String get csvExportOptionAllData => '全部数据';

  @override
  String get csvExportOptionGridData => '网格数据';

  @override
  String get csvExportCopyToClipboard => '复制到剪贴板';

  @override
  String get csvExportCopiedToClipboard => '已复制到剪贴板！';

  @override
  String get csvExportSaveToFile => '保存到文件';

  @override
  String csvExportSaved(String path) {
    return '已保存：$path';
  }

  @override
  String get csvExportSaveDialogTitle => '保存武器 CSV';

  @override
  String csvExportSaveDialogUnavailable(String path) {
    return '无法打开保存对话框。示例文件位于：$path';
  }

  @override
  String get changelogTitle => '更新日志';

  @override
  String get changelogRefreshTooltip => '刷新更新日志';

  @override
  String get graphBarChart => '柱状图';

  @override
  String get graphPieChart => '饼图';

  @override
  String get addModsTooltipGameRunning => '游戏运行中';

  @override
  String get addModsTooltipIconOnly => '提示：拖拽即可安装模组！';

  @override
  String get addModsTooltip => '添加新模组\n\n提示：拖拽即可安装模组！';

  @override
  String get fileCardAddToStarsector => '添加到 Starsector';

  @override
  String get fileCardDropToDownload => '拖放以下载';

  @override
  String disableCannotWriteGameFolder(String appName) {
    return '无法修改游戏目录和/或 vmparams。\n请尝试以管理员身份运行 $appName。';
  }

  @override
  String disableCannotWriteMods(String appName) {
    return '无法修改模组目录。\n请尝试以管理员身份运行 $appName，并确保 mods/enabled_mods.json 存在且可修改。';
  }

  @override
  String descriptionPlaceholderHint(String placeholder) {
    return '显示为 $placeholder 的值是由游戏代码填充的占位符。附加文本可能完全由游戏代码添加。';
  }

  @override
  String get gamePathsPathDoesNotExist => '路径不存在';

  @override
  String get gamePathsStarsectorNotFound => '未找到 Starsector';

  @override
  String get gamePathsGameFolder => '游戏目录';

  @override
  String get gamePathsStarsectorLauncher => 'Starsector 启动器';

  @override
  String get gamePathsOverrideTooltip => '勾选后覆盖默认路径。';

  @override
  String gamePathsLauncherTooltip(String appName) {
    return '在 $appName 中点击“启动”时启动的程序。';
  }

  @override
  String get gamePathsSelectLauncher => '选择 Starsector 启动器';

  @override
  String get gamePathsMods => '模组';

  @override
  String get gamePathsModsTooltip => '模组的存放位置。';

  @override
  String get gamePathsSelectMods => '选择模组目录';

  @override
  String get gamePathsSaves => '存档';

  @override
  String get gamePathsSavesTooltip => '游戏存档的存放位置。';

  @override
  String get gamePathsSelectSaves => '选择存档目录';

  @override
  String get gamePathsCoreData => '核心数据';

  @override
  String get gamePathsCoreDataTooltip =>
      '游戏数据的存放位置。\n该目录包含 data、graphics、sounds 和 jar 文件。';

  @override
  String get gamePathsSelectCore => '选择核心数据目录';

  @override
  String gamePathsFootnote(String appName) {
    return '这些路径告诉 $appName 在哪里查找数据，不会影响 Starsector 及其数据加载方式。';
  }

  @override
  String get appSettingsResetTitle => 'TriOS 设置已重置';

  @override
  String appSettingsResetContent(String appName, String error) {
    return '你的 $appName 设置已被重置。\n这可能是由更新或设置文件损坏导致。\n\n请检查你的设置，你的模组未受影响。\n\n\n错误：\n$error';
  }

  @override
  String get appDeepLinkTitle => '“使用 TriOS 安装”链接支持';

  @override
  String get appDeepLinkBody => '启用论坛“使用 TriOS 安装”按钮的支持？\n你可以随时在设置页面更改此项。';

  @override
  String get appNoThanks => '暂不';

  @override
  String get appEnable => '启用';
}
