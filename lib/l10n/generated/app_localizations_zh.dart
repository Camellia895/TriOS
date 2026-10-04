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
  String get catalogDataSource => '目录数据源';

  @override
  String get catalogDataSourceAuto => '自动（跟随界面语言）';

  @override
  String get catalogDataSourceFossic => '中文论坛（Fossic）';

  @override
  String get catalogDataSourceWisp => '英文论坛（Starsector 官方）';

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
  String get catalogFossicModRepo => 'Fossic 模组索引';

  @override
  String get catalogFossicModRepoSubtitle =>
      'fossic.org 模组索引：原创 / 汉化 / 转载，可直接下载论坛附件';

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

  @override
  String get chatbotNewChatTooltip => '开始新对话';

  @override
  String chatbotMessageHint(Object name) {
    return '给 $name 发消息…';
  }

  @override
  String get chatbotSend => '发送';

  @override
  String chatbotAiCaution(Object name) {
    return '注意：AI 可能会犯错。不过 $name 永远不会出错，因为它并不是真正的 AI。';
  }

  @override
  String get chatbotEmptyTitle => '有什么可以帮你的？';

  @override
  String get chatbotEmptySubtitle => '可以问我模组、设置或故障排除相关的问题。';

  @override
  String chatbotWaterUsed(Object liters) {
    return '· 已消耗 $liters 升 H₂O';
  }

  @override
  String get chatbotTagOn => '开';

  @override
  String get chatbotTagOff => '关';

  @override
  String chatbotAndNMore(Object count) {
    return '…以及另外 $count 个';
  }

  @override
  String chatbotAndNMoreMods(Object count) {
    return '…以及另外 $count 个模组';
  }

  @override
  String chatbotAndNMoreAuthors(Object count) {
    return '…以及另外 $count 位作者';
  }

  @override
  String chatbotAndNMoreSources(Object count) {
    return '…以及另外 $count 个来源';
  }

  @override
  String get chatbotStatusEnabled => '已启用';

  @override
  String get chatbotStatusDisabled => '已停用';

  @override
  String get chatbotStatusOn => '开';

  @override
  String get chatbotStatusOff => '关';

  @override
  String get chatbotValueNotSet => '未设置';

  @override
  String get chatbotValueDefault => '默认';

  @override
  String get chatbotValueUnknown => '未知';

  @override
  String get chatbotNotLoaded => '未加载';

  @override
  String get chatbotTypeUtility => '工具';

  @override
  String get chatbotTypeTotalConversion => '总转换';

  @override
  String get chatbotPermissionYes => '是';

  @override
  String get chatbotPermissionNo => '否';

  @override
  String get chatbotNoModDataYet => '尚未加载模组数据。请确保已在设置中配置游戏目录。';

  @override
  String get chatbotNoLogLoadedYet => '尚未加载日志文件。请确保已在设置中配置游戏目录。';

  @override
  String get chatbotNoViewerDataYet => '查看器数据尚未加载。请确保已在设置中配置游戏目录，并先打开相应的查看器页面。';

  @override
  String get chatbotNoProfileDataYet => '暂无模组配置方案数据。';

  @override
  String chatbotBreakdownVanilla(Object count) {
    return '原版：$count';
  }

  @override
  String chatbotBreakdownFromMods(Object count) {
    return '来自模组：$count';
  }

  @override
  String get chatbotCommonIssuesGuide =>
      'Starsector 常见问题与解决方法\n\nOutOfMemoryError / 加载时崩溃\n  在仪表盘页面调高内存分配。\n  输入 \"current ram\" 查看当前设置，或输入 \"more ram\" 查看指南。\n\n游戏无法启动 / 黑屏\n  确认游戏安装完整，且未被杀毒软件拦截。\n  尝试停用最近添加的模组。\n  Windows 下可尝试以管理员身份运行。\n\n缺少模组依赖\n  输入 \"mod compatibility\" 查看哪些模组有问题。\n  在模组目录页面安装缺失的依赖。\n\n模组版本不匹配\n  输入 \"mod updates\" 检查新版本。\n  在 \"game version\" 中对比模组要求的游戏版本与你的版本。\n\n权限错误\n  输入 \"permission issues\" 获取针对各平台的帮助。\n\n想看详细错误信息，可输入 \"log summary\" 和 \"log errors\"\n来分析你的 Starsector 日志文件。';

  @override
  String get chatbotCsvExportGuide =>
      'CSV 导出\n\n多个页面都支持导出 CSV 数据：\n  模组管理器——导出模组列表，包含版本、作者等信息。\n  舰船——导出所有舰船/舰体数据\n  武器——导出所有武器数据\n  舰船插件——导出所有舰船插件数据\n\n请在各页面的工具栏或菜单中寻找导出按钮。';

  @override
  String get chatbotSettingsTitle => 'TriOS 设置';

  @override
  String chatbotSettingsGameFolder(Object value) {
    return '游戏目录：  $value';
  }

  @override
  String chatbotSettingsModsFolder(Object value) {
    return '模组目录：  $value';
  }

  @override
  String chatbotSettingsDirectLaunch(Object value) {
    return '直接启动：  $value';
  }

  @override
  String chatbotSettingsDefaultPage(Object value) {
    return '默认页面：  $value';
  }

  @override
  String chatbotSettingsTheme(Object value) {
    return '主题：      $value';
  }

  @override
  String chatbotSettingsGameVersion(Object value) {
    return '游戏版本：  $value';
  }

  @override
  String chatbotSettingsColorfulGrid(Object value) {
    return '彩色网格：  $value';
  }

  @override
  String get chatbotFallback1 => '我不太明白你的意思。试试输入 \"help\"，看看我能回答什么。';

  @override
  String get chatbotFallback2 => '我没听懂。你可以问模组、内存、显存、日志或故障排除相关的问题。';

  @override
  String get chatbotFallback3 => '嗯，这个我答不上来。试试问模组更新、兼容性或设置相关的问题。';

  @override
  String get chatbotFallback4 => '这个我也不确定。输入 \"help\" 可以查看我知道的话题列表。';

  @override
  String get chatbotFallback5 => '我没找到相关的内容。换个说法试试，或者输入 \"help\" 找找灵感。';

  @override
  String get chatbotHelpGuide =>
      '嗨！我是 TriOS 助手，能帮你搞定很多事情——自然地提问就行，我会尽力弄清你的需求。\n\n以下是我了解的一些话题：\n\n• 模组——查找模组、查看哪些已启用、检查更新、兼容性问题、按作者或分类浏览、右键菜单操作、颜色标签和小贴士\n• 游戏信息——Starsector 版本、内容数量（舰船、武器、舰船插件）和头像统计\n• 配置——内存与显存、游戏目录路径、你的设置和模组配置方案\n• 日志分析——总结日志文件或提取错误\n• 故障排除——常见问题、修复方法和文件权限问题\n• 其他——TriOS 版本、游戏是否在运行、导出 CSV 数据以及跳转到各个页面\n\n不需要记确切指令——描述你想找什么就行，剩下的交给我！';

  @override
  String get chatbotFindModsGuide =>
      '寻找新模组\n\nTriOS 内置了模组目录页面！点击侧边栏中的 \"Catalog\"\n即可直接浏览、搜索和安装模组。\n\n模组目录可以：\n  浏览所有可用模组\n  按分类和游戏版本筛选\n  一键下载并安装\n\n你也可以在以下地方找模组：\n  Starsector 论坛 —— fractalsoftworks.com/forum\n  非官方 Starsector Discord —— 有模组频道';

  @override
  String get chatbotFolderPathsTitle => '目录路径';

  @override
  String chatbotFolderPathsGame(Object value) {
    return '游戏：$value';
  }

  @override
  String chatbotFolderPathsMods(Object value) {
    return '模组：$value';
  }

  @override
  String chatbotFolderPathsSaves(Object value) {
    return '存档：$value';
  }

  @override
  String get chatbotSetGameFolderFirst => '请先在设置中配置游戏目录。';

  @override
  String chatbotGameVersionHeader(Object version) {
    return '游戏版本：$version';
  }

  @override
  String chatbotGameVersionCompatibleCount(Object count) {
    return '兼容的模组：$count';
  }

  @override
  String chatbotGameVersionWarningsCount(Object count) {
    return '有警告的模组：$count';
  }

  @override
  String chatbotGameVersionIncompatibleCount(Object count) {
    return '不兼容的模组：$count';
  }

  @override
  String chatbotShipsHeader(Object count) {
    return '舰船：共 $count 艘';
  }

  @override
  String chatbotHullmodsHeader(Object count) {
    return '舰船插件：共 $count 个';
  }

  @override
  String chatbotWeaponsHeader(Object count) {
    return '武器：共 $count 件';
  }

  @override
  String get chatbotLaunchTitle => '启动配置';

  @override
  String chatbotLaunchDirect(Object value) {
    return '直接启动：  $value';
  }

  @override
  String get chatbotLaunchDirectEnabled => '已启用（由 TriOS 作为启动器）';

  @override
  String get chatbotLaunchDirectDisabled => '已停用（直接打开游戏 exe）';

  @override
  String chatbotLaunchCustomExe(Object path) {
    return '自定义 exe 路径：$path';
  }

  @override
  String get chatbotLaunchTip => '提示：在设置中启用直接启动可获得更好的模组兼容性。';

  @override
  String get chatbotLogSummaryTitle => '日志摘要';

  @override
  String chatbotLogSummaryGameVersion(Object value) {
    return '游戏版本：$value';
  }

  @override
  String chatbotLogSummaryOs(Object value) {
    return '操作系统：$value';
  }

  @override
  String chatbotLogSummaryJava(Object value) {
    return 'Java：$value';
  }

  @override
  String chatbotLogSummaryModsLoaded(Object count) {
    return '已加载模组：$count';
  }

  @override
  String chatbotLogSummaryErrors(Object count) {
    return '发现错误：$count';
  }

  @override
  String chatbotLogSummaryFile(Object path) {
    return '日志文件：$path';
  }

  @override
  String chatbotLogSummaryLastUpdated(Object time) {
    return '最后更新：$time';
  }

  @override
  String get chatbotModCountTitle => '模组数量';

  @override
  String chatbotModCountTotal(Object count) {
    return '总计：$count';
  }

  @override
  String chatbotModCountEnabled(Object count) {
    return '已启用：$count';
  }

  @override
  String chatbotModCountDisabled(Object count) {
    return '已停用：$count';
  }

  @override
  String get chatbotModManagerFeaturesGuide =>
      '模组管理器功能\n\n右键点击模组可以看到以下选项：\n  更改活动版本、打开模组目录、打开论坛页面、\n  分配分类、设置颜色标签、强制游戏版本、\n  在舰船/武器/舰船插件查看器中查看、估算显存、\n  静默更新提示、重新下载并重装，以及删除。\n\n选中多个模组后右键点击：\n  批量启用/停用、检查显存、检查更新、\n  设置颜色标签、强制游戏版本，以及删除所选。\n\n颜色标签：\n  从 8 种预设颜色中选择一种，直观地整理模组。\n\n分组依据：\n  使用模组列表上方的“分组依据”下拉框，\n  按各种条件为模组分组。\n\n分类：\n  通过右键菜单将模组分配到分类。\n  一个模组可以同时属于多个分类。';

  @override
  String get chatbotPermissionTitle => '文件权限检查';

  @override
  String chatbotPermissionModsWritable(Object value) {
    return '模组目录可写：$value';
  }

  @override
  String chatbotPermissionGameWritable(Object value) {
    return '游戏目录可写：$value';
  }

  @override
  String get chatbotPermissionWindowsFixes => 'Windows 解决方法：';

  @override
  String get chatbotPermissionWindowsStep1 => '1. 右键点击 TriOS →“以管理员身份运行”';

  @override
  String get chatbotPermissionWindowsStep2 =>
      '2. 将 Starsector 移出 Program Files，以避免 UAC 问题。';

  @override
  String get chatbotPermissionWindowsStep3 => '3. 检查杀毒软件是否拦截了文件访问。';

  @override
  String get chatbotPermissionMacFixes => 'macOS 解决方法：';

  @override
  String get chatbotPermissionMacStep1 =>
      '1. 在系统设置 →隐私与安全性中，授予 TriOS 完全磁盘访问权限。';

  @override
  String get chatbotPermissionMacStep2 => '2. 运行：chmod -R u+rw \"<游戏目录路径>\"';

  @override
  String get chatbotPermissionLinuxFixes => 'Linux 解决方法：';

  @override
  String get chatbotPermissionLinuxStep2 =>
      '2. 检查目录所有者：chown -R \$USER \"<游戏目录路径>\"';

  @override
  String chatbotPortraitsHeader(Object count) {
    return '头像：共 $count 张';
  }

  @override
  String get chatbotRamAllocationGuide =>
      '调整内存分配\n\nTriOS 让这件事变得很简单！前往仪表盘页面，找到\n内存分配设置。你可以拖动滑块，也可以直接输入数值。\n\n常见建议：\n  轻度模组（< 20 个）：2–4 GB\n  中度模组（20–50 个）：4–6 GB\n  重度模组（50+ 个）：6–8 GB\n\n提示：\n  至少给操作系统和其他程序留 4 GB。\n  如果总内存是 16 GB，不要超过 10–12 GB。\n  该设置修改的是 vmparams 中的 -Xmx JVM 参数。\n\n需要更多内存的信号：\n  日志文件中出现 \"OutOfMemoryError\"。\n  游戏在加载时卡死或崩溃。\n  大型战斗时卡顿严重。';

  @override
  String get chatbotRamVsVramGuide =>
      '内存与显存——快速指南\n\n内存（RAM，系统内存）：\n  供 Starsector 的 Java 进程使用，负责游戏逻辑、模组代码和数据。\n  由 JVM 堆大小（-Xmx 参数）控制。\n  内存越大 = 模组越多、战斗规模越大、OutOfMemoryError 越少。\n\n显存（VRAM，视频内存）：\n  位于显卡上。用于贴图、精灵图和着色器。\n  不受 -Xmx 参数或任何 JVM 设置控制。\n  显存越大 = 画面类模组越多、贴图分辨率越高。\n\n要点：\n  日志中出现 \"OutOfMemoryError\" → 你需要更多内存。\n  画面异常或贴图缺失 → 可能是显存问题。\n  Starsector 模组问题大多是内存问题，而不是显存。\n\n在 TriOS 的仪表盘页面即可调整内存分配。';

  @override
  String get chatbotViewerStatsTitle => '游戏内容概览';

  @override
  String chatbotViewerStatsShips(Object value) {
    return '舰船：    $value';
  }

  @override
  String chatbotViewerStatsWeapons(Object value) {
    return '武器：    $value';
  }

  @override
  String chatbotViewerStatsHullmods(Object value) {
    return '舰船插件：$value';
  }

  @override
  String chatbotViewerStatsPortraits(Object value) {
    return '头像：    $value';
  }

  @override
  String get chatbotOpenViewerToLoad => '如果尚未加载，请打开相应的查看器页面来加载数据。';

  @override
  String get chatbotAvailablePages => '侧边栏中的可用页面：';

  @override
  String get chatbotAskAboutSpecificPage => '想了解某个页面的详情，可以具体问问它。';

  @override
  String get chatbotPageDashboard => '仪表盘——主概览页面，包含内存设置和模组摘要。';

  @override
  String get chatbotPageModManager => '模组管理器——启用、停用并管理已安装的模组。';

  @override
  String get chatbotPageModProfiles => '模组配置方案——保存并切换不同的模组组合。';

  @override
  String get chatbotPageVramEstimator => '显存估算器——估算模组的显存占用。';

  @override
  String get chatbotPageChipper => 'Chipper（日志查看器）——分析你的 Starsector 日志文件。';

  @override
  String get chatbotPagePortraits => '头像——浏览和替换角色头像。';

  @override
  String get chatbotPageWeapons => '武器——浏览原版及模组中的所有武器。';

  @override
  String get chatbotPageShips => '舰船——浏览原版及模组中的所有舰船/舰体。';

  @override
  String get chatbotPageHullmods => '舰船插件——浏览所有舰船插件。';

  @override
  String get chatbotPageSettings => '设置——配置 TriOS 的偏好设置和路径。';

  @override
  String get chatbotPageCatalog => '模组目录——浏览并下载在线目录中的模组。';

  @override
  String get chatbotPageTips => '小贴士——查看已安装模组提供的游戏小贴士。';

  @override
  String get chatbotAskWhichMod =>
      '你在找什么模组？试试 \"find <名称>\"、\"do i have <名称>\"，或直接输入模组名。';

  @override
  String chatbotFoundModsMatching(Object count, Object query) {
    return '找到 $count 个与“$query”匹配的模组：';
  }

  @override
  String get chatbotAskSpecificMod => '想看完整详情，请具体询问某个模组。';

  @override
  String chatbotFoundHeader(Object name) {
    return '找到：$name';
  }

  @override
  String chatbotDetailVersion(Object value) {
    return '版本：$value';
  }

  @override
  String chatbotDetailAuthor(Object value) {
    return '作者：$value';
  }

  @override
  String chatbotDetailStatus(Object value) {
    return '状态：$value';
  }

  @override
  String chatbotDetailType(Object value) {
    return '类型：$value';
  }

  @override
  String chatbotDetailGameVersion(Object value) {
    return '游戏版本：$value';
  }

  @override
  String chatbotDetailDescription(Object value) {
    return '描述：$value';
  }

  @override
  String get chatbotDetailDependencies => '依赖：';

  @override
  String get chatbotDepNotInstalled => '[未安装]';

  @override
  String get chatbotDepDisabled => '[已停用]';

  @override
  String chatbotDetailInstalledVariants(Object count) {
    return '已安装的变体：$count';
  }

  @override
  String chatbotUpdateAvailable(Object local, Object remote) {
    return '有可用更新：$remote（当前为 $local）';
  }

  @override
  String get chatbotUpdateNewerVersion => '更新版本';

  @override
  String chatbotIssueGameVersionIncompatible(Object current, Object needed) {
    return '游戏版本不兼容（需要 $needed，当前游戏为 $current）';
  }

  @override
  String chatbotIssueGameVersionWarning(Object current, Object target) {
    return '游戏版本可能不兼容（模组目标为 $target，当前游戏为 $current）';
  }

  @override
  String chatbotIssueMissingDependency(Object name) {
    return '缺少依赖：$name';
  }

  @override
  String chatbotIssueDisabledDependency(Object name) {
    return '依赖已停用：$name';
  }

  @override
  String chatbotIssueVersionMismatch(Object name) {
    return '版本不匹配：$name';
  }

  @override
  String chatbotIssueIncompatibleVersion(Object name) {
    return '版本不兼容：$name';
  }

  @override
  String get chatbotIssuesHeader => '问题：';

  @override
  String chatbotConflictGameVersionIncompatible(Object current, Object needed) {
    return '游戏版本不兼容（需要 $needed，当前游戏为 $current）';
  }

  @override
  String get chatbotConflictGameVersionWarning => '游戏版本警告';

  @override
  String chatbotConflictMissingDep(Object name) {
    return '缺少依赖：$name';
  }

  @override
  String chatbotConflictDisabledDep(Object name) {
    return '依赖已停用：$name';
  }

  @override
  String chatbotConflictVersionMismatch(Object name) {
    return '版本不匹配：$name';
  }

  @override
  String chatbotConflictIncompatibleVersion(Object name) {
    return '版本不兼容：$name';
  }

  @override
  String chatbotModsWithIssuesTitle(Object count) {
    return '有问题的模组（$count）';
  }

  @override
  String chatbotCompatGameVersionIncompatible(Object current, Object required) {
    return '游戏版本：不兼容（需要 $required，当前游戏为 $current）';
  }

  @override
  String chatbotCompatGameVersionWarning(Object current, Object target) {
    return '游戏版本：可能不兼容（模组目标为 $target，当前游戏为 $current）';
  }

  @override
  String chatbotCompatTitle(Object count) {
    return '兼容性问题（影响 $count 个模组）';
  }

  @override
  String chatbotModsHaveChangelogs(Object count) {
    return '$count 个模组有更新日志：';
  }

  @override
  String get chatbotAskChangelogFor => '输入 \"changelog for <模组名>\" 可查看指定的更新日志。';

  @override
  String chatbotNoChangelogFor(Object name) {
    return '“$name”没有可用的更新日志。';
  }

  @override
  String get chatbotTruncatedSuffix => '…\n（已截断）';

  @override
  String chatbotModsByAuthor(Object author, Object count) {
    return '$author 的模组（$count）';
  }

  @override
  String get chatbotModAuthorsTitle => '模组作者';

  @override
  String chatbotAuthorModCount(Object author, Object count) {
    return '$author：$count 个模组';
  }

  @override
  String chatbotEnabledModsTitle(Object count) {
    return '已启用的模组（$count）';
  }

  @override
  String chatbotDisabledModsTitle(Object count) {
    return '已停用的模组（$count）';
  }

  @override
  String chatbotInstalledModsTitle(Object count) {
    return '已安装的模组（$count）';
  }

  @override
  String chatbotTcModsTitle(Object count) {
    return '总转换模组（$count）';
  }

  @override
  String chatbotUtilityModsTitle(Object count) {
    return '工具/库模组（$count）';
  }

  @override
  String chatbotActiveProfileHeader(Object name) {
    return '当前配置方案：$name';
  }

  @override
  String chatbotProfileModsCount(Object count) {
    return '模组：$count';
  }

  @override
  String chatbotProfileCreated(Object date) {
    return '创建时间：$date';
  }

  @override
  String chatbotProfileModified(Object date) {
    return '修改时间：$date';
  }

  @override
  String chatbotModProfilesTitle(Object count) {
    return '模组配置方案（$count）';
  }

  @override
  String chatbotProfileEntry(Object count, Object marker, Object name) {
    return '$name（$count 个模组）$marker';
  }

  @override
  String get chatbotProfileActiveMarker => '← 当前使用';

  @override
  String chatbotProfileMatchesCurrent(Object name) {
    return '配置方案“$name”与你当前的模组状态完全一致。';
  }

  @override
  String chatbotProfileVsCurrent(Object name) {
    return '配置方案“$name”与当前模组对比';
  }

  @override
  String get chatbotInProfileNotEnabled => '在方案中但当前未启用：';

  @override
  String get chatbotEnabledNotInProfile => '当前已启用但不在方案中：';

  @override
  String chatbotModCategoriesTitle(Object count) {
    return '模组分类（$count）';
  }

  @override
  String chatbotCategoryModCount(Object count, Object name) {
    return '$name（$count 个模组）';
  }

  @override
  String get chatbotNoModsInCategories => '还没有模组被分配到任何分类。';

  @override
  String chatbotModUpdateLine(Object local, Object name, Object remote) {
    return '$name：v$local -> v$remote';
  }

  @override
  String chatbotModUpdateAvailableLine(Object name) {
    return '$name：有可用更新';
  }

  @override
  String chatbotUpdatesAvailableTitle(Object count) {
    return '可用模组更新（$count）';
  }

  @override
  String get chatbotMostRequiredTitle => '被依赖最多的模组';

  @override
  String chatbotDependencyEntry(Object count, Object name, Object status) {
    return '$name：被 $count 个模组依赖$status';
  }

  @override
  String chatbotRecentChangesTitle(Object count) {
    return '最近的模组变更（最近 $count 条）';
  }

  @override
  String chatbotAuditEntry(Object action, Object name, Object time) {
    return '[$action] $name（$time）';
  }

  @override
  String chatbotAuditReason(Object reason) {
    return '原因：$reason';
  }

  @override
  String get chatbotTipsTitle => '来自你模组的小贴士';

  @override
  String get chatbotTipNoText => '（无内容）';

  @override
  String chatbotTipSource(Object source) {
    return '—— $source';
  }

  @override
  String chatbotMoreTips(Object count) {
    return '还有 $count 条小贴士。再问一次就能看到不同的内容！';
  }

  @override
  String chatbotTopVramModsTitle(Object count) {
    return '显存占用最高的 $count 个模组';
  }

  @override
  String chatbotVramModEntry(Object name, Object size, Object status) {
    return '[$status] $name — 约 $size MB';
  }

  @override
  String get chatbotVramEstimateTitle => '显存占用估算';

  @override
  String chatbotVramEnabledMods(Object count, Object size) {
    return '已启用模组（$count）：约 $size';
  }

  @override
  String chatbotVramAllMods(Object count, Object size) {
    return '全部模组（$count）：约 $size';
  }

  @override
  String chatbotVramLastScanned(Object time) {
    return '上次扫描：$time';
  }

  @override
  String get chatbotVramNote =>
      '注意：这是基于贴图大小的估算。\n输入 \"high vram mods\" 可查看占用最高的模组。';

  @override
  String get chatbotRamAllocationTitle => '内存分配';

  @override
  String chatbotRamCurrent(Object ram) {
    return '当前内存：$ram MB';
  }

  @override
  String chatbotRamManagedFiles(Object count) {
    return '托管的 vmparams 文件（$count）：';
  }

  @override
  String chatbotRamFileEntry(Object path, Object ram) {
    return '- $path$ram';
  }

  @override
  String get chatbotRamMultipleFilesWarning => '警告：多个 vmparams 文件的内存大小不一致。';

  @override
  String get chatbotRecentlyAddedTitle => '最近添加的模组';

  @override
  String chatbotRecentlyAddedEntry(Object age, Object name, Object version) {
    return '$name $version —— $age添加';
  }

  @override
  String chatbotAgoYear(Object count) {
    return '$count 年前';
  }

  @override
  String chatbotAgoYears(Object count) {
    return '$count 年前';
  }

  @override
  String chatbotAgoMonth(Object count) {
    return '$count 个月前';
  }

  @override
  String chatbotAgoMonths(Object count) {
    return '$count 个月前';
  }

  @override
  String chatbotAgoDay(Object count) {
    return '$count 天前';
  }

  @override
  String chatbotAgoDays(Object count) {
    return '$count 天前';
  }

  @override
  String chatbotAgoHour(Object count) {
    return '$count 小时前';
  }

  @override
  String chatbotAgoHours(Object count) {
    return '$count 小时前';
  }

  @override
  String get chatbotAgoJustNow => '刚刚';

  @override
  String chatbotLogErrorsFound(Object count) {
    return '在日志中找到 $count 行错误。';
  }

  @override
  String chatbotLogErrorLine(Object line, Object text) {
    return '第 $line 行：$text';
  }

  @override
  String chatbotLogMoreErrors(Object count) {
    return '…以及另外 $count 条。打开日志查看器（Chipper）可查看完整列表。';
  }

  @override
  String chatbotLogModsFound(Object count) {
    return '在日志中找到 $count 个模组：';
  }

  @override
  String get chatbotLogModsApproximate => '（近似值——由 CSV 加载行解析得出）';

  @override
  String chatbotModlistReviewHeader(Object count) {
    return '模组列表点评（已启用 $count 个模组）';
  }

  @override
  String chatbotAndNMoreOpinions(Object count) {
    return '…以及另外 $count 个我有话要说的模组';
  }

  @override
  String chatbotUnknownModLine(Object name) {
    return '$name —— 没听说过。那就祝你好运了。';
  }

  @override
  String chatbotPlusUnrecognized(Object count) {
    return '…外加 $count 个我不认识的模组。';
  }

  @override
  String chatbotComboGraphicsLib(Object count) {
    return 'GraphicsLib 加上 $count 个阵营模组？';
  }

  @override
  String chatbotComboNexFactions(Object count) {
    return 'Nex 加 $count 个阵营。加载时间够长，记得带本书。';
  }

  @override
  String get chatbotComboNexerelinExpected =>
      '这么说吧，阵营开到这个数量，大多数人都会装 Nexerelin 的。';

  @override
  String get chatbotComboNoNex => '不装 Nex？';

  @override
  String get chatbotComboConsoleNex => '控制台命令 + Nexerelin。“完全合法合理的征服流程。”';

  @override
  String get chatbotComboLibraryOnly => '库收集得不错。正经模组呢？';

  @override
  String get chatbotVerdict10 => '到这个地步，你玩的已经不是 Starsector 了。';

  @override
  String get chatbotVerdict9 => '相当扎实的模组列表。你是懂行的。';

  @override
  String get chatbotVerdict8 => '品味不错。你的电脑可能有意见，但我没有。';

  @override
  String get chatbotVerdict7 => '挺不错的。有几个迷惑选择，但总体不赖。';

  @override
  String get chatbotVerdict6 => '还行。可以更好，也可以惨得多。';

  @override
  String get chatbotVerdict5 => '平庸。就是那种毫无个性的平庸。加点阵营模组什么的吧。';

  @override
  String get chatbotVerdict4 => '这份模组列表还得练。连新手玩家我都见过更好的。';

  @override
  String get chatbotVerdict3 => '你认真的吗？这基本等于没装模组。';

  @override
  String get chatbotVerdict2 => '有点惨。至少装个 Nexerelin 吧。';

  @override
  String get chatbotVerdict1 => '就一个模组？真的吗？这不叫模组列表，这叫个人建议。';

  @override
  String chatbotVerdictLine(Object score, Object verdict) {
    return '点评：$score/10 —— $verdict';
  }

  @override
  String get chatbotOpinionLazyLib => 'LazyLib —— 没有它你什么都跑不起来。欢迎入坑模组。';

  @override
  String get chatbotOpinionMagicLib => 'MagicLib —— 玩模组的另一笔“过路费”。';

  @override
  String get chatbotOpinionGraphicsLib => 'GraphicsLib —— 希望你喜欢显卡飙到太阳表面温度的感觉。';

  @override
  String get chatbotOpinionLunaLib => 'LunaLib —— 又一个库。到这份上，你的模组文件夹有一半都是库了。';

  @override
  String get chatbotOpinionNexerelin =>
      'Nexerelin —— 哦，你想玩 4X 大战略游戏是吧？跟空闲时间说再见吧。';

  @override
  String get chatbotOpinionIndEvo =>
      'Industrial Evolution —— 觉得原版殖民地不够像电子表格模拟器时的选择。';

  @override
  String get chatbotOpinionStarshipLegends =>
      'Starship Legends —— 你的舰船现在有感情了。太好了，感情包袱又多了。';

  @override
  String get chatbotOpinionSecondInCommand =>
      'Second-in-Command —— 太好了，出问题时终于有人可以背锅了。';

  @override
  String get chatbotOpinionOfficerExtension =>
      'Officer Extension —— 毕竟原版的军官上限显然是对你的人身侮辱。';

  @override
  String get chatbotOpinionKnightsOfLudd =>
      'Knights of Ludd —— 卢德信徒焕然一新了，讲道理他们不配。';

  @override
  String get chatbotOpinionRealisticCombat =>
      'Realistic Combat —— 献给觉得 Starsector 太仁慈的玩家。';

  @override
  String get chatbotOpinionRaot =>
      'Random Assortment of Things —— 模组界的盲盒。不知道为什么，反正它就是行。';

  @override
  String get chatbotOpinionDiableAvionics =>
      'Diable Avionics —— 太空里的动漫机甲。你为什么装它，大家心里都有数。';

  @override
  String get chatbotOpinionBlackrock =>
      'Blackrock Drive Yards —— 献给觉得霸主压迫得还不够狠的玩家。';

  @override
  String get chatbotOpinionScy => 'Scy Nation —— 就是得快。直到你被逮住然后秒没。';

  @override
  String get chatbotOpinionShadowyards => 'Shadowyards —— 献给把隐身当个性标签的玩家的潜行阵营。';

  @override
  String get chatbotOpinionTahlan => 'Tahlan Shipworks —— 不骗你，大贵族美学确实带感。';

  @override
  String get chatbotOpinionArkgneisis =>
      'Legacy of Arkgneisis —— 靠着一股狠劲和布胶带撑起来的会飞的垃圾桶。';

  @override
  String get chatbotOpinionOra =>
      'Outer Rim Alliance —— 只玩侧舷齐射。献给觉得迂回是懦夫行为的玩家。';

  @override
  String get chatbotOpinionAlRuk =>
      'Al-Ruk Ascendancy —— 要是做个阵营，然后把所有数值都拉满会怎样？';

  @override
  String get chatbotOpinionMayorate =>
      'Mayorate —— 企业反乌托邦阵营。也就是普通版 Starsector，只是更坦诚了一点。';

  @override
  String get chatbotOpinionKadur => 'Kadur Remnant —— 太空维京人。介绍完毕。还真挺香。';

  @override
  String get chatbotOpinionDassaultMikoyan =>
      'Dassault-Mikoyan —— 舰载机海：就是这个阵营。你的帧率哭了。';

  @override
  String get chatbotOpinionPersean =>
      'Persean Chronicles —— 真有人给这游戏写了背景故事。而且量还不少。';

  @override
  String get chatbotOpinionVayra =>
      'Vayra\'s Sector —— 更多阵营、更多悬赏、什么都要更多。数量本身就是一种质量。';

  @override
  String get chatbotOpinionTorchships =>
      'Torchships —— 我的 Starsector 里有硬科幻？比你想象的更常见哦。';

  @override
  String get chatbotOpinionRoider => 'Roider Union —— 拿着焊枪的太空乡巴佬。意外地讨人喜欢。';

  @override
  String get chatbotOpinionApexDesign =>
      'Apex Design Collective —— 这些舰船看起来像谁的毕业设计，而且这是夸奖。';

  @override
  String get chatbotOpinionEis => 'Enigma Industries —— 又一个阵营模组。行吧。有何不可。扔进堆里。';

  @override
  String get chatbotOpinionSwp => 'Ship/Weapon Pack —— 基本就是原版加强版，而且是真的好用。';

  @override
  String get chatbotOpinionDmods => 'Missing Ships —— 填补你都不知道存在的空白。选得不错。';

  @override
  String get chatbotOpinionArsenalExpansion =>
      'Arsenal Expansion —— 更多枪炮，更多舰船，稳赚不亏。真是这样吗。';

  @override
  String get chatbotOpinionArmaa =>
      'Arma Armatura —— Starsector 里的巨型机器人。高达粉找到组织了。';

  @override
  String get chatbotOpinionUnknownSkies =>
      'Unknown Skies —— 30 颗可殖民的新行星。就好像你还缺地盘可糟蹋似的。';

  @override
  String get chatbotOpinionMorePortraits =>
      'More Character Portraits —— 毕竟盯着同样 20 张脸很快会腻。';

  @override
  String get chatbotOpinionConsoleCommands =>
      'Console Commands —— “我只是拿来测试的”，行，你说是就是。';

  @override
  String get chatbotOpinionAutosave => 'Autosave —— 原版居然没这功能，简直是战争罪行。';

  @override
  String get chatbotOpinionCommonRadar => 'Common Radar —— 没有这玩意儿你之前是怎么玩的？';

  @override
  String get chatbotOpinionVersionChecker =>
      'Version Checker —— 负责任的模组玩法。无聊但必要。';

  @override
  String get chatbotOpinionMoreShipNames =>
      'More Ship Names —— 7500 个新舰名，却依然没有 HMS Boaty McBoatface 号。';

  @override
  String get chatbotOpinionSpeedUp => 'SpeedUp —— 毕竟原版的游戏速度是留给耐心无限的人的。';

  @override
  String get chatbotOpinionTransponderOff =>
      'Transponder Off —— 关掉应答机暗中行事，不受任何惩罚。活出了海盗的梦想。';

  @override
  String get chatbotOpinionDetailedCombatResults =>
      'Detailed Combat Results —— 当你急需知道到底是哪艘护卫舰坑了你的时候。';

  @override
  String get chatbotOpinionLeadingPip =>
      'Leading Pip —— 献给不会预判弹道的玩家的瞄准辅助。不丢人。好吧，也许有一点点。';

  @override
  String get chatbotOpinionWarDashboard =>
      'War Dashboard —— 给战争模拟器配的电子表格模拟器。完美闭环了属于是。';

  @override
  String get chatbotOpinionStarWars => 'Star Wars mod —— 毕竟没有哪款太空游戏能逃过星球大战的魔掌。';

  @override
  String get chatbotOpinionVramVore => 'VRAM Vore —— 它的名字就叫显存吞噬者。你装它的时候就知道后果了。';

  @override
  String get catalogSortName => '名称';

  @override
  String get catalogSortNewest => '最新';

  @override
  String get catalogSortGameVersion => '游戏版本';

  @override
  String get catalogSortPopular => '热门';

  @override
  String get catalogSortMostDiscussed => '讨论最热';

  @override
  String get catalogSortRecentlyActive => '最近活跃';

  @override
  String userThemeFileUnreadable(Object fileName) {
    return '无法读取 $fileName。它不是有效的 JSON。';
  }

  @override
  String userThemeNoThemesSection(Object fileName) {
    return '$fileName 中没有“themes”部分。';
  }

  @override
  String userThemeMissingField(Object fields, Object key) {
    return '无法加载“$key”：缺少 $fields。';
  }

  @override
  String userThemeMissingFields(Object fields, Object key) {
    return '无法加载“$key”：缺少 $fields。';
  }

  @override
  String userThemeLoadError(Object error, Object key) {
    return '无法加载“$key”：$error';
  }

  @override
  String get themeFontSystem => '系统';

  @override
  String get themeGlitterSidebar => '侧边栏';

  @override
  String get themeGlitterToolbar => '工具栏';

  @override
  String get themeGlitterTooltips => '提示气泡';

  @override
  String get themeBackgroundMotes => '浮尘';

  @override
  String get themeBackgroundStarfield => '星空';

  @override
  String get themeBackgroundNebula => '星云';

  @override
  String get themeBackgroundConstellation => '星座';

  @override
  String get themeBackgroundEmbers => '余烬';

  @override
  String get themeBackgroundAurora => '极光';

  @override
  String get themeBackgroundRain => '雨';

  @override
  String get themeBackgroundRadar => '雷达';

  @override
  String get themeBackgroundCircuitry => '电路';

  @override
  String get themePalette => '调色板';

  @override
  String get sentryFeedbackNameLabel => '用户名（选填）';

  @override
  String get sentryFeedbackEmailLabel => '邮箱（真的不必填！）';

  @override
  String get sentryFeedbackMessageLabel => '问题描述';

  @override
  String get sentryFeedbackRequiredLabel => '（必填）';

  @override
  String sentryFeedbackMessagePlaceholder(Object appName) {
    return '请描述你在使用 $appName 时遇到的问题。\n\n$appName 与 Fractal Softworks 无隶属关系，无法协助解决游戏本体、付款、许可证密钥或模组相关的问题。';
  }

  @override
  String get onboardingSetup => '初始设置';

  @override
  String get onboardingWhereIsStarsectorLocated => '1. Starsector 安装在哪里？';

  @override
  String get onboardingGameLocation => '游戏位置';

  @override
  String get onboardingSelectYourGameDirectory => '选择你的游戏目录';

  @override
  String get onboardingGameNotFound => '未找到游戏';

  @override
  String get onboardingHowDoYouWant => '2. 你希望如何处理模组更新？';

  @override
  String get onboardingThisWillOnlyAffect => '这只会在你更新模组时产生影响。';

  @override
  String get onboardingNoModsWillBe => '不会有模组立即受到影响。';

  @override
  String get onboardingReplacePreviousVersion => '安装或更新模组时会替换其旧版本。';

  @override
  String get onboardingTriosWillNeverAutomatically => 'TriOS 永远不会自动删除模组版本。';

  @override
  String onboardingRemoveAllButLastN(Object count) {
    return '安装或更新模组时会删除其他版本，仅保留最新的 $count 个版本。';
  }

  @override
  String get onboardingBugReporting => '3：错误报告';

  @override
  String onboardingBugReportingBody(Object appName) {
    return '$appName 可以发送崩溃/错误报告，帮助我查找并修复问题（这真的有用！）。\n报告示例：https://i.imgur.com/k9E6zxO.png。\n\n绝不会发送任何可识别身份或个人的信息。\n\n会发送：应用版本、模组列表、基本电脑信息（屏幕分辨率、操作系统、内存等）、随机生成的用户 ID 以及崩溃详情。\n不会发送：IP 地址、语言、地区、邮编、电脑名称、电脑用户名、其他应用的任何信息等。';
  }

  @override
  String get onboardingOneClickModInstall => '4：一键安装模组';

  @override
  String onboardingOneClickBody(Object appName) {
    return '$appName 可以处理“Install with TriOS”链接，让你在网页上一键安装模组。';
  }

  @override
  String get onboardingYouWillBeAsked => '下载任何模组之前都会要求你确认。';

  @override
  String get onboardingYouCanAlwaysChange => '你随时可以稍后在设置页面更改这些选项';

  @override
  String get onboardingFinish => '完成';

  @override
  String get onboardingNext => '下一步';

  @override
  String get launch_with_settingsSkipLauncher => '跳过启动器';

  @override
  String get launch_with_settingsExperimentalTooltip =>
      '实验性功能\n如果在游戏中遇到异常问题，请停用此选项。\n可能的问题包括：舰船不可见、战斗画面放大、无 Windows 标题栏等，或许还有其他问题。';

  @override
  String get launch_with_settingsNoGameExe => '未找到游戏 exe';

  @override
  String get launch_with_settingsStarsectorVersionUnknown => 'Starsector 版本未知';

  @override
  String get launch_with_settingsNoModsFolder => '未找到 mods 文件夹！';

  @override
  String get launch_with_settingsWidth => '宽度';

  @override
  String get launch_with_settingsHeight => '高度';

  @override
  String get launch_with_settingsUseVanillaLauncherSettings =>
      '改用非 TriOS 启动器的设置';

  @override
  String get launch_with_settingsNote => '注意：这些设置与普通启动器的设置相互独立。';

  @override
  String get launch_with_settingsDisableSkipLauncherWarning =>
      '如果在游戏中遇到异常问题，请停用“跳过启动器”。';

  @override
  String get launch_with_settingsPossibleIssues =>
      '可能的问题包括：舰船不可见、战斗画面放大、无 Windows 标题栏等，或许还有其他问题。';

  @override
  String get game_performanceRam => '内存';

  @override
  String game_performanceVmparamsFilesTooltip(Object files) {
    return 'vmparams 文件：\n$files';
  }

  @override
  String get game_performanceNoVmparamsFileFound => '未找到 vmparams 文件。';

  @override
  String get game_performanceNotAllSameRamWarning =>
      '<b>警告</b>：并非所有 vmparams 文件\n都设置了相同的内存大小。\n请在下方选择一个内存选项，\n将全部文件设为相同的值。';

  @override
  String game_performanceAssignedRam(Object fileCount, Object ramAmount) {
    return '已分配：<b>$ramAmount MB</b>（<b>$fileCount</b> 个文件）';
  }

  @override
  String get game_performanceMoreRamNote =>
      '内存并非越多越好。\n6 或 8 GB 对几乎所有游戏来说都足够了。\n\n可以使用 Console Commands 模组在控制台左上角查看内存占用。';

  @override
  String get game_performanceGameSettings => '游戏设置';

  @override
  String get game_performanceOpenConfigJsonTooltip => '用默认文本编辑器打开 config.json';

  @override
  String get game_performanceFpsLimit => 'FPS 上限';

  @override
  String get game_performanceRecommendedMaxFps => '建议：将最大 FPS 设为显示器的刷新率或更低。';

  @override
  String get game_performanceUnableToReadFps => '无法从 settings.json 读取 FPS 上限';

  @override
  String get game_performanceUnableToReadVsync => '无法从 settings.json 读取垂直同步设置';

  @override
  String get game_performanceVsyncTooltip => '垂直同步可以减少画面撕裂，但会带来轻微的输入延迟。';

  @override
  String dashboardRamSubtitle(Object ram) {
    return '$ram MB';
  }

  @override
  String get dashboardUnknownRam => '（未知内存）';

  @override
  String get dashboardErrorsTooltip =>
      '出现错误是正常现象。只要 Starsector 运行正常就可以忽略它们。\n\n如果游戏崩溃了，请查看日志末尾一堆以“at”开头的行。其中一行应该会提到问题模组的 id、名称或前缀。\n例如，“at data.scripts.campaign.II_IGFleetInflater.inflate(II_IGFleetInflater.java:59)”中的“II_”就代表 Interstellar Imperium。\n\n请确保你的模组都是最新版本，并向模组作者报告 bug！';

  @override
  String get dashboardStarsectorLog => 'Starsector 日志';

  @override
  String dashboardLogLastUpdated(Object logName, Object time) {
    return '$logName •   上次更新：$time';
  }

  @override
  String get dashboardLastUpdatedUnknown => '未知';

  @override
  String get dashboardErrorsAreNormalCrash => '出现错误是正常现象。如果游戏崩溃，请在这里查看致命错误。';

  @override
  String get mod_list_basicMods => '模组';

  @override
  String mod_list_basicEnabledCount(Object enabled, Object total) {
    return '已启用 $enabled / $total';
  }

  @override
  String get mod_list_basicCopyModListTooltip => '复制模组列表到剪贴板\n\n右键点击可包含未启用的模组';

  @override
  String get mod_list_basicShowingEnabledModsOnly => '仅显示已启用的模组';

  @override
  String get mod_list_basicShowingDisabledModsOnly => '仅显示未启用的模组';

  @override
  String get mod_list_basicShowingAllMods => '显示全部模组';

  @override
  String get mod_list_basicEnabledOnly => '仅已启用';

  @override
  String get mod_list_basicDisabledOnly => '仅未启用';

  @override
  String get mod_list_basicShowAll => '显示全部';

  @override
  String mod_list_basicSortByLabel(Object label) {
    return '按$label排序';
  }

  @override
  String get mod_list_basicSortLoadOrder => '加载顺序';

  @override
  String get mod_list_basicSortName => '名称';

  @override
  String get mod_list_basicSortAuthor => '作者';

  @override
  String get mod_list_basicSortVersion => '版本';

  @override
  String get mod_list_basicSortVram => '显存占用';

  @override
  String get mod_list_basicSortGameVersion => '游戏版本';

  @override
  String get mod_list_basicSortEnabled => '启用状态';

  @override
  String mod_list_basicDownloadUpdateTooltip(Object count) {
    return '下载 $count 个更新';
  }

  @override
  String mod_list_basicDownloadAllUpdatesTooltip(Object count) {
    return '下载全部 $count 个更新';
  }

  @override
  String get mod_list_basicUpdateAll => '全部更新';

  @override
  String get mod_list_basicAllMods => '全部模组';

  @override
  String get mod_list_basicFilterHint => '筛选...';

  @override
  String get mod_list_basicShowingAllUpdates => '显示全部更新';

  @override
  String get mod_list_basicShowingUnmutedUpdates => '显示未静音的更新';

  @override
  String get mod_list_basicUpdatesHidden => '更新已隐藏';

  @override
  String mod_list_basicAllUpdates(Object count) {
    return '全部更新（$count）';
  }

  @override
  String mod_list_basicUpdatesHeader(Object count) {
    return '更新（$count';
  }

  @override
  String mod_list_basicPlusMuted(Object count) {
    return '+ $count';
  }

  @override
  String mod_list_basicHiddenUpdates(Object count) {
    return '$count 条已隐藏的更新';
  }

  @override
  String mod_list_basicPlusMutedParens(Object count) {
    return '（+ $count';
  }

  @override
  String mod_list_basicDownloadUpdatesForMods(Object count) {
    return '下载 $count 个模组的更新？';
  }

  @override
  String get mod_list_basicSwapOnUpdateTooltip => '勾选后，更新已启用的模组时会自动切换到新版本。';

  @override
  String get mod_list_basicColorModListRowsTooltip => '使用每个模组的图标配色为模组列表行着色。';

  @override
  String get modListLoadOrderExplanation =>
      'Starsector 按模组名称的顺序加载模组。\n排序时空格排在最前，然后是大写字母，最后是小写字母（“  x”、“Z”、“a”），\n而不是更直观的排序方式（“a”、“  x”、“Z”）。\n\n后加载的模组（通常）会覆盖先前加载模组的值。';

  @override
  String get mod_list_basic_entryRightClickForMore => '右键点击查看更多。';

  @override
  String mod_list_basic_entryMissingDependencies(
    Object dependencies,
    Object modName,
  ) {
    return '“$modName”缺少“$dependencies”。';
  }

  @override
  String get versionCheckDownloadInstallUpdate => '下载并安装更新';

  @override
  String get versionCheckClickToOpenDownloadPage => '点击打开下载页面';

  @override
  String get versionCheckRequiresManualDownload => '此模组需要手动下载。';

  @override
  String get versionCheckRequiresManualDownloadClick => '此模组需要手动下载。\n点击打开下载页面。';

  @override
  String versionCheckSource(Object url) {
    return '来源：$url';
  }

  @override
  String get versionCheckRightClickToExpand => '右键点击展开此提示。';

  @override
  String versionCheckInfoFromAuthor(Object appName) {
    return '更新信息由模组作者提供，而非 $appName。';
  }

  @override
  String get versionCheckUpToDate => '已是最新版本。';

  @override
  String versionCheckCurrentVersion(Object version) {
    return '当前版本：$version';
  }

  @override
  String versionCheckRemoteVersion(Object version) {
    return '远程版本：$version';
  }

  @override
  String versionCheckerUrl(Object url) {
    return 'Version Checker 链接：\n$url';
  }

  @override
  String get versionCheckErrorCheckingForUpdates => '检查更新时出错。';

  @override
  String get versionCheckErrorUsuallyCaused => '这通常由模组作者或网络错误导致。请前往模组页面手动查找更新。';

  @override
  String get versionCheckReportBug =>
      '如果此模组的游戏内 Version Checker 工作正常，请报告一个 TriOS bug。';

  @override
  String get versionCheckMessage => '消息';

  @override
  String get versionCheckMayNotSupportVersionChecker =>
      '此模组可能不支持 Version Checker。\n请前往模组页面手动查找更新。';

  @override
  String get modSummaryNoName => '（无名称）';

  @override
  String modSummaryIdVersion(Object id, Object version) {
    return '$id • $version';
  }

  @override
  String modSummaryNewVersion(Object version) {
    return '新版本：      $version';
  }

  @override
  String get modSummaryDescription => '描述';

  @override
  String get modSummaryTipAddIcon =>
      '提示：添加 LunaSettings 图标，或在模组文件夹中放入 icon.png 文件即可显示图标。';

  @override
  String get mod_dependenciesRequiredGameVersion => '要求的游戏版本';

  @override
  String get mod_dependenciesOriginalGameVersion => '原始游戏版本';

  @override
  String get mod_dependenciesGameVersion => '游戏版本';

  @override
  String get mod_dependenciesErrorThisModRequires => '错误：此模组要求其他游戏版本。';

  @override
  String get mod_dependenciesWarningThisModRequires =>
      '警告：此模组要求的是你已安装的某个模组的不同版本，但也许能与当前版本一同运行。';

  @override
  String mod_dependenciesFound(Object version) {
    return '（找到 $version）';
  }

  @override
  String get mod_dependenciesMissing => '（缺失）';

  @override
  String mod_dependenciesDisabled(Object version) {
    return '（已停用：$version）';
  }

  @override
  String mod_dependenciesWrongVersion(Object version) {
    return '（版本不符：$version）';
  }

  @override
  String mod_dependenciesFoundWarning(Object version) {
    return '（找到：$version）';
  }

  @override
  String get commonNone => '（无）';

  @override
  String get commonUnknown => '未知';

  @override
  String version_check_iconUpdateIsMuted(Object version) {
    return '已静音 $version 版本的更新通知。有下一个新版本时仍会通知你。';
  }

  @override
  String get version_check_iconUpdatesMuted => '更新已静音';

  @override
  String get merge_mod_sourcesMod => '模组';

  @override
  String get merge_mod_sourcesStats => '属性';

  @override
  String merge_mod_sourcesIgnoredCount(Object count) {
    return '（忽略 $count 个）';
  }

  @override
  String merge_mod_sourcesOtherModCount(Object count) {
    return '（另有 $count 个模组）';
  }

  @override
  String merge_mod_sourcesOtherModsCount(Object count) {
    return '（另有 $count 个模组）';
  }

  @override
  String merge_mod_sourcesStatsTooltip(Object ignored, Object winner) {
    return '仅使用 $winner 的属性数据。\n被覆盖（无效果）：$ignored';
  }

  @override
  String merge_mod_sourcesFileTooltipHeader(Object fileLabel) {
    return '$fileLabel：每个模组修改了什么';
  }

  @override
  String get merge_mod_sourcesUsedForMost => '（用于大多数数值）';

  @override
  String get merge_mod_sourcesBase => '（基础）';

  @override
  String get filterIncluded => '已包含';

  @override
  String get filterExcluded => '已排除';

  @override
  String filterIncludedValuesTooltip(Object values) {
    return '已包含：\n$values';
  }

  @override
  String filterExcludedValuesTooltip(Object values) {
    return '已排除：\n$values';
  }

  @override
  String viewerToolbarTotalCount(Object count, Object entityName) {
    return '$entityName $count';
  }

  @override
  String get file_cardCalculating => '计算中...';

  @override
  String get mod_download_statusStarting => '正在启动…';

  @override
  String get mod_download_statusDownloading => '正在下载…';

  @override
  String get mod_download_statusInstalling => '正在安装…';

  @override
  String get mod_type_iconTotalConversionModsShould =>
      '除非明确说明兼容，否则全面转换（Total Conversion）模组不应与其他模组一起运行。';

  @override
  String get mod_type_iconThisModDeclaresThat => '此模组声明可以随时加入存档或从存档中移除。';

  @override
  String get mod_data_fileUsedForMostValues => '用于大多数数值';

  @override
  String get mod_data_fileAlsoApplied => '同时生效';

  @override
  String get mod_data_fileInUse => '使用中';

  @override
  String get mod_data_fileOverridden => '已被覆盖';

  @override
  String get smartSearchSyntaxExclude => '-field:value（排除）';

  @override
  String smartSearchSyntaxNumericOperators(Object description) {
    return '$description；支持数值比较运算符';
  }

  @override
  String get profileModProfilesDescription =>
      '模组配置可以让你在不同模组（包括特定版本）之间快速切换。\n启用某个配置后，你对模组所做的更改也会同步更新到该配置。\n\n\n你还可以从存档生成配置。';

  @override
  String get profileSaveGames => '存档';

  @override
  String get profileNoValidProfileOnClipboard => '剪贴板中没有找到有效的模组配置。';

  @override
  String get profileExportStep1 => '1. 导出配置：点击';

  @override
  String get profilePasteStep2 => '2. 将文本粘贴发送给其他 TriOS 用户。';

  @override
  String get profileImportToUse => '点击 Import Profile 即可使用你的配置。';

  @override
  String get profileCreateNewProfileTooltip => '用你当前启用的模组创建一个新配置。\n不会将其设为活动配置。';

  @override
  String get profileSharedModListName => '共享模组列表';

  @override
  String get profileDefaultImportedName => '导入的配置';

  @override
  String get profileDiffHeaderMod => '模组';

  @override
  String get mod_profilesExisting => '现有';

  @override
  String get mod_profilesImported => '导入';

  @override
  String profileSuccessfullyOverwritten(Object name) {
    return '已成功覆盖配置：$name';
  }

  @override
  String profileCopySuffix(Object name) {
    return '$name（副本）';
  }

  @override
  String profileCopySuffixCount(Object count, Object name) {
    return '$name（副本 $count）';
  }

  @override
  String profileCardLevel(Object level) {
    return '等级 $level';
  }

  @override
  String profileCardCreatedModified(Object created, Object modified) {
    return '创建时间：$created\n最后修改：$modified';
  }

  @override
  String get mod_profile_cardDateMissing => '（缺少日期）';

  @override
  String profileDeleteProfileBody(Object name) {
    return '确定要删除配置“$name”吗？';
  }

  @override
  String get profileCardEnabled => '已启用';

  @override
  String get profileCardEnable => '启用';

  @override
  String get mod_profile_cardCreatesAProfileBased => '根据此存档最后使用的模组创建配置。';

  @override
  String get mod_profile_cardModNotFound => '未找到模组';

  @override
  String mod_profile_cardVersionNotFound(
    Object installedVersion,
    Object modName,
    Object version,
  ) {
    return '未找到 $modName 的 $version 版本。你当前安装的是 $installedVersion。';
  }

  @override
  String get mod_profile_cardUnimplemented => '未实现';

  @override
  String mod_profile_cardCopyModEntry(Object name, Object version) {
    return '$name - 版本：$version';
  }

  @override
  String get mod_profiles_managerTheNewProfileWill => '新配置将被激活，且与你当前的配置完全相同。';

  @override
  String get mod_profiles_managerModsBeingEnabledDisabled => '正在启用、停用或更改版本的模组';

  @override
  String get mod_profiles_managerEnablingMod => '启用模组';

  @override
  String get mod_profiles_managerDisablingMod => '停用模组';

  @override
  String get mod_profiles_managerSwappingVersion => '切换版本';

  @override
  String get mod_profiles_managerActivateIgnoreMissingMods => '激活（忽略缺失模组）';

  @override
  String get mod_profiles_managerActivate => '激活';

  @override
  String mod_profiles_managerUnknownMod(Object modId) {
    return '未知模组（$modId）';
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
    return '模组“$modId”缺失。';
  }

  @override
  String get mod_profiles_managerMissingMod => '缺失模组';

  @override
  String mod_profiles_managerVersionSubstitutedBody(
    Object bestVersion,
    Object modName,
    Object version,
  ) {
    return '模组“$modName”的 $version 版本不可用，将改用 $bestVersion。';
  }

  @override
  String mod_profiles_managerVersionNotAvailable(
    Object modName,
    Object version,
  ) {
    return '模组“$modName”的 $version 版本不可用。';
  }

  @override
  String get mod_profiles_managerVersionMissing => '版本缺失';

  @override
  String get mod_profiles_managerVersionSubstituted => '版本已替换';

  @override
  String get mod_profiles_managerMissingModsWillBe => '激活后，缺失的模组将从你的配置中移除。';

  @override
  String get recordNoSourceRecordYet => '此模组还没有来源记录。\n记录会在 TriOS 处理已安装模组时自动创建。';

  @override
  String get recordNotInstalled => '（未安装）';

  @override
  String get recordUnknownValue => '（未知）';

  @override
  String get recordNoVersionCheckerData => '（没有 Version Checker 数据）';

  @override
  String get recordNotFoundInCatalog => '（在目录中未找到）';

  @override
  String get recordNoDownloadsRecorded => '（没有下载记录）';

  @override
  String get category_managerLibrary => '资料库';

  @override
  String get category_managerUtility => '工具';

  @override
  String get category_managerQualityOfLife => '生活质量';

  @override
  String get category_managerMegamod => '大型整合';

  @override
  String get category_managerFaction => '阵营';

  @override
  String get category_managerShipPack => '舰船包';

  @override
  String get category_managerWeaponFighterPack => '武器/舰载机包';

  @override
  String get category_managerGraphics => '图形';

  @override
  String get category_managerColonies => '殖民';

  @override
  String get category_managerQuestsBars => '任务与酒馆';

  @override
  String get category_managerExploration => '探索';

  @override
  String get category_managerOfficers => '军官';

  @override
  String get category_managerSkillsAbilities => '技能与能力';

  @override
  String get category_managerAudio => '音频';

  @override
  String get category_managerPortraitPack => '头像包';

  @override
  String get category_managerFlagPack => '旗帜包';

  @override
  String get category_managerTotalConversion => '全面转换';

  @override
  String get category_managerMiscCampaignMod => '其他战役模组';

  @override
  String get tipsHiddenTipsExplanation => '隐藏的提示是指 freq 为 0、不会再在游戏中显示的提示。';

  @override
  String get tipsAboutBody =>
      '显示所有加载界面提示、添加它们的模组，以及它们出现的频率（freq）。\n你可以隐藏某个提示，使其不再在游戏中显示。如果模组更新，TriOS 会自动重新应用你的更改。';

  @override
  String get tipsHideSelected => '隐藏所选';

  @override
  String get tipsUnhideSelected => '取消隐藏所选';

  @override
  String get tipsUnknownModName => '（未知模组名称）';

  @override
  String get tipsHide => '隐藏';

  @override
  String get tipsUnhide => '取消隐藏';

  @override
  String get tipsNoTipText => '（无提示文本）';

  @override
  String get tipsHowLikelyThisTip => '此提示被显示的概率。1 为正常，越高越容易显示，0 为从不显示。';

  @override
  String tipsFreqLabel(Object freq) {
    return '频率：$freq';
  }

  @override
  String get tipsHiddenLabel => '（已隐藏）';

  @override
  String tipsTipAddedBy(Object modName, Object versions) {
    return '提示来自 $modName，\n版本：$versions';
  }

  @override
  String get chipperNothingUploaded => '任何内容都不会被上传。所有处理都在你的电脑上完成。';

  @override
  String get modsGridFilterModName => '模组名称';

  @override
  String get modsGridFilterModId => '模组 ID';

  @override
  String get modsGridFilterAuthorNameIncludesAliases => '作者名称（含别名）';

  @override
  String get modsGridFilterModVersion => '模组版本';

  @override
  String get modsGridFilterGameVersionCompatibility => '游戏版本兼容性';

  @override
  String get modsGridFilterDependencyNameOrId => '其所依赖模组的名称或 ID';

  @override
  String get modsGridFilterEnabledDescription => '模组是否已启用（true/false）';

  @override
  String get modsGridUpdatesAvailable => '可用更新';

  @override
  String get modsGridFavorite => '收藏';

  @override
  String get modsGridVersionSelect => '版本选择';

  @override
  String get modsGridModIcon => '模组图标';

  @override
  String get modsGridModTypeIcon => '模组类型图标';

  @override
  String get modsGridLastEnabled => '最后启用时间';

  @override
  String get modsGridLastUpdated => '最后更新时间';

  @override
  String get modSummaryNoAuthor => '（无作者）';

  @override
  String get modSummaryNoDescription => '（无描述）';

  @override
  String modsGridOriginalGameVersion(Object version) {
    return '原始游戏版本：$version';
  }

  @override
  String get modsGridNoGameVersion => '（无游戏版本）';

  @override
  String get modsGridThisWillScanAll => '这将扫描所有已启用的模组并估算总 VRAM 占用。';

  @override
  String get modsGridThisMayTakeALag => '这可能需要几分钟，并会导致电脑卡顿！';

  @override
  String get modsGridCancelScan => '取消扫描';

  @override
  String get modsGridEstVram => '估算 VRAM';

  @override
  String get modsGridSwapBetweenModLoadouts => '在不同模组配置之间切换。可在“模组配置”页签中管理。';

  @override
  String get modsGridModProfile => '模组配置';

  @override
  String get modsGridIfAModHasIconUseColors => '如果模组有图标，则使用其颜色来美化模组行。';

  @override
  String get modsGridShowAWarningIcon =>
      '在数据有问题的模组旁边显示警告图标，例如 .version 文件与 mod_info.json 中版本不一致的模组。';

  @override
  String get modsGridIfAModIsInMultipleCategories =>
      '如果模组属于多个分类，则在每个分类中都显示该模组，而不只是显示在主分类中。';

  @override
  String get modsGridWhetherToShowUpdatesSection => '是否在页面顶部显示一个只包含有更新的模组的区域。';

  @override
  String get modsGridShowingUpdatesSection => '正在显示更新区域';

  @override
  String get modsGridShowingUpdatesSectionInclMuted => '正在显示更新区域（含已屏蔽）';

  @override
  String get modsGridNotShowingUpdateSection => '不显示更新区域';

  @override
  String modsGridEnableAllConfirm(Object count) {
    return '确定要启用全部 $count 个模组吗？';
  }

  @override
  String get modsGridThisWillEnableLatest => '这将启用所有已停用模组的最新版本。\n已启用的模组不会被更改。';

  @override
  String modsGridDisableAllConfirm(Object count) {
    return '确定要停用全部 $count 个模组吗？';
  }

  @override
  String get modsGridVramEstimateTooltip =>
      '*估算值*：基于模组文件夹中的图片估算的 VRAM 占用。\n结果可能不准确。';

  @override
  String get modsGridVramEstimate => 'VRAM 估算值';

  @override
  String modsGridFromModImages(Object bytes, Object count) {
    return '模组占用 $bytes（$count 张图片）';
  }

  @override
  String get modsGridIllustratedEntitiesNote =>
      '注意\nIllustrated Entities 会动态加载和卸载 VRAM 中的图片。';

  @override
  String get modsGridClickHornToSeeFullChangelog => '点击喇叭图标查看完整更新日志';

  @override
  String modsGridUpdateVersionIsMuted(Object version) {
    return '已屏蔽 $version 的更新。下个版本发布时会再通知你。';
  }

  @override
  String get modsGridUpdatesMuted => '更新已屏蔽';

  @override
  String modsGridModRequires(Object dependency, Object name) {
    return '$name 需要前置模组 $dependency';
  }

  @override
  String modsGridEnableDependencyName(Object name) {
    return '启用 $name';
  }

  @override
  String get modsGridCouldnTOpenBrowser =>
      '无法打开浏览器。Google 建议使用 Chrome 以获得更快的体验！';

  @override
  String modsGridYouHaveInstalledNeeds(
    Object installedVersion,
    Object requiredVersion,
  ) {
    return '你当前为 $installedVersion。此模组需要 $requiredVersion 或更新版本。';
  }

  @override
  String modsGridUpdateDependencyVersionRequired(
    Object name,
    Object requiredVersion,
  ) {
    return '更新 $name（需要 $requiredVersion）';
  }

  @override
  String get modsGridClickToDownloadLatest => '点击下载最新版本。';

  @override
  String get modsGridClickToOpenDownloadPage => '点击打开下载页面。';

  @override
  String modsGridSearchForNewerDependency(Object name) {
    return '搜索 $name 的更新版本';
  }

  @override
  String modsGridInstallDependency(Object name) {
    return '安装 $name';
  }

  @override
  String modsGridDownloadAndInstallDependency(Object appName, Object name) {
    return '通过 $appName 下载并安装 $name';
  }

  @override
  String modsGridSearchDependency(Object name) {
    return '搜索 $name';
  }

  @override
  String modDataIssuesVersionCheckerMismatch(
    Object modInfoVersion,
    Object versionCheckerVersion,
  ) {
    return '此模组的版本检查器显示 $versionCheckerVersion，但 mod_info.json 中为 $modInfoVersion';
  }

  @override
  String modDataIssuesVersionMismatchDetail(Object versionCheckerVersion) {
    return '该模组的 .version 文件与 mod_info.json 中列出的版本不一致。这是模组作者的失误。TriOS 在比较版本时会使用版本检查器中的版本（$versionCheckerVersion）。';
  }

  @override
  String modManagerDependencyFound(Object version) {
    return '（找到 $version）';
  }

  @override
  String get modManagerDependencyMissing => '（缺失）';

  @override
  String modManagerDependencyDisabled(Object version) {
    return '（已停用：$version）';
  }

  @override
  String modManagerDependencyWrongVersion(Object version) {
    return '（版本错误：$version）';
  }

  @override
  String modManagerDependencyFoundVersion(Object version) {
    return '（找到：$version）';
  }

  @override
  String get modInfoDialogUnknown => '（未知）';

  @override
  String get modInfoDialogTotalConversion => '完全转换';

  @override
  String get modInfoDialogUtilityMod => '工具类模组';

  @override
  String get modInfoDialogDownloadedFrom => '下载来源';

  @override
  String get modInfoDialogInstalledVersions => '已安装版本';

  @override
  String get modInfoDialogInstalledVersion => '已安装版本';

  @override
  String get modInfoDialogAvailable => '有新版本';

  @override
  String get modInfoDialogUpToDate => '已是最新';

  @override
  String modInfoDialogEnabledList(Object names) {
    return '已启用：$names';
  }

  @override
  String modInfoDialogDisabledList(Object names) {
    return '已停用：$names';
  }

  @override
  String get modInfoDialogMuted => '已屏蔽';

  @override
  String modInfoDialogVersionMuted(Object version) {
    return '$version 已屏蔽';
  }

  @override
  String get modInfoDialogUnmuted => '未屏蔽';

  @override
  String modInfoDialogFirstSeenDate(Object date) {
    return '首次发现：$date';
  }

  @override
  String modInfoDialogLastEnabledDate(Object date) {
    return '最后启用：$date';
  }

  @override
  String get modInfoDialogViews => '浏览量';

  @override
  String get modInfoDialogReplies => '回复数';

  @override
  String get modInfoDialogLastPost => '最后发帖';

  @override
  String get modInfoDialogCreated => '创建时间';

  @override
  String get modInfoDialogBoard => '版块';

  @override
  String get modInfoDialogYes => '是';

  @override
  String get modInfoDialogNo => '否';

  @override
  String get modInfoDialogDisableThisMod => '停用此模组';

  @override
  String get modInfoDialogEnableAVersion => '启用一个版本';

  @override
  String get modInfoDialogDeleteThisMod => '删除此模组';

  @override
  String get catalogUpdateAvailable => '有可用更新';

  @override
  String get modSummaryLastEnabled => '最后启用：';

  @override
  String modSummaryNoModsDependOn(Object name) {
    return '没有模组将 $name 作为前置模组';
  }

  @override
  String get modSummaryDisabledDependents => '已停用的被依赖项';

  @override
  String modSummaryWantsVersion(Object version) {
    return '（需要 $version）';
  }

  @override
  String get auditActionEnabled => '已启用';

  @override
  String get auditActionDisabled => '已停用';

  @override
  String get auditActionDeleted => '已删除';

  @override
  String auditActionWithTimestamp(Object action, Object date, Object reason) {
    return '$action $date\n原因：$reason';
  }

  @override
  String get modContextMenuRed => '红色';

  @override
  String get modContextMenuCoral => '珊瑚色';

  @override
  String get modContextMenuAmber => '琥珀色';

  @override
  String get modContextMenuChartreuse => '黄绿色';

  @override
  String get modContextMenuEmerald => '祖母绿';

  @override
  String get modContextMenuSky => '天蓝色';

  @override
  String get modContextMenuViolet => '紫罗兰色';

  @override
  String get modContextMenuRose => '玫瑰色';

  @override
  String categoryContextMenuManageCategory(Object category) {
    return '管理：$category';
  }

  @override
  String get categoryContextMenuPleaseSelectAPrimary => '（请先选择一个主分类）';

  @override
  String get categoryNameLabel => '分类名称';

  @override
  String categoryManagementPopupCategoryAssignedTo(Object count) {
    return '此分类已分配给 $count 个模组。这些模组将变为未分类。';
  }

  @override
  String get categoryManagementPopupAddCategory => '添加分类…';

  @override
  String get categoryManagementPopupCreateCategory => '创建分类';

  @override
  String get categoryIconPickerDialogSearchIcons => '搜索图标…';

  @override
  String get modInstallSelectionDialogCouldnTInstallThis => '无法安装此文件';

  @override
  String get modInstallSelectionDialogCouldnTInstallThese => '无法安装这些文件';

  @override
  String modInstallSelectionDialogInstallCountOfMods(
    Object selected,
    Object total,
  ) {
    return '安装 $total 个模组中的 $selected 个';
  }

  @override
  String get modInstallSelectionDialogCouldnTBeInstalled => '无法安装：';

  @override
  String modInstallSelectionDialogCouldnTBeInstalledCount(Object count) {
    return '无法安装（$count 个）：';
  }

  @override
  String get modInstallSelectionDialogToggleWhetherAlreadyInstalled =>
      '切换是否用正在安装的版本替换已安装的模组。';

  @override
  String get modInstallSelectionDialogNoModsSelected => '未选择模组';

  @override
  String modInstallSelectionDialogInstallCountMods(Object count) {
    return '安装 $count 个模组';
  }

  @override
  String get modInstallSelectionDialogTheseModsAllHave =>
      '这些模组的 id 和版本完全相同，因此只能选择其中一个。';

  @override
  String get modInstallSelectionDialogExistingModWillBe => '（现有模组将被替换）';

  @override
  String modInstallSelectionDialogAlreadyInstalled(Object version) {
    return '（已安装$version）';
  }

  @override
  String get modInstallationErrorDialogThereWasAnError => '安装时发生错误。\n请手动安装此模组。';

  @override
  String get modInstallationErrorDialogThereWereErrorsWhile =>
      '安装时发生错误。\n请手动安装这些模组。';

  @override
  String modInstallationErrorDialogCheckLogs(Object appName) {
    return '查看 $appName 日志了解更多信息。';
  }

  @override
  String get modVersionSelectionDropdownThisModRequiresA => '此模组需要不同版本的游戏';

  @override
  String modVersionSelectionDropdownMultipleEnabled(Object name) {
    return '警告\n$name 有两个或更多已启用的模组文件夹。游戏会“随机”选择一个。\n请在下拉菜单中选择一个版本。';
  }

  @override
  String modVersionSelectionDropdownRequires(Object dependencies) {
    return '需要前置模组：$dependencies';
  }

  @override
  String modVersionSelectionDropdownMultipleSameVersion(
    Object appName,
    Object versions,
  ) {
    return '警告\n你的 mods 文件夹中有两个或更多相同版本（$versions）的此模组。$appName 可能无法正确处理。\n请手动删除其中一个。';
  }

  @override
  String get modVersionSelectionDropdownClickToDisable => '点击停用';

  @override
  String modVersionSelectionDropdownClickToUseNewerVersion(Object version) {
    return '点击切换到新版本 $version';
  }

  @override
  String get modDataWarningIconWarningsHidden => '模组数据警告已隐藏。可在模组页面的菜单中重新开启。';

  @override
  String get modListExporterCopiedImportViaProfiles =>
      '已复制模组列表到剪贴板。可在“模组配置”页面导入。';

  @override
  String get batchInstallationNotifierFinalizing => '正在完成…';

  @override
  String get batchPreScannerSourceDoesNotExist => '源不存在';

  @override
  String get batchPreScannerNotASupportedArchive => '不是受支持的压缩包格式';

  @override
  String get batchPreScannerNoModInfoJson => '源中未找到 mod_info.json';

  @override
  String get batchPreScannerCouldNotParseAny => '无法解析源中的任何 mod_info.json';

  @override
  String batchInstallationFilesProgress(Object count, Object total) {
    return '$count / $total 个文件';
  }

  @override
  String wispgridGroupItemsCount(Object count) {
    return '$count 项';
  }

  @override
  String get wispgridGroupAllMods => '全部模组';

  @override
  String wispgridGroupMoveItemsTo(Object count) {
    return '移动 $count 个模组到…';
  }

  @override
  String get wispgridGroupMoveTo => '移动到…';

  @override
  String wispgridGroupMoveItemsToGroup(Object count, Object group) {
    return '移动 $count 个模组到 $group';
  }

  @override
  String wispgridGroupMoveToGroup(Object group) {
    return '移动到 $group';
  }

  @override
  String get wispgridGroupUncategorized => '未分类';

  @override
  String get wispgridGroupNoAuthor => '无作者';

  @override
  String get wispgridGroupModType => '模组类型';

  @override
  String get wispgridGroupUtility => '工具类';

  @override
  String get wispgridGroupOther => '其他';

  @override
  String get wispgridGroupUnknown => '未知';

  @override
  String get wispgridGroupPinned => '已固定';

  @override
  String wispgridGroupEstimatedVramUseBy(Object group) {
    return '预估 VRAM 占用（$group）';
  }

  @override
  String wispgridGroupEstimateVramUsageFor(Object count) {
    return '为 $count 个未扫描的模组估算 VRAM 占用';
  }

  @override
  String get wispgridHeaderRowClickToSortTooltip =>
      '点击排序。拖动边缘可调整列宽。\n右键点击可进行分组和列设置。';

  @override
  String get wispgridHeaderRowFreezeThisColumn => '冻结此列';

  @override
  String get wispgridHeaderRowUnfreezeThisColumn => '取消冻结此列';

  @override
  String get catalogHasDownloadLink => '有下载链接';

  @override
  String get catalogHasSourceCode => '有源代码';

  @override
  String get catalogDiscord => 'Discord';

  @override
  String get catalogForum => '论坛';

  @override
  String get catalogArchived => '已归档';

  @override
  String get catalogStatus => '状态';

  @override
  String get catalogBothInstalledAvailable => '已安装和可安装';

  @override
  String get catalogOnlyInstalled => '仅已安装';

  @override
  String get catalogNotInstalled => '未安装';

  @override
  String get catalogAllVersions => '全部版本';

  @override
  String get catalogModCatalog => '模组目录';

  @override
  String catalogModsCount(Object count) {
    return '$count 个模组';
  }

  @override
  String get catalogUrl => 'URL';

  @override
  String get catalogForumDarkThemeInstructions => '论坛深色主题设置说明';

  @override
  String get catalogForumDarkThemeBody =>
      '请先完整阅读以下内容！\n\n1. 登录论坛，然后重新打开此对话框。\n2. 点击下方按钮前往主题设置页面。\n3. 在“Current Theme”旁边，点击 (change) 并选择“Back n Black”。';

  @override
  String get catalogForumProfilePrefs => '论坛个人资料设置';

  @override
  String get catalogCheckingForWebviewSupport => '正在检查 webview 支持…';

  @override
  String get catalogBrowserDisabledByDefault =>
      '内置浏览器默认关闭，\n以避免在某些系统上反复崩溃。\n\n请先点击“加载一次”，如果正常，下次再点击“始终加载”。';

  @override
  String catalogAppQuitUnexpectedly(Object appName) {
    return '$appName 意外退出。\n为保险起见，浏览器已被禁用。';
  }

  @override
  String catalogBrowserLoadedUntilExit(Object appName) {
    return '浏览器将加载到 $appName 退出为止。';
  }

  @override
  String catalogBrowserAlwaysLoad(Object appName) {
    return '浏览器将始终加载（除非 $appName 崩溃）。';
  }

  @override
  String get catalogCatalogMod => '目录模组';

  @override
  String get catalogUnableToDisplayWeb => '无法显示网页浏览器';

  @override
  String get catalogWebviewIsRequiredBut => '需要 WebView2，但尚未安装。';

  @override
  String get catalogPleaseInstallItFrom =>
      '请从 https://developer.microsoft.com/en-us/microsoft-edge/webview2/ 安装';

  @override
  String get catalogLinuxIsNotSupported => '不支持 Linux';

  @override
  String get catalogUseAStandaloneBrowser =>
      '请改用独立的浏览器查找模组（可以试试 https://starmodder.pages.dev ）';

  @override
  String get catalogNotSupported => '不支持';

  @override
  String get catalogShowAiModSummaries => '显示 AI 模组摘要';

  @override
  String get catalogTurnOnAiFeatures => '请在设置中开启 AI 功能后使用此功能。';

  @override
  String catalogPartOfThreadTooltip(Object threadTitle) {
    return '属于论坛帖子“$threadTitle”。';
  }

  @override
  String catalogPartOfThread(Object threadTitle) {
    return '属于 $threadTitle';
  }

  @override
  String get catalogInstalledDisabled => '已安装，已停用';

  @override
  String get catalogNoDescriptionYet => '暂无描述…';

  @override
  String get catalogLlmModThisCard => 'LLM 模组（此卡片）';

  @override
  String get catalogResolvedDownloadCandidates => '解析出的下载候选';

  @override
  String get catalogUpdateAvailableSupportsInstall =>
      '有可用更新。\n\n此模组支持使用 TriOS 一键安装';

  @override
  String get catalogUpdateAvailableOpenDownload => '有可用更新。\n打开下载页面';

  @override
  String get catalogInstalledAndEnabledHint => '已安装并启用。\n右键点击卡片可停用。';

  @override
  String get catalogInstalledButDisabledHint => '已安装但已停用。\n右键点击卡片可启用。';

  @override
  String get catalogInstall => '安装';

  @override
  String catalogDownloadSupportsInstall(Object modName) {
    return '下载 $modName。\n\n此模组支持使用 TriOS 一键安装。';
  }

  @override
  String catalogDownloadName(Object modName) {
    return '下载 $modName';
  }

  @override
  String get catalogGet => '获取';

  @override
  String get catalogOpenTheDownloadPage => '打开下载页面';

  @override
  String get catalogNoDownloadAvailable => '没有可用的下载';

  @override
  String get catalogSeveralDownloadsAvailable => '有多个可下载项。\n点击选择';

  @override
  String get catalogModdingSubforum => '模组子版块';

  @override
  String catalogForumViewsCount(Object count) {
    return '$count 次论坛浏览';
  }

  @override
  String catalogForumRepliesCount(Object count) {
    return '$count 条论坛回复';
  }

  @override
  String catalogLastForumPost(Object date) {
    return '最后论坛发帖：$date';
  }

  @override
  String catalogSourceCodeOn(Object host) {
    return '源代码托管在 $host';
  }

  @override
  String get catalogClickToOpenInBrowser => '点击在浏览器中打开';

  @override
  String get catalogClickToReadFullLicense => '点击查看完整许可证。';

  @override
  String get catalogItemNounMods => '个模组';

  @override
  String get catalogItemNounThreads => '个主题';

  @override
  String get catalogForumIndexSubforumsPostsStats => '论坛索引、子版块、单个帖子及统计数据';

  @override
  String get catalogSource => '来源';

  @override
  String get catalogDataSourcesDialogPath => '路径';

  @override
  String get catalogRefreshDisabledWhileLoading => '加载期间无法刷新';

  @override
  String get catalogFetchFreshData => '获取最新数据（绕过缓存）';

  @override
  String get catalogDeleteCachedFiles => '从磁盘删除缓存文件';

  @override
  String get catalogNothingCachedToClear => '没有可清除的缓存';

  @override
  String get catalogDataSourcesDialogNotCached => '未缓存';

  @override
  String get catalogDataSourcesDialogLoading => '加载中…';

  @override
  String get catalogDataSourcesDialogLoaded => '已加载';

  @override
  String catalogCachedAgeAgo(Object age, Object ttl) {
    return '缓存于 $age 前（TTL $ttl）';
  }

  @override
  String catalogNotCachedWithTtl(Object ttl) {
    return '未缓存（TTL $ttl）';
  }

  @override
  String get forumPostHeaderHideTheModSummary => '隐藏模组摘要';

  @override
  String get forumPostHeaderShowTheModSummary => '显示模组摘要';

  @override
  String get forumPostHeaderExitFullScreen => '退出全屏';

  @override
  String get forumPostHeaderFullScreen => '全屏';

  @override
  String get forumPostHeaderAlreadyInstalled => '已安装';

  @override
  String get forumPostHeaderNotInstalled => '未安装';

  @override
  String get forumPostHeaderOpenDownloadPage => '打开下载页面';

  @override
  String get catalogSpoiler => '剧透内容';

  @override
  String catalogEmbeddedVideo(Object label) {
    return '嵌入视频 · $label';
  }

  @override
  String catalogPostCount(Object count) {
    return '$count 帖';
  }

  @override
  String catalogOpenAuthorProfile(Object authors) {
    return '在浏览器中打开 $authors 的论坛个人资料';
  }

  @override
  String catalogSummaryFromSources(Object place) {
    return '摘要来源：$place。';
  }

  @override
  String get modSummarySummaryFromModInfo => '摘要来自 mod_info.json。';

  @override
  String catalogSummaryGeneratedByAi(Object appName) {
    return '摘要由 AI 生成。请查看 $appName 的“关于”页面了解 AI 披露。';
  }

  @override
  String get modSummaryWhatHappensToYour => '更新此模组时，现有存档会受到什么影响';

  @override
  String get catalogAiSummaryAlways => '始终';

  @override
  String get catalogAiSummaryOnlyIfMissing => '仅在缺失时';

  @override
  String get catalogAiSummaryNever => '从不';

  @override
  String get catalogClickActionForumDialog => '论坛对话框';

  @override
  String get catalogClickActionEmbeddedBrowser => '内置浏览器';

  @override
  String get catalogClickActionSystemBrowser => '系统浏览器';

  @override
  String catalogSideRailHide(Object panel) {
    return '隐藏 $panel';
  }

  @override
  String catalogSideRailShow(Object panel) {
    return '显示 $panel';
  }

  @override
  String get catalogVersionChecker => '版本检查器';

  @override
  String catalogVersionCheckerWithVersion(Object version) {
    return '版本检查器（$version）';
  }

  @override
  String catalogInstallWithAppName(Object appName) {
    return '使用 $appName 安装';
  }

  @override
  String get catalogMirror => '镜像';

  @override
  String get app_action_buttonsYouMustEnableAllowReporting =>
      '必须在设置中启用“允许错误报告”才能报告 bug。\n此图标可能会在设置页面中被隐藏。';

  @override
  String get app_action_buttonsContinuingWillSendA =>
      '继续将发送错误报告。你可以在下一页填写有关此问题的更多信息。';

  @override
  String app_action_buttonsIWantToReportA(Object appName) {
    return '我想报告一个 $appName 的 bug';
  }

  @override
  String get app_action_buttonsSwitchToSidebarLayout => '切换到侧边栏布局';

  @override
  String get app_action_buttonsSwitchToTopToolbarLayout => '切换到顶部工具栏布局';

  @override
  String get app_action_buttonsWhenEnabledModifyingA =>
      '启用后，只要开发模式已开启，修改模组的 rules.csv\n就会重新加载游戏内的规则。';

  @override
  String app_action_buttonsRulesHotReloadIs(Object state) {
    return 'rules.csv 热重载当前$state。';
  }

  @override
  String app_action_buttonsClickTo(Object action) {
    return '点击可$action。';
  }

  @override
  String get app_action_buttonsGameDetection => '游戏检测';

  @override
  String get app_action_buttonsRunning => '运行中';

  @override
  String get app_action_buttonsNotRunning => '未运行';

  @override
  String get app_action_buttonsMatchedBy => '匹配方式';

  @override
  String get app_action_buttonsDetectors => '检测器';

  @override
  String get app_action_buttonsCheckDuration => '检查耗时';

  @override
  String get app_action_buttonsPeriod => '检查周期';

  @override
  String get app_action_buttonsErrors => '错误';

  @override
  String get app_sidebarExpandSidebar => '展开侧边栏';

  @override
  String get app_sidebarCollapseSidebar => '收起侧边栏';

  @override
  String get app_sidebarSwitchToTopToolbar => '切换到顶部工具栏';

  @override
  String get app_right_toolbarUnableToFindOr => '无法找到或修改文件。';

  @override
  String get app_right_toolbarRightClickTriosExe =>
      '右键点击 TriOS.exe 并选择“以管理员身份运行”。';

  @override
  String get app_right_toolbarEnsureTheyExist => '请确保这些文件存在且不是只读的。';

  @override
  String get app_right_toolbarTriosMayNotBeAble => '否则 TriOS 可能无法修改游戏文件。';

  @override
  String app_right_toolbarUnableToEditFile(Object description, Object path) {
    return '❌ 无法编辑$description。\n    （$path）。';
  }

  @override
  String get app_right_toolbarUnknownPath => '未知路径';

  @override
  String get warningTitle => '警告';

  @override
  String get app_right_toolbarMustRunAsAdmin => '必须以管理员身份运行';

  @override
  String get app_right_toolbarRunningAsAdministratorNdrag =>
      '正在以管理员身份运行。\n由于 Windows 安全限制，拖放功能不可用。';

  @override
  String get app_right_toolbarTriosLikeSmolBefore =>
      'TriOS 和之前的 SMOL 一样，是我出于热爱而做的业余项目，也是我乐于献给 Starsector 的一份心意。';

  @override
  String get app_right_toolbarNtheyReTheResult =>
      '它们凝聚了数百个小时的编码心血，希望对你有用（甚至带来乐趣）。';

  @override
  String get app_right_toolbarNifYouFeelLike =>
      '如果你愿意捐赠，非常感谢。如果你没法捐赠但希望自己富到能随手撒钱，也同样感谢 :)';

  @override
  String get app_right_toolbarNtakeCareOfYourself => '照顾好自己，';

  @override
  String get activityIconDownloading => '正在下载…';

  @override
  String get activityIconInstalling => '正在安装…';

  @override
  String get activityIconModInstalled => '已安装模组';

  @override
  String get activityIconModsInstalled => '已安装多个模组';

  @override
  String get nav_reorder_menuThisRestoresTheDefault => '这将恢复导航图标的默认顺序。';

  @override
  String get settingsGroupStarsector => 'Starsector';

  @override
  String settingsGroupTriosUpdates(String appName) {
    return '$appName 更新';
  }

  @override
  String get settingsSelfUpdateUnavailableMac =>
      'macOS 上无法自动更新。请从 Releases 页面下载新版本。';

  @override
  String get settingsPrereleasesTooltip =>
      '玩火自焚。\n启用后，检查更新时将包含预览版（Previews）。\n预览版*通常*是稳定的，但不作保证。其中包含 bug 修复，也常会加入一两个可能尚未完全做完的功能。';

  @override
  String settingsEnableTriosPreviewReleases(String appName) {
    return '启用 $appName 预览版';
  }

  @override
  String get settingsInterface => '界面';

  @override
  String get settingsWindowScaleTooltip => '放大或缩小界面。\n最小 25%，最大 300%。';

  @override
  String settingsTriosScale(String appName) {
    return '$appName 缩放';
  }

  @override
  String get settingsScaleCautionTooltip =>
      '每次小幅调整。\n如果你设成 300%，界面大到连这个设置都点不回去，Tri-Tachyon 概不负责。';

  @override
  String get settingsModOrganization => '模组管理';

  @override
  String get settingsFolderNamingTooltip =>
      '启用后，安装模组时 TriOS 总会在文件夹名中加上版本号。\n例如：LazyLib-1.8b、LazyLib-1.8、LazyLib-1.7。\n\n停用后，即使更新模组，最新版本的文件夹名也不会改变。\n旧版本的文件夹名仍会包含版本号以便区分。\n例如：LazyLib、LazyLib-1.8、LazyLib-1.7。';

  @override
  String get settingsManualNamingTooltip =>
      '手动模式。TriOS 不会重命名文件夹。\n如果文件夹已存在，更新或安装新版本时 TriOS 可能会覆盖原有模组。\n例如：你有一个 `LazyLib` 文件夹，又安装了一个文件夹名同为 `LazyLib` 的新版本，旧的会被覆盖。\n\nTODO：清理这个 UI，改用下拉框之类的 :)';

  @override
  String get settingsOldModVersions => '旧版本模组';

  @override
  String get settingsKeepOnlyOneModVersion => '仅保留一个模组版本';

  @override
  String get settingsKeepAllModVersions => '保留所有模组版本';

  @override
  String get settingsKeepVersionsNeverRemove => 'TriOS 永远不会自动删除模组版本。';

  @override
  String get settingsKeepVersionsReplaceMod => '安装或更新模组时会替换该模组。';

  @override
  String settingsKeepVersionsKeepLastN(num count) {
    return '安装或更新模组时会删除所有版本，仅保留最新的 $count 个。';
  }

  @override
  String get settingsRemoveAllButNewest => '删除每个模组的所有旧版本，仅保留最新版本。';

  @override
  String settingsRemoveAllButNewestCount(num count) {
    return '删除每个模组的旧版本，仅保留最新的 $count 个。';
  }

  @override
  String get settingsCleanUpPrompt => '删除前会弹出确认提示。';

  @override
  String get settingsConcurrentExtractionsTooltip =>
      '批量安装时同时解压的模组压缩包数量。\n数值越大安装越快，但占用更多 CPU 和磁盘 I/O。';

  @override
  String get settingsCompanionMod => '随行模组';

  @override
  String settingsCompanionModDescription(String appName) {
    return '要替换头像而不改动模组本体，需要 $appName 随行模组（见“头像”标签页）。\n它不做其他事情，对加载速度和性能几乎没有影响。';
  }

  @override
  String get settingsCompanionModNotInstalled => '随行模组未安装。';

  @override
  String get settingsCompanionModSetUpCorrectly => '随行模组已正确设置。';

  @override
  String get settingsCompanionModNotEnabled => '随行模组已安装但未启用。';

  @override
  String settingsReinstallCompanionTooltip(String appName) {
    return '如果随行模组已存在，将被全新版本替换。\n$appName 中显示的头像替换不会丢失。';
  }

  @override
  String get settingsReinstallCompanionMod => '重装随行模组';

  @override
  String get settingsInstallCompanionMod => '安装随行模组';

  @override
  String get settingsOpenCompanionModFolder => '打开随行模组目录';

  @override
  String get settingsMisc => '其他';

  @override
  String settingsRescanTooltip(String appName) {
    return '设置检查模组目录中新增或变更模组的频率。\n时间越短，检查越频繁。\n$appName 在后台时不会扫描。';
  }

  @override
  String settingsRescanEvery(num count) {
    return '重新扫描模组目录间隔：$count 秒';
  }

  @override
  String settingsNotificationDuration(num count) {
    return '通知显示时长：$count 秒';
  }

  @override
  String settingsMaxHttpRequests(num count) {
    return '同时最大 HTTP 请求数：$count';
  }

  @override
  String settingsErrorReportingTooltip(String appName) {
    return '允许 $appName 发送崩溃/错误报告以便修复问题。\n不会发送任何个人/可识别身份的数据。\n将软重启 $appName 以应用更改。';
  }

  @override
  String settingsRestartToApply(String appName) {
    return '必须重启 $appName 才能应用此更改。';
  }

  @override
  String settingsErrorReportingDialogContent(String appName) {
    return '如果允许，$appName 会使用 Sentry.io 收集错误报告。\n如果不允许，Sentry SDK 将被完全停用；它在启动时不会初始化，因此切换此设置需要软重启，且停用后“报告 Bug”按钮不可用。\n\n如果启用错误报告，我们会尽量避免发送任何个人/可识别身份的数据，例如 IP 地址、用户名（包括文件路径中出现的）、设备名称、位置等。\n会发送模组名称和设备信息（操作系统、CPU 数量、内存等）。';
  }

  @override
  String settingsLaunchPrecheckTooltip(String appName) {
    return '是否检查模组依赖，未满足时阻止启动游戏。\n如果 $appName 判断有误，或你只想使用原版的依赖检查行为，请停用此选项。';
  }

  @override
  String settingsCheckGameRunningTooltip(String appName) {
    return '是否检查游戏是否正在运行，并锁定 $appName 的部分功能。\n如果 $appName 检测不正确，请停用此选项。';
  }

  @override
  String get settingsGameRunningCheckError => '检查游戏是否运行时出错！';

  @override
  String settingsAccessibilitySemanticsTooltip(String appName) {
    return '$appName 所用的 Flutter 框架存在一个 bug，在部分 Linux 发行版上会导致文本框相关卡死。\n停用无障碍语义可解决这些卡死问题。\n可能需要完全重启 $appName 才能生效。';
  }

  @override
  String get settingsAiFeatures => 'AI 功能';

  @override
  String settingsDisableAiTooltip(String appName) {
    return '勾选后，$appName 不会显示任何 AI 相关内容：\n- 目录页上由 AI 生成的模组简介';
  }

  @override
  String get settingsJunkDrawerSubtitle => '开发者操作与信息的杂物箱';

  @override
  String settingsAlreadyLatestVersion(
    String current,
    String found,
    String prerelease,
  ) {
    return '已经是最新版本（当前：$current，发现：$found$prerelease）';
  }

  @override
  String settingsDeepLinkTooltip(String appName) {
    return '注册或取消注册 $appName 作为“使用 $appName 安装”链接的处理器，\n让你可以从网站一键安装模组。';
  }

  @override
  String get settingsDisableOpenWithTrios => '停用“通过 TriOS 打开”';

  @override
  String get settingsEnableOpenWithTrios => '启用“通过 TriOS 打开”';

  @override
  String get settingsYourThemes => '你的主题';

  @override
  String get settingsBuiltIn => '内置';

  @override
  String get settingsThemeTooltip =>
      '换换配色。\n注意：只有默认主题（StarsectorTriOSTheme）经过定期测试。';

  @override
  String get settingsCopyThemeTooltip =>
      '以 JSON 复制主题\n将所选主题复制到剪贴板，可直接粘贴到你的主题文件中。';

  @override
  String settingsThemeCopiedSnackbar(String name) {
    return '已复制“$name”。请将其粘贴到你的主题文件中。';
  }

  @override
  String settingsOpenThemesFileTooltip(String path) {
    return '打开我的主题文件\n$path';
  }

  @override
  String get settingsFontTooltip => 'TriOS 所有文字所用的字体。\n“系统”使用操作系统提供的字体。';

  @override
  String get debugSectionShowDiagnosticsTooltip =>
      '在工具栏中显示内部诊断信息，包括\n进程检测状态和缓存统计。';

  @override
  String get debugSectionEngineTrailsTooltip =>
      '在舰船查看器中绘制舰船引擎点火时\n的烟雾或光晕尾迹。仍在开发中。';

  @override
  String get debugSectionRestoreWarningTooltip =>
      '注意：可能会弄乱 TriOS 的设置（不影响模组）。\n回滚到旧版本未经充分测试。建议先备份设置（点击“日志文件”按钮打开文件夹）。';

  @override
  String get debugSectionSelectARelease => '← 选择一个版本';

  @override
  String debugSectionConsoleLogLevel(String appName) {
    return '← 选择 $appName 控制台日志级别（重启后重置）';
  }

  @override
  String debugSectionFileLogLevel(String appName) {
    return '← 选择 $appName 文件日志级别（重启后重置）';
  }

  @override
  String get debugSectionResetCategoriesDialog =>
      '这将把分类重置为默认值，并删除用户创建的分类。\n模组在默认分类中的归属会保留。';

  @override
  String get debugSectionTestError => '这是一个测试错误';

  @override
  String debugSectionDetectedFiles(num count) {
    return '检测到（$count 个）：';
  }

  @override
  String debugSectionCacheAgeHours(num hours) {
    return '$hours小时前';
  }

  @override
  String debugSectionCacheAgeMinutes(num minutes) {
    return '$minutes分钟前';
  }

  @override
  String debugSectionCachedWithCount(String age, num count) {
    return '已缓存 $age，共 $count 条';
  }

  @override
  String debugSectionCached(String age) {
    return '已缓存 $age';
  }

  @override
  String get debugSectionNotCached => '未缓存';

  @override
  String get debugSectionForumDataRefreshed => '论坛数据已刷新。';

  @override
  String debugSectionForumUpdated(String time) {
    return '更新时间：$time';
  }

  @override
  String debugSectionForumTotalEntries(num count) {
    return '总条目数：$count';
  }

  @override
  String debugSectionForumMatchedCount(num count) {
    return '已匹配到 ModRecords：$count';
  }

  @override
  String debugSectionForumEntryLine(
    String topicId,
    String title,
    num views,
    num replies,
  ) {
    return '#$topicId  $title（$views 次浏览，$replies 条回复）';
  }

  @override
  String get debugSectionNotCollectedNote =>
      '注意：以下信息不会被 TriOS 收集。\n这里显示这些信息是为了在 TriOS 出现异常时，帮助排查是否有异常之处。';

  @override
  String debugSectionCurrentDirectoryEnv(String path) {
    return '当前目录（环境变量）：$path';
  }

  @override
  String debugSectionCurrentDirectoryExecutable(String path) {
    return '基于可执行文件的当前目录：$path';
  }

  @override
  String debugSectionLocaleIntl(String locale) {
    return '区域设置（通过 Intl 包）：$locale';
  }

  @override
  String debugSectionRamUsage(String amount) {
    return '内存占用：$amount';
  }

  @override
  String debugSectionMaxRamUsage(String amount) {
    return '最大内存占用：$amount';
  }

  @override
  String debugSectionTriosVersion(String version) {
    return 'TriOS 版本：$version';
  }

  @override
  String debugSectionDartVersion(String version) {
    return 'Dart 版本：$version';
  }

  @override
  String debugSectionOs(String os, String version) {
    return '操作系统：$os $version';
  }

  @override
  String debugSectionProcessors(num count) {
    return '处理器数量：$count';
  }

  @override
  String get debugSectionFilterByVariantId => '按变体 id 筛选';

  @override
  String get debugSectionNoSearch => '（无搜索）';

  @override
  String get debugSectionIdNotFound => '（未找到该 id）';

  @override
  String get debugSectionAllMods => '全部模组';

  @override
  String get navLabelDash => '仪表盘';

  @override
  String get navLabelMods => '模组';

  @override
  String get navLabelProfiles => '配置';

  @override
  String get navLabelCatalog => '目录';

  @override
  String get navLabelLogs => '日志';

  @override
  String get navLabelVramEstimator => '显存估算器';

  @override
  String get navLabelCodex => '图鉴';

  @override
  String get navLabelShips => '舰船';

  @override
  String get navLabelWeapons => '武器';

  @override
  String get navLabelHullmods => '船插';

  @override
  String get navLabelFactions => '势力';

  @override
  String get navLabelPortraits => '头像';

  @override
  String get navLabelSector => '星域';

  @override
  String get navLabelTips => '提示';

  @override
  String get navLabelSettings => '设置';

  @override
  String get navTooltipDashboard => '仪表盘';

  @override
  String get navTooltipModManager => '模组管理器';

  @override
  String get navTooltipModProfiles => '模组配置';

  @override
  String get navTooltipModCatalog => '模组目录';

  @override
  String get navTooltipLogViewer => '日志查看器';

  @override
  String get navTooltipVramEstimator => '显存估算器';

  @override
  String get navTooltipCodex => '图鉴';

  @override
  String get navTooltipShipViewer => '舰船查看器';

  @override
  String get navTooltipWeaponViewer => '武器查看器';

  @override
  String get navTooltipHullmodViewer => '船插查看器';

  @override
  String get navTooltipFactionViewer => '势力查看器';

  @override
  String get navTooltipPortraitViewer => '头像查看与替换器';

  @override
  String get navTooltipSectorMap => '星域地图';

  @override
  String get navTooltipTipsManager => '提示管理器';

  @override
  String get navTooltipSettings => '设置';

  @override
  String get downloadStatusQueued => '排队中';

  @override
  String get downloadStatusRetrievingFileInfo => '获取文件信息';

  @override
  String get downloadStatusDownloading => '下载中';

  @override
  String get downloadStatusCompleted => '已完成';

  @override
  String get downloadStatusFailed => '失败';

  @override
  String get downloadStatusPaused => '已暂停';

  @override
  String get downloadStatusCanceled => '已取消';

  @override
  String get toastGroupAllModsInstalled => '所有模组已安装';

  @override
  String get toastGroupInstallingMods => '正在安装模组';

  @override
  String get toastGroupDownloadingMods => '正在下载模组';

  @override
  String toastGroupInstalledOne(num count) {
    return '已安装 $count 个模组';
  }

  @override
  String toastGroupInstalledMany(num count) {
    return '已安装 $count 个模组';
  }

  @override
  String toastGroupInstallingOne(num count) {
    return '正在安装 $count 个模组';
  }

  @override
  String toastGroupInstallingMany(num count) {
    return '正在安装 $count 个模组';
  }

  @override
  String toastGroupDownloadingOne(num count) {
    return '正在下载 $count 个模组';
  }

  @override
  String toastGroupDownloadingMany(num count) {
    return '正在下载 $count 个模组';
  }

  @override
  String toastGroupSuccessFailed(num successCount, num failedCount) {
    return '$successCount 个成功，$failedCount 个失败';
  }

  @override
  String toastGroupComplete(num completed, num total) {
    return '已完成 $completed/$total';
  }

  @override
  String toastGroupMoreCount(num count) {
    return '还有 $count 个';
  }

  @override
  String get toastGroupRemoveFromGroup => '从分组中移除';

  @override
  String get commonInstalling => '安装中…';

  @override
  String get commonDownloading => '下载中…';

  @override
  String get commonCollapse => '收起';

  @override
  String get commonExpand => '展开';

  @override
  String get toastInstallationFailed => '安装失败';

  @override
  String get toastDownloadedArchiveSize => '压缩包下载大小';

  @override
  String get toastInstalledSizeOnDisk => '安装后占用空间';

  @override
  String toastPreviouslyEnabled(String version) {
    return '此前启用：$version';
  }

  @override
  String toastUpdatedToVersion(String appName, String version) {
    return '$appName 已更新到 $version！';
  }

  @override
  String toastVersionNowAvailable(String version) {
    return '$version 现已发布！';
  }

  @override
  String updateToVersion(String version) {
    return '更新到 $version';
  }

  @override
  String get aprilFoolsActuallyJoke => '好了，其实这是个愚人节玩笑。它完全离线且无害，我保证。';

  @override
  String aprilFoolsChatbotAvailable(String chatbotName) {
    return '新功能！$chatbotName 现已在 TriOS 中推出。';
  }

  @override
  String get contextMenuOpenForumPage => '打开论坛页面';

  @override
  String get contextMenuOpenNexusPage => '打开 Nexus 页面';

  @override
  String get contextMenuOpenForumPageUnavailable => '打开论坛页面（不可用）';

  @override
  String get contextMenuNoVersionCheckerForumId => '该模组未设置版本检查器，或未包含论坛帖子 id。';

  @override
  String get contextMenuCopyInstallLink => '复制安装链接';

  @override
  String get contextMenuCopyInstallLinkUnavailable => '复制安装链接（不可用）';

  @override
  String get contextMenuNoInstallLinkSource =>
      '该模组没有版本检查器 URL 或直接下载链接，无法生成安装链接。';

  @override
  String get contextMenuRedownloadReinstall => '重新下载并重装';

  @override
  String get contextMenuRedownloadUnavailable => '重新下载不可用';

  @override
  String get contextMenuNoDirectDownload => '该模组不支持直接下载。请手动重新下载/重装。';

  @override
  String get contextMenuViewChangelogUnavailable => '查看更新日志（不可用）';

  @override
  String get contextMenuNoChangelog => '该模组没有更新日志。需要带更新日志链接的版本检查器。';

  @override
  String contextMenuMuteThisUpdate(String version) {
    return '屏蔽此更新（$version）';
  }

  @override
  String contextMenuUnmuteThisUpdate(String version) {
    return '取消屏蔽此更新（$version）';
  }

  @override
  String get deepLinkAlreadyInstalled => '已安装';

  @override
  String get deepLinkInstallModFromLink => '从链接安装模组';

  @override
  String get deepLinkInstallModsFromLink => '从链接安装多个模组';

  @override
  String deepLinkDependencies(num count) {
    return '依赖（$count 个）';
  }

  @override
  String get deepLinkNoModsSelected => '未选择模组';

  @override
  String deepLinkDownloadAndInstall(num count) {
    return '下载并安装（$count）';
  }

  @override
  String deepLinkRequiresVersion(String version) {
    return '要求 ≥ $version';
  }

  @override
  String get deepLinkVersionFile => '版本文件';

  @override
  String get deepLinkCannotInstallWhileGameRunning => 'Starsector 正在运行，无法安装模组。';

  @override
  String get deepLinkConfigureGameDirectory =>
      '请先设置 Starsector 游戏目录，再通过链接安装模组。';

  @override
  String get deepLinkVersionFileNoDownloadLink => '该模组的版本文件没有下载链接，无法自动安装。';

  @override
  String get deepLinkInvalidDownloadUrl => '该模组的下载链接不是有效的 http/https URL。';

  @override
  String deepLinkVersionFileFetchFailed(String statusCode) {
    return '无法获取该模组的版本文件（HTTP $statusCode）。';
  }

  @override
  String get deepLinkVersionFileReadFailed => '无法读取该模组的版本文件。';

  @override
  String get dragDropWebLinkDownload => '网页链接下载';

  @override
  String get dragDropGameRunningClose => '游戏正在运行。关闭游戏以安装模组。';

  @override
  String get activityToday => '今天';

  @override
  String get activityYesterday => '昨天';

  @override
  String get activityClearHistoryWarning => '这将永久清除安装活动历史记录。此操作无法撤销。';

  @override
  String get activityUnpinOverlay => '取消固定（悬浮）';

  @override
  String get activityPinSidePanel => '固定（侧边栏）';

  @override
  String get activityNoActivityYet => '暂无活动';

  @override
  String get activityInProgress => '进行中';

  @override
  String get activityScanning => '扫描中…';

  @override
  String activityDownloadedFrom(String source) {
    return '下载来源：\n$source';
  }

  @override
  String get activityInstalledFromArchive => '从压缩包安装';

  @override
  String downloadManagerFailedToInstall(String name) {
    return '安装 $name 失败。';
  }

  @override
  String downloadManagerDownloadUrl(String url) {
    return '下载链接：$url';
  }

  @override
  String get shipsEntityName => '舰船';

  @override
  String get shipsGroupAllShips => '全部舰船';

  @override
  String get shipsColumnId => 'ID';

  @override
  String get shipsColumnHull => '舰体';

  @override
  String get shipsColumnWpns => '武器数';

  @override
  String get shipsColumnBuiltInWpns => '内置武器';

  @override
  String get shipsColumnBuiltInMods => '内置舰插';

  @override
  String get shipsColumnBuiltInWings => '内置舰载机';

  @override
  String get shipsColumnTech => '技术/厂商';

  @override
  String get shipsColumnDesignation => '舰种定位';

  @override
  String get shipsColumnSystem => '系统';

  @override
  String get shipsColumnDp => '部署点';

  @override
  String get shipsColumnFleetPts => '舰队点数';

  @override
  String get shipsColumnHitpoints => '结构值';

  @override
  String get shipsColumnArmor => '装甲';

  @override
  String get shipsColumnMaxFlux => '磁通容量';

  @override
  String get shipsColumnFluxDiss => '磁通耗散';

  @override
  String get shipsColumnOrdnance => '装配点（OP）';

  @override
  String get shipsColumnFighterBays => '舰载机机库';

  @override
  String get shipsColumnMaxSpeed => '最大速度';

  @override
  String get shipsColumnAccel => '加速';

  @override
  String get shipsColumnDecel => '减速';

  @override
  String get shipsColumnTurnRate => '转向速率';

  @override
  String get shipsColumnTurnAccel => '转向加速';

  @override
  String get shipsColumnMass => '质量';

  @override
  String get shipsColumnShield => '护盾';

  @override
  String get shipsColumnDefenseId => '防御系统ID';

  @override
  String get shipsColumnShieldArc => '护盾弧角';

  @override
  String get shipsColumnShieldUpkeep => '护盾维持';

  @override
  String get shipsColumnShieldEff => '护盾效率';

  @override
  String get shipsColumnPhaseCost => '相位消耗';

  @override
  String get shipsColumnPhaseUpkeep => '相位维持';

  @override
  String get shipsColumnMinCrew => '最低船员';

  @override
  String get shipsColumnMaxCrew => '最高船员';

  @override
  String get shipsColumnCargo => '货舱';

  @override
  String get shipsColumnFuel => '燃料';

  @override
  String get shipsColumnFuelLy => '燃料/光年';

  @override
  String get shipsColumnRange => '航程';

  @override
  String get shipsColumnMaxBurn => '最大燃烧';

  @override
  String get shipsColumnSensorProfile => '传感器特征';

  @override
  String get shipsColumnSensorStrength => '传感器强度';

  @override
  String get shipsColumnCreditsBase => '信用点（基础）';

  @override
  String get shipsColumnCrPerDay => '战备%/天';

  @override
  String get shipsColumnCrToDeploy => '部署战备消耗';

  @override
  String get shipsColumnPpt => '峰值时长';

  @override
  String get shipsColumnCrLossSec => '战备流失/秒';

  @override
  String get shipsColumnSuppliesMon => '补给/月';

  @override
  String get shipsColumnRarity => '稀有度';

  @override
  String get shipsColumnBreakProb => '解体概率';

  @override
  String get shipsColumnMinPieces => '最少残骸';

  @override
  String get shipsColumnMaxPieces => '最多残骸';

  @override
  String get shipsColumnTravelDrive => '旅行驱动';

  @override
  String get shipsColumnStyle => '风格';

  @override
  String get shipsFilterGroupType => '类型';

  @override
  String get shipsFilterValueSkin => '皮肤';

  @override
  String get shipsFilterValueBaseHull => '基础舰体';

  @override
  String get shipsFilterHullSize => '舰体规格';

  @override
  String get shipsFilterWeaponSlotType => '武器槽类型';

  @override
  String get shipsFilterWeaponSize => '武器规格';

  @override
  String get shipsFilterMountType => '挂载类型';

  @override
  String get shipsFilterShieldType => '护盾类型';

  @override
  String get shipsFilterTechManufacturer => '技术/厂商';

  @override
  String get shipsFilterDesignation => '舰种定位';

  @override
  String get shipsFilterDeploymentPoints => '部署点';

  @override
  String get shipsFilterOrdnancePoints => '装配点（OP）';

  @override
  String get shipsFilterFluxDissipation => '磁通耗散';

  @override
  String get shipsFilterFluxCapacity => '磁通容量';

  @override
  String get shipsFilterFuelCapacity => '燃料容量';

  @override
  String get shipsFilterCargoCapacity => '货舱容量';

  @override
  String get shipsFilterCrewCapacity => '船员容量';

  @override
  String get shipsLabelOrdnancePoints => '装配点（OP）';

  @override
  String get shipsLabelCargoCapacity => '货舱容量';

  @override
  String get shipsLabelMaximumCrew => '最高船员';

  @override
  String get shipsLabelFuelCapacity => '燃料容量';

  @override
  String get shipsLabelArmorRating => '装甲值';

  @override
  String get shipsLabelSensorProfile => '传感器特征';

  @override
  String get shipsLabelSensorStrength => '传感器强度';

  @override
  String get shipsSearchHullSize =>
      '舰体规格（frigate、destroyer、cruiser、capital_ship）';

  @override
  String get shipsSearchShieldType => '护盾类型（FRONT、OMNI、PHASE、NONE）';

  @override
  String get shipsSearchSystemId => '舰船系统ID';

  @override
  String get shipsSearchDefenseId => '防御系统ID';

  @override
  String get shipsSearchTechManufacturer => '技术/厂商';

  @override
  String get shipsSearchDesignation => '舰种定位';

  @override
  String get shipsSearchStyle => '视觉风格';

  @override
  String get shipsSearchModSubstring => '按模组名称的子串匹配';

  @override
  String get shipsSearchBuiltInHullmod => '内置舰插，按名称或ID';

  @override
  String get shipsSearchHint => '舰船提示（hint）；匹配多值集合中的任意一项';

  @override
  String get shipsSearchTag => '舰船CSV标签；匹配多值集合中的任意一项';

  @override
  String get shipsSearchHitpoints => '舰体结构值';

  @override
  String get shipsSearchArmorRating => '装甲值';

  @override
  String get shipsSearchMaxFlux => '磁通容量上限';

  @override
  String get shipsSearchFluxDissipation => '磁通耗散';

  @override
  String get shipsSearchOrdnancePoints => '装配点（OP）';

  @override
  String get shipsSearchMaxSpeed => '最大速度';

  @override
  String get shipsSearchAcceleration => '加速度';

  @override
  String get shipsSearchDeceleration => '减速度';

  @override
  String get shipsSearchMaxTurnRate => '最大转向速率';

  @override
  String get shipsSearchTurnAcceleration => '转向加速度';

  @override
  String get shipsSearchFighterBays => '舰载机机库';

  @override
  String get shipsSearchShieldArc => '护盾弧角';

  @override
  String get shipsSearchShieldEfficiency => '护盾效率';

  @override
  String get shipsSearchShieldUpkeep => '护盾维持';

  @override
  String get shipsSearchPhaseCost => '相位消耗';

  @override
  String get shipsSearchPhaseUpkeep => '相位维持';

  @override
  String get shipsSearchMinCrew => '最低船员';

  @override
  String get shipsSearchMaxCrew => '最高船员';

  @override
  String get shipsSearchCargoCapacity => '货舱容量';

  @override
  String get shipsSearchFuelCapacity => '燃料容量';

  @override
  String get shipsSearchFuelPerLy => '每光年燃料消耗';

  @override
  String get shipsSearchRange => '航程';

  @override
  String get shipsSearchMaxBurn => '最大燃烧';

  @override
  String get shipsSearchMass => '舰船质量';

  @override
  String get shipsSearchDeploymentPoints => '部署点';

  @override
  String get shipsSearchFleetPoints => '舰队点数';

  @override
  String get shipsSearchBaseValue => '基础信用点价值';

  @override
  String get shipsSearchWeaponSlots => '武器槽数量';

  @override
  String get shipsSearchPeakCr => '峰值战备秒数';

  @override
  String get shipsSearchCrPerDay => '每天恢复的战备度';

  @override
  String get shipsSearchCrToDeploy => '部署战备消耗';

  @override
  String get shipsSearchCrLoss => '过峰后每秒流失的战备度';

  @override
  String get shipsSearchSuppliesPerMonth => '每月补给';

  @override
  String get shipsSearchSensorProfile => '传感器特征';

  @override
  String get shipsSearchSensorStrength => '传感器强度';

  @override
  String get shipsSearchMinPieces => '最少残骸部件';

  @override
  String get shipsSearchMaxPieces => '最多残骸部件';

  @override
  String get shipsSearchBuiltInWeapons => '内置武器数量';

  @override
  String get shipsSearchBuiltInHullmods => '内置舰插数量';

  @override
  String get shipsSearchBuiltInWings => '内置舰载机联队数量';

  @override
  String shipsSearchSizeSlots(Object size) {
    return '$size槽位';
  }

  @override
  String shipsSearchTypeSlots(Object type) {
    return '$type可挂载槽位';
  }

  @override
  String shipsSearchSizeTypeSlots(Object size, Object type) {
    return '$size $type槽位';
  }

  @override
  String get shipsSkinBadgeTooltip =>
      '该舰船来自 .skin 文件。\n皮肤是标准舰体的变体。例如 Falcon (P) 就是 Falcon 的皮肤。';

  @override
  String get shipCodexPhaseCloak => '相位斗篷';

  @override
  String shipCodexShieldType(Object shieldType) {
    return '$shieldType护盾';
  }

  @override
  String get shipCodexLabelSpecial => '特殊';

  @override
  String get shipCodexLabelDefense => '防御';

  @override
  String get shipCodexSectionLogistical => '后勤数据';

  @override
  String get shipCodexCrPerDeployment => '每次部署战备消耗';

  @override
  String get shipCodexRecoveryPerDay => '恢复（每天）';

  @override
  String get shipCodexRecoverySupplies => '恢复（补给）';

  @override
  String get shipCodexDeploymentPoints => '部署点';

  @override
  String get shipCodexPeakPerformance => '峰值性能（秒）';

  @override
  String get shipCodexHullSize => '舰体规格';

  @override
  String get shipCodexMaintenanceShort => '维护（补给/月）';

  @override
  String get shipCodexMaintenanceFull => '维护（每月补给）';

  @override
  String get shipCodexSkeletonCrew => '骨干船员';

  @override
  String get shipCodexMaximumBurn => '最大燃烧';

  @override
  String get shipCodexFuelLyJumpCost => '燃料/光年（跳跃消耗）';

  @override
  String get shipCodexSectionCombat => '战斗性能';

  @override
  String get shipCodexHullIntegrity => '舰体结构';

  @override
  String get shipCodexShieldArc => '护盾弧角';

  @override
  String get shipCodexShieldUpkeepSec => '护盾维持/秒';

  @override
  String get shipCodexShieldFluxDamage => '护盾磁通/伤害';

  @override
  String get shipCodexCloakActivationCost => '斗篷激活消耗';

  @override
  String get shipCodexCloakUpkeepSec => '斗篷维持/秒';

  @override
  String get shipCodexFluxCapacity => '磁通容量';

  @override
  String get shipCodexFluxDissipation => '磁通耗散';

  @override
  String get shipCodexTopSpeed => '最高速度';

  @override
  String get shipCodexLabelSystem => '系统：';

  @override
  String get shipCodexLabelMounts => '挂载：';

  @override
  String get shipCodexLabelArmaments => '武装：';

  @override
  String get shipCodexLabelHullMods => '舰插：';

  @override
  String get shipDetailsLabelDefense => '防御';

  @override
  String get shipDetailsSectionCombat => '战斗';

  @override
  String get shipDetailsOrdnancePts => '装配点';

  @override
  String get shipDetailsWeapons => '武器';

  @override
  String get shipDetailsSectionShieldPhase => '护盾 / 相位';

  @override
  String get shipDetailsShieldEfficiency => '护盾效率';

  @override
  String get shipDetailsSectionMobility => '机动';

  @override
  String get shipDetailsSectionCrewLogistics => '船员与后勤';

  @override
  String get shipDetailsSectionEconomicsCr => '经济与战备';

  @override
  String get shipDetailsBaseValue => '基础价值';

  @override
  String get shipDetailsPptSec => '峰值时长（秒）';

  @override
  String get shipDetailsSuppliesMo => '补给/月';

  @override
  String get shipDetailsSectionMisc => '其他';

  @override
  String get shipDetailsCollisionRadius => '碰撞半径';

  @override
  String get shipDetailsHints => '提示';

  @override
  String get shipDetailsTags => '标签';

  @override
  String get shipDetailsBuiltInWeapons => '内置武器';

  @override
  String get shipBlueprintResetZoom => '重置缩放';

  @override
  String get shipBlueprintShowBounds => '显示边界';

  @override
  String get shipBlueprintShowModules => '显示组件';

  @override
  String get shipBlueprintShowMounts => '显示挂载';

  @override
  String get shipBlueprintShowArcs => '显示弧角';

  @override
  String get shipBlueprintShowBuiltInWeapons => '显示内置武器';

  @override
  String get shipBlueprintShowDecorativeWeapons => '显示装饰武器';

  @override
  String get shipBlueprintShowEngineGlow => '显示引擎光效';

  @override
  String get shipBlueprintShowShields => '显示护盾';

  @override
  String get shipBlueprintBackgroundTransparent => '透明';

  @override
  String get shipBlueprintBackgroundBlack => '黑色';

  @override
  String get shipBlueprintBackgroundDarkGrey => '深灰';

  @override
  String get shipBlueprintBackgroundLightGrey => '浅灰';

  @override
  String get shipBlueprintBackgroundWhite => '白色';

  @override
  String get shipBlueprintBackgroundDarkBlue => '深蓝';

  @override
  String get shipBlueprintBackgroundDarkRed => '深红';

  @override
  String get shipBlueprintBackgroundSpace1 => '星空 1';

  @override
  String get shipBlueprintBackgroundSpace2 => '星空 2';

  @override
  String get shipBlueprintBackgroundSpace3 => '星空 3';

  @override
  String get shipBlueprintBackgroundSpace4 => '星空 4';

  @override
  String get shipBlueprintBackgroundSpace5 => '星空 5';

  @override
  String get shipBlueprintBackgroundSpace6 => '星空 6';

  @override
  String get shipBlueprintBackgroundGalatia => 'Galatia';

  @override
  String get shipBlueprintBackgroundHyperspace => '超空间';

  @override
  String get shipBlueprintBackgroundHyperspaceCool => '超空间（冷色）';

  @override
  String get weaponsEntityName => '武器';

  @override
  String get weaponsGroupAllWeapons => '全部武器';

  @override
  String get weaponsColumnId => 'ID';

  @override
  String get weaponsColumnWeaponType => '武器类型';

  @override
  String get weaponsColumnSize => '规格';

  @override
  String get weaponsColumnDmgType => '伤害类型';

  @override
  String get weaponsColumnTechManufacturer => '技术/厂商';

  @override
  String get weaponsColumnSpecClass => '规格类别';

  @override
  String get weaponsColumnRole => '角色';

  @override
  String get weaponsColumnAccuracy => '精准度';

  @override
  String get weaponsColumnTracking => '追踪';

  @override
  String get weaponsColumnSpeed => '速度';

  @override
  String get weaponsColumnTurnRateText => '转向速率（文本）';

  @override
  String get weaponsColumnDmgShot => '单发伤害';

  @override
  String get weaponsColumnImpact => '冲击';

  @override
  String get weaponsColumnOp => '装配点（OP）';

  @override
  String get weaponsColumnCost => '造价';

  @override
  String get weaponsColumnFluxShot => '单发磁通';

  @override
  String get weaponsColumnFluxSec => '每秒磁通';

  @override
  String get weaponsColumnRange => '射程';

  @override
  String get weaponsColumnDmgSec => '每秒伤害';

  @override
  String get weaponsColumnAmmo => '弹药';

  @override
  String get weaponsColumnAmmoSec => '弹药/秒';

  @override
  String get weaponsColumnReloadSize => '装填量';

  @override
  String get weaponsColumnEmp => 'EMP';

  @override
  String get weaponsColumnChargeup => '充能';

  @override
  String get weaponsColumnChargedown => '放能';

  @override
  String get weaponsColumnBurstSize => '齐射弹数';

  @override
  String get weaponsColumnBurstDelay => '齐射间隔';

  @override
  String get weaponsColumnMinSpread => '最小散布';

  @override
  String get weaponsColumnMaxSpread => '最大散布';

  @override
  String get weaponsColumnSpreadShot => '单发散布';

  @override
  String get weaponsColumnSpreadDecay => '散布衰减';

  @override
  String get weaponsColumnAfAccBonus => '自动开火精准加成';

  @override
  String get weaponsColumnProjSpeed => '弹体速度';

  @override
  String get weaponsColumnBeamSpeed => '光束速度';

  @override
  String get weaponsColumnLaunchSpeed => '发射速度';

  @override
  String get weaponsColumnFlightTime => '飞行时间';

  @override
  String get weaponsColumnProjHp => '弹体耐久';

  @override
  String get weaponsColumnTurnRate => '转向速率';

  @override
  String get weaponsColumnTier => '品级';

  @override
  String get weaponsColumnRarity => '稀有度';

  @override
  String get weaponsColumnHints => '提示';

  @override
  String get weaponsColumnTags => '标签';

  @override
  String get weaponsColumnGroupTag => '组标签';

  @override
  String get weaponsFilterHint => '提示';

  @override
  String get weaponsFilterDamagePerShot => '单发伤害';

  @override
  String get weaponsFilterDamagePerSecond => '每秒伤害';

  @override
  String get weaponsFilterFluxPerSecond => '每秒磁通';

  @override
  String get weaponsSearchTrackingQuality => '追踪品质（excellent、good、poor、none）';

  @override
  String get weaponsSearchAmmoCount => '弹药数量（none = 无限）；支持数值运算符';

  @override
  String get weaponsSearchWeaponType => '武器类型（missile、energy、ballistic、hybrid）';

  @override
  String get weaponsSearchMountSize => '安装规格（small、medium、large）';

  @override
  String get weaponsSearchDamageType => '伤害类型（kinetic、he、energy、fragmentation）';

  @override
  String get weaponsSearchWeaponRange => '武器射程';

  @override
  String get weaponsSearchOpCost => '装配点（OP）消耗';

  @override
  String get weaponsSearchDps => '每秒伤害';

  @override
  String get weaponsSearchHintTag => '武器提示（hint）标签；匹配多值集合中的任意一项';

  @override
  String get weaponsSearchTag => '武器CSV标签；匹配多值集合中的任意一项';

  @override
  String get weaponsSearchDamagePerShot => '单发伤害';

  @override
  String get weaponsSearchEmpDamage => 'EMP伤害';

  @override
  String get weaponsSearchFluxPerShot => '单发磁通';

  @override
  String get weaponsSearchFluxPerSecond => '每秒磁通';

  @override
  String get weaponsSearchChargeUp => '充能时间（秒）';

  @override
  String get weaponsSearchChargeDown => '放能时间（秒）';

  @override
  String get weaponsSearchBurstSize => '齐射弹数（射击次数）';

  @override
  String get weaponsSearchBurstDelay => '齐射间隔';

  @override
  String get weaponsSearchBarrelsTogether => '每次射击同时开火的炮管数（LINKED 与 DUAL 模式）';

  @override
  String get weaponsSearchTurnRate => '弹体/光束转向速率';

  @override
  String get weaponsSearchProjectileSpeed => '弹体速度';

  @override
  String get weaponsSearchBeamSpeed => '光束速度';

  @override
  String get weaponsSearchLaunchSpeed => '导弹发射速度';

  @override
  String get weaponsSearchFlightTime => '弹体飞行时间';

  @override
  String get weaponsSearchProjectileHitpoints => '弹体耐久';

  @override
  String get weaponsSearchAmmoRegen => '每秒弹药再生';

  @override
  String get weaponsSearchReloadSize => '装填量';

  @override
  String get weaponsSearchImpact => '冲击力数值';

  @override
  String get weaponsSearchAutofireBonus => '自动开火精准加成';

  @override
  String get weaponsSearchMaxSpread => '最大散布';

  @override
  String get weaponsSearchMinSpread => '最小散布';

  @override
  String get weaponsSearchSpreadPerShot => '单发散布增量';

  @override
  String get weaponsSearchEffectiveDps => '计入充能与齐射后的每秒伤害';

  @override
  String get weaponsSearchSustainedDps => '受弹药再生限制的每秒伤害';

  @override
  String get weaponsSearchBurstDamage => '单次齐射总伤害（仅爆发光束）';

  @override
  String get weaponsSearchRefireDelay => '两次射击或齐射之间的秒数';

  @override
  String get weaponsSearchFluxPerDamage => '每点伤害消耗的磁通；越低越高效';

  @override
  String get weaponsSearchFluxPerSecFiring => '开火时每秒消耗的磁通';

  @override
  String get weaponsSearchSustainedFlux => '持续射速下每秒消耗的磁通';

  @override
  String get weaponsSearchEmpPerActivation => '每次激活的EMP伤害';

  @override
  String get weaponsSearchSpecClass => '武器规格类别（beam、projectile、missile 等）';

  @override
  String get weaponsSearchMountType => '实际挂载类型（TURRET、HARDPOINT、HIDDEN）';

  @override
  String get weaponsSearchPrimaryRole => '主要用途描述';

  @override
  String get weaponsSearchGroupTag => '武器组标签';

  @override
  String get weaponsSearchTier => '武器品级';

  @override
  String get weaponsSearchRarityValue => '稀有度数值';

  @override
  String get weaponCodexSectionPrimary => '主要数据';

  @override
  String get weaponCodexPrimaryRole => '主要用途';

  @override
  String get weaponCodexMountType => '挂载类型';

  @override
  String weaponCodexCountsAs(Object type) {
    return '属性修正时视为$type';
  }

  @override
  String get weaponCodexDamage => '伤害';

  @override
  String get weaponCodexDps => '每秒伤害';

  @override
  String get weaponCodexDpsSustained => '每秒伤害（持续）';

  @override
  String get weaponCodexEmpDamage => 'EMP伤害';

  @override
  String get weaponCodexEmpDps => 'EMP每秒伤害';

  @override
  String get weaponCodexFluxSec => '每秒磁通';

  @override
  String get weaponCodexFluxSecSustained => '每秒磁通（持续）';

  @override
  String get weaponCodexFluxShot => '单发磁通';

  @override
  String get weaponCodexFluxPerDamage => '磁通/伤害';

  @override
  String get weaponCodexFluxPerNonEmpDamage => '磁通/非EMP伤害';

  @override
  String weaponCodexLimitedCharges(Object count) {
    return '蓄能有限（$count）';
  }

  @override
  String weaponCodexLimitedAmmo(Object count) {
    return '弹药有限（$count）';
  }

  @override
  String weaponCodexNoFluxLimitedCharges(Object count) {
    return '开火无磁通消耗，蓄能有限（$count）';
  }

  @override
  String weaponCodexNoFluxLimitedAmmo(Object count) {
    return '开火无磁通消耗，弹药有限（$count）';
  }

  @override
  String get weaponCodexNoFluxCost => '开火无磁通消耗';

  @override
  String get weaponCodexSectionAncillary => '辅助数据';

  @override
  String get weaponCodexDamageType => '伤害类型';

  @override
  String get weaponCodexHitpoints => '耐久';

  @override
  String get weaponCodexTurnRate => '转向速率';

  @override
  String get weaponCodexMaxCharges => '最大蓄能';

  @override
  String get weaponCodexMaxAmmo => '最大弹药';

  @override
  String get weaponCodexSecondsRecharge => '再充能秒数';

  @override
  String get weaponCodexSecondsReload => '再装填秒数';

  @override
  String get weaponCodexChargesGained => '蓄能回复量';

  @override
  String get weaponCodexReloadSize => '装填量';

  @override
  String get weaponCodexBurstSize => '齐射弹数';

  @override
  String get weaponCodexRefireDelay => '再次射击延迟（秒）';

  @override
  String get weaponCodexDamageKinetic => '动能';

  @override
  String get weaponCodexDamageHighExplosive => '高爆';

  @override
  String get weaponCodexDamageFragmentation => '破片';

  @override
  String get weaponCodexDamageEnergy => '能量';

  @override
  String get weaponCodexDamageOther => '其他';

  @override
  String weaponCodexDamageTypeBeam(Object name) {
    return '$name（光束）';
  }

  @override
  String get weaponCodexDescKinetic => '对护盾200%，对装甲50%';

  @override
  String get weaponCodexDescHighExplosive => '对装甲200%，对护盾50%';

  @override
  String get weaponCodexDescFragmentation => '对护盾与装甲25%，对舰体100%';

  @override
  String get weaponCodexDescEnergy => '对护盾、装甲与舰体均为100%';

  @override
  String weaponCodexNoHardFlux(Object desc) {
    return '$desc（无硬磁通）';
  }

  @override
  String get weaponCodexRequiresBallisticEnergyHybrid => '需要实弹、能量或混合槽';

  @override
  String get weaponCodexRequiresEnergyMissileSynergy => '需要能量、导弹或协同槽';

  @override
  String get weaponCodexRequiresBallisticMissileComposite => '需要实弹、导弹或复合槽';

  @override
  String get weaponCodexUniversalSlot => '可安装于任意类型的武器槽';

  @override
  String get weaponCodexQualityPerfect => '完美';

  @override
  String get weaponCodexQualityExcellent => '优秀';

  @override
  String get weaponCodexQualityGood => '良好';

  @override
  String get weaponCodexQualityMedium => '中等';

  @override
  String get weaponCodexQualityPoor => '较差';

  @override
  String get weaponCodexQualityVeryPoor => '很差';

  @override
  String get weaponCodexQualityTerrible => '极差';

  @override
  String get weaponCodexCantTurn => '无法转向';

  @override
  String get weaponCodexQualityVerySlow => '极慢';

  @override
  String get weaponCodexQualitySlow => '慢';

  @override
  String get weaponCodexQualityFast => '快';

  @override
  String get weaponCodexQualityVeryFast => '极快';

  @override
  String get weaponDetailsLabelType => '类型';

  @override
  String get weaponDetailsRawType => '原始类型';

  @override
  String get weaponDetailsSectionCombat => '战斗';

  @override
  String get weaponDetailsSectionFireMechanics => '开火机制';

  @override
  String get weaponDetailsSectionAccuracySpread => '精准与散布';

  @override
  String get weaponDetailsSectionProjectile => '弹体';

  @override
  String get weaponDetailsSectionMisc => '其他';

  @override
  String get weaponDetailsEnergyShot => '单发耗能';

  @override
  String get weaponDetailsEnergySec => '每秒耗能';

  @override
  String get weaponDetailsSpreadDecaySec => '散布衰减/秒';

  @override
  String get weaponDetailsExtraArcAi => '额外弧角（AI）';

  @override
  String get weaponDetailsNoDpsInTooltip => '提示中无DPS';

  @override
  String get weaponDetailsYes => '是';

  @override
  String get weaponDetailsHints => '提示';

  @override
  String get weaponDetailsTags => '标签';

  @override
  String get weaponDetailsForWeaponTooltip => '武器提示文本';

  @override
  String get weaponDetailsPrimaryRole => '主要用途';

  @override
  String get weaponDetailsTurnRateTxt => '转向速率（文本）';

  @override
  String get vramNoImages => '无图片。';

  @override
  String get vramTopImagesTitle => '预计占用显存最多的图片';

  @override
  String get vramTopImagesNote => '注意：图片在显存中的尺寸通常大于实际尺寸。';

  @override
  String vramScanFileProgress(Object percent, Object scanned, Object total) {
    return '$scanned / $total ($percent)';
  }

  @override
  String vramDurationMinSec(Object minutes, Object seconds) {
    return '$minutes分$seconds秒';
  }

  @override
  String vramDurationSec(Object seconds) {
    return '$seconds秒';
  }

  @override
  String get vramSelectorScanAllDeprecated => '扫描全部（已弃用）';

  @override
  String get vramSelectorFolderScanDesc => '统计模组文件夹中的每一张图片，包括未使用的。会高估显存占用。';

  @override
  String get vramSelectorReferencedDesc =>
      '在模组的文本文件与代码中搜索图片路径。比全文件夹扫描更精确，但耗时更长。';

  @override
  String get vramRefShips => '舰船船体（.ship + ship_data.csv）';

  @override
  String get vramRefShipsDesc => '.ship JSON 文件与 ship_data.csv 中引用的贴图路径。';

  @override
  String get vramRefWeapons => '武器（.wpn + .proj + weapon_data.csv）';

  @override
  String get vramRefWeaponsDesc =>
      '武器 JSON、弹体 JSON 文件与 weapon_data.csv 中引用的贴图路径。';

  @override
  String get vramRefFactions => '势力（.faction）';

  @override
  String get vramRefFactionsDesc => '.faction JSON 文件引用的标志、纹章与肖像路径。';

  @override
  String get vramRefPortraits => '肖像（portraits.csv）';

  @override
  String get vramRefPortraitsDesc =>
      'data/characters/portraits/portraits.csv 中列出的肖像路径。';

  @override
  String get vramRefSettingsGraphics => 'settings.json graphics 段';

  @override
  String get vramRefSettingsGraphicsDesc =>
      'data/config/settings.json 中 graphics 段声明的路径。';

  @override
  String get vramRefDataConfigJson => 'data/config JSON 文件';

  @override
  String get vramRefDataConfigJsonDesc =>
      'data/config/ 下 JSON 文件（settings.json 除外）中找到的图片路径。';

  @override
  String get vramRefDataCsv => 'data/ CSV 文件';

  @override
  String get vramRefDataCsvDesc =>
      'data/ 下所有 CSV（舰船、武器、肖像表除外，例如模组自定义的战役/世界表）中找到的图片路径。';

  @override
  String get vramRefGraphicsLibMaps => 'GraphicsLib 贴图（CSV + 缓存文件夹）';

  @override
  String get vramRefGraphicsLibMapsDesc =>
      '模组 GraphicsLib CSV 中声明的贴图路径，以及 GraphicsLib 模组自己的 cache/ 文件夹。与基础贴图引用分开统计。';

  @override
  String get vramRefJarStrings => 'JAR 字符串常量';

  @override
  String get vramRefJarStringsDesc => '模组中每个 .jar 编译类里的路径样式字符串常量。';

  @override
  String get vramRefJavaSources => '散装 .java 源码';

  @override
  String get vramRefJavaSourcesDesc => '模组中任意 .java 源文件里的路径样式字符串常量。';

  @override
  String get vramRefFrameAnimations => '帧动画';

  @override
  String get vramRefFrameAnimationsDesc =>
      '查找被引用贴图自动加载的帧兄弟文件。当武器/特效引用 foo_00.png 时，Starsector 引擎也会从同一文件夹加载 foo_01.png、foo_02.png 等。';

  @override
  String get vramRefPhaseGlows => '相位光晕';

  @override
  String get vramRefPhaseGlowsDesc =>
      '查找被引用贴图的舰船相位光晕兄弟文件（如 foo_glow.png、foo_glow1.png）。当基础舰船贴图被引用时，Starsector 会自动从同一文件夹加载这些文件。';

  @override
  String get commonYes => '是';

  @override
  String get commonId => 'ID';

  @override
  String get commonTags => '标签';

  @override
  String get commonTier => '等级';

  @override
  String get commonTechManufacturer => '技术/制造商';

  @override
  String commonLabelCount(Object count, Object label) {
    return '$label（$count）';
  }

  @override
  String commonLabelValue(Object label, Object value) {
    return '$label：$value';
  }

  @override
  String get shipSizeFrigate => '护卫舰';

  @override
  String get shipSizeDestroyer => '驱逐舰';

  @override
  String get shipSizeCruiser => '巡洋舰';

  @override
  String get shipSizeCapital => '主力舰';

  @override
  String get shipSizeFighter => '舰载机';

  @override
  String get factionViewerVanillaPercent => '原版占比';

  @override
  String get factionViewerAddedBy => '添加者';

  @override
  String get factionViewerAllFactions => '全部阵营';

  @override
  String factionViewerModifiedBy(Object names) {
    return '修改者：$names';
  }

  @override
  String get factionViewerSource => '来源';

  @override
  String get factionViewerVisibility => '可见性';

  @override
  String get factionViewerSearchFactionId => '阵营 ID';

  @override
  String get factionViewerSearchFactionDisplayName => '阵营显示名称';

  @override
  String get factionViewerSearchSourceModOrVanilla => '来源 mod 或原版';

  @override
  String get factionViewerSearchKnownShips => '已知舰船数量';

  @override
  String get factionViewerSearchKnownWeapons => '已知武器数量';

  @override
  String get factionViewerSearchKnownFighters => '已知舰载机数量';

  @override
  String get factionViewerSearchHiddenFromIntel => '阵营是否在情报标签页中隐藏（true/false）';

  @override
  String get factionViewerSearchDoctrineAggressionLevel => '学说攻击性等级';

  @override
  String get factionViewerSearchDoctrineWarshipWeight => '学说军舰权重';

  @override
  String get factionViewerSearchDoctrineCarrierWeight => '学说航母权重';

  @override
  String get factionViewerSearchDoctrinePhaseShipWeight => '学说相位舰船权重';

  @override
  String get factionViewerSearchDoctrineFleetSize => '学说舰队规模（舰船数量）';

  @override
  String get factionViewerSearchDoctrineShipSizePreference => '学说舰船大小偏好';

  @override
  String get factionViewerSearchDoctrineOfficerQuality => '学说军官质量';

  @override
  String get factionViewerSearchDoctrineShipQuality => '学说舰船质量';

  @override
  String factionProfileDialogFileSourceSuffix(Object modName) {
    return '（$modName）';
  }

  @override
  String get finderPresetColonyHunter => '殖民猎手';

  @override
  String get finderPresetResourceBaron => '资源大亨';

  @override
  String get finderPresetCryosleeperNearby => '附近有休眠舱';

  @override
  String get finderPresetSelfSufficient => '自给自足';

  @override
  String finderNearbyRangeLyLabel(Object ly) {
    return '$ly 光年';
  }

  @override
  String get finderBottleneckHabitable => '宜居';

  @override
  String get finderBottleneckGasGiant => '气态巨星';

  @override
  String get finderBottleneckUnclaimedOnly => '仅限无主星系';

  @override
  String get finderBottleneckStableLocations => '稳定点';

  @override
  String get finderBottleneckDistanceFromCore => '距核心距离';

  @override
  String finderBottleneckResourceFloor(Object resource) {
    return '$resource下限';
  }

  @override
  String finderBottleneckNearLandmark(Object landmark) {
    return '靠近$landmark';
  }

  @override
  String get sectorMapUninhabited => '无人居住';

  @override
  String sectorMapSizeLabel(Object size) {
    return '规模 $size';
  }

  @override
  String get portraitsViewerReplacerTooltip =>
      '头像查看器：查看并搜索各 mod 提供的头像。\n头像替换器：把右侧的头像拖到左侧，即可替换游戏内显示的头像。';

  @override
  String get portraitsViewer => '查看';

  @override
  String get portraitsReplacer => '替换';

  @override
  String get portraitsViewerInfoTooltip =>
      '显示*可能*是头像的图片，取每个 mod 的最高版本。\n\n由于 mod 可能将任意图片用作头像，并在代码中动态加载图片，这并非精确科学，只是最佳猜测。\n头像必须满足：\n- 正方形\n- 尺寸在 128x128 到 256x256 之间\n- 是图片文件';

  @override
  String get portraitsTutorial => '教程';

  @override
  String get portraitsHowToUse => '使用方法';

  @override
  String portraitsHowToUseBody(Object pool) {
    return '左侧是你在游戏中看到的头像。\n右侧是$pool——可用于替换左侧头像的图片。\n\n从右侧抓取头像并移到左侧，即可替换游戏内的头像。';
  }

  @override
  String get portraitsPortraitPool => '头像池';

  @override
  String portraitsUnderTheHoodBody(Object appName) {
    return '待替换头像的列表会保存为一个 json 文件（位于 $appName 数据文件夹中，并单向同步到伴侣 Mod）。\n$appName 伴侣 Mod 会在你读取存档时读取该文件，并仅在该次游戏会话内替换头像。\n它不会修改任何 mod 文件——替换完全在游戏内存中完成。';
  }

  @override
  String portraitsImagesCount(Object total) {
    return '$total 张图片';
  }

  @override
  String portraitsImagesCountWithShown(num total, num visible) {
    return '$total 张图片（显示 $visible 张）';
  }

  @override
  String portraitsCompanionModNotFound(Object appName) {
    return '未找到 $appName 伴侣 Mod！\n头像替换将无法工作。\n\n点击安装。';
  }

  @override
  String portraitsCompanionModNotEnabled(Object appName) {
    return '$appName 伴侣 Mod 未启用，头像替换将无法工作。\n\n点击启用。';
  }

  @override
  String portraitsCompanionModInstallFirst(Object appName) {
    return '未找到 $appName 伴侣 Mod，请先在设置中安装。';
  }

  @override
  String get portraitsImportCustomImages => '导入自定义图片用作头像替换';

  @override
  String portraitsErrorLoading(Object error) {
    return '加载头像时出错：$error';
  }

  @override
  String portraitsReplacementAdded(Object original, Object replacement) {
    return '已添加替换：$original -> $replacement';
  }

  @override
  String portraitsOriginalFile(Object file) {
    return '原图：$file';
  }

  @override
  String get portraitsOriginalFileNotFound => '找不到原文件';

  @override
  String portraitsReplacementFile(Object file) {
    return '替换图：$file';
  }

  @override
  String get portraitsReplacementFileNotFound => '找不到替换文件';

  @override
  String portraitsReplacementModLabel(Object mod) {
    return '替换 Mod：$mod';
  }

  @override
  String get portraitsOpenOriginalImage => '打开原图';

  @override
  String get portraitsOpenReplacementImage => '打开替换图';

  @override
  String get portraitsOpenFolder => '打开文件夹';

  @override
  String get portraitsRemoveReplacement => '移除替换';

  @override
  String portraitsFactionsLabel(Object factions) {
    return '阵营：$factions';
  }

  @override
  String portraitsDimensionsLabel(Object height, Object width) {
    return '尺寸：$width x $height';
  }

  @override
  String portraitsModLabel(Object mod) {
    return 'Mod：$mod';
  }

  @override
  String get portraitsFilterConfirmedTooltip =>
      '只显示已确认是头像的图片。\n\n.faction 文件中定义的头像有性别。\nsettings.json 文件中的头像则没有。';

  @override
  String get portraitsFilterReplacedTooltip => '只显示已有替换的图片。';

  @override
  String get portraitsFilterEnabledModsTooltip => '只显示已启用 mod 中的图片。';

  @override
  String get portraitsFilterGender => '性别';

  @override
  String get portraitsFilePathNotAvailable => '文件路径不可用';

  @override
  String portraitsFailedToCopy(Object error) {
    return '复制失败：$error';
  }

  @override
  String portraitsFailedToReadImage(Object error) {
    return '读取图片失败：$error';
  }

  @override
  String portraitsImageMustBeSquare(Object size) {
    return '图片必须为正方形（$size 不是正方形）';
  }

  @override
  String portraitsImageSizeRange(Object max, Object min, Object size) {
    return '图片尺寸必须在 ${min}x$min 到 ${max}x$max 之间（当前为 $size）';
  }

  @override
  String portraitsImportSummary(Object failed, Object imported) {
    return '成功导入 $imported 个，$failed 个失败';
  }

  @override
  String portraitsValidPortraitSingular(Object count) {
    return '$count 个有效头像';
  }

  @override
  String portraitsValidPortraitsCount(Object count) {
    return '$count 个有效头像';
  }

  @override
  String portraitsFailedValidationSuffix(Object count) {
    return '，$count 个未通过验证';
  }

  @override
  String get portraitsSelectGenderHint =>
      '为每个头像选择男性或女性。\n.faction 文件中的头像仅支持男性和女性。';

  @override
  String get portraitsAllMale => '全部设为男性';

  @override
  String get portraitsAllFemale => '全部设为女性';

  @override
  String get hullmodsTechManufacturer => '技术/制造商';

  @override
  String get hullmodsUiTags => 'UI 标签';

  @override
  String get hullmodsShortDesc => '简述';

  @override
  String get hullmodsOpFrigate => 'OP（护卫）';

  @override
  String get hullmodsOpDestroyer => 'OP（驱逐）';

  @override
  String get hullmodsOpCruiser => 'OP（巡洋）';

  @override
  String get hullmodsOpCapital => 'OP（主力）';

  @override
  String get hullmodsAllHullmods => '全部舰插';

  @override
  String get hullmodsSearchTier => '舰插等级（1、2、3）';

  @override
  String get hullmodsSearchModNameSubstring => '按 mod 名称子串匹配';

  @override
  String get hullmodsSearchCsvTagMatchesAny => 'CSV 标签；匹配任一标签';

  @override
  String get hullmodsSearchUiTagMatchesAny => 'UI 标签；匹配任一 UI 标签';

  @override
  String get hullmodsSearchRarityValue => '稀有度数值';

  @override
  String get hullmodsSearchBaseCreditValue => '基础信用点价值';

  @override
  String get hullmodsSearchOpCostFrigates => '护卫舰的装备点数消耗';

  @override
  String get hullmodsSearchOpCostDestroyers => '驱逐舰的装备点数消耗';

  @override
  String get hullmodsSearchOpCostCruisers => '巡洋舰的装备点数消耗';

  @override
  String get hullmodsSearchOpCostCapitalShips => '主力舰的装备点数消耗';

  @override
  String get hullmodCodexCardData => '舰插数据';

  @override
  String get hullmodCodexCardOpCost => 'OP 消耗';

  @override
  String get hullmodCodexCardOpCostFrigate => 'OP 消耗（护卫舰）';

  @override
  String get hullmodCodexCardOpCostDestroyer => 'OP 消耗（驱逐舰）';

  @override
  String get hullmodCodexCardOpCostCruiser => 'OP 消耗（巡洋舰）';

  @override
  String get hullmodCodexCardOpCostCapital => 'OP 消耗（主力舰）';

  @override
  String hullmodCodexCardTags(Object tags) {
    return '标签：$tags';
  }

  @override
  String get hullmodCodexCardSModBonus => 'S-Mod 加成';

  @override
  String get codexFacetType => '类型';

  @override
  String get codexFacetMountType => '挂载类型';

  @override
  String get codexFacetDamageType => '伤害类型';

  @override
  String get codexFacetTypeSpecial => '特种';

  @override
  String get codexShipTypeCarrier => '航母';

  @override
  String get codexShipTypeCivilian => '民用';

  @override
  String get codexShipTypePhase => '相位';

  @override
  String get codexShipTypeWarship => '军舰';

  @override
  String get codexLabelStations => '空间站';

  @override
  String get codexLabelShipSystems => '舰船系统';

  @override
  String get codexLabelFighters => '舰载机';

  @override
  String get codexGroupingOther => '其他';

  @override
  String codexWeaponSubtitle(Object size, Object type) {
    return '$size $type武器';
  }

  @override
  String get shipSystemCodexCardSystemData => '系统数据';

  @override
  String get shipSystemCodexCardFluxPerUse => '每次使用幅能';

  @override
  String get shipSystemCodexCardFluxPerSecond => '每秒幅能';

  @override
  String get shipSystemCodexCardMaxUses => '最大使用次数';

  @override
  String get shipSystemCodexCardRegen => '回复速率';

  @override
  String get shipSystemCodexCardCooldown => '冷却时间';

  @override
  String get shipSystemCodexCardToggle => '切换';

  @override
  String get shipSystemCodexCardPhaseCloak => '相位隐身';

  @override
  String get app_action_buttonsReportABug => '报告 bug';
}
