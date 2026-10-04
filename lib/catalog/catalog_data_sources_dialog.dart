import 'dart:io';

import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show ProviderOrFamily;
import 'package:open_filex/open_filex.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/catalog/catalog_manager.dart';
import 'package:trios/catalog/models/catalog_data_source.dart';
import 'package:trios/catalog/forum_data_manager.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/utils/cached_json_fetcher.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/utils/logging.dart';
import 'package:trios/utils/relative_timestamp.dart';
import 'package:trios/widgets/mode_switcher.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// Opens the Catalog Data Sources dialog.
Future<void> showCatalogDataSourcesDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => const CatalogDataSourcesDialog(),
  );
}

/// Dialog showing the status of `mod_repo.json` and `forum_data_bundle.json`
/// and exposing refresh / clear actions for each.
class CatalogDataSourcesDialog extends ConsumerStatefulWidget {
  const CatalogDataSourcesDialog({super.key});

  @override
  ConsumerState<CatalogDataSourcesDialog> createState() =>
      _CatalogDataSourcesDialogState();
}

class _CatalogDataSourcesDialogState
    extends ConsumerState<CatalogDataSourcesDialog> {
  // File-system snapshots. Captured in initState and refreshed explicitly
  // after refresh/clear so we don't hit disk on every rebuild.
  DateTime? _modRepoCachedAt;
  int? _modRepoSize;
  DateTime? _fossicCachedAt;
  int? _fossicSize;
  DateTime? _forumCachedAt;
  int? _forumSize;

  @override
  void initState() {
    super.initState();
    _readSnapshots();
  }

  void _readSnapshots() {
    _modRepoCachedAt = modRepoFetcher.getCacheTimestamp();
    _modRepoSize = _fileSize(modRepoFetcher.cacheFilePath);
    _fossicCachedAt = fossicModsFetcher.getCacheTimestamp();
    _fossicSize = _fileSize(fossicModsFetcher.cacheFilePath);
    _forumCachedAt = forumDataFetcher.getCacheTimestamp();
    _forumSize = _fileSize(forumDataFetcher.cacheFilePath);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final cacheDir = Constants.cacheDirPath;

    // --- Wisp's Mod Repo state ---
    final modRepoAsync = ref.watch(wispCatalogDataProvider);
    final isLoadingMod = modRepoAsync.isLoading;
    final modRepoStatus = _statusFor(modRepoAsync, _modRepoCachedAt);
    final modRepoCount = modRepoAsync.value?.items.length;

    // --- Fossic mod index state ---
    final fossicAsync = ref.watch(fossicCatalogDataProvider);
    final isLoadingFossic = fossicAsync.isLoading;
    final fossicStatus = _statusFor(fossicAsync, _fossicCachedAt);
    final fossicCount = fossicAsync.value?.repoFile.items.length;

    // --- QB's Forum Bundle state ---
    final forumAsync = ref.watch(forumDataProvider);
    final forumStatus = _statusFor(forumAsync, _forumCachedAt);
    final forumCount = forumAsync.value?.index.length;

    final selectedSource = ref.watch(
      appSettings.select((s) => s.catalogDataSource),
    );

    return AlertDialog(
      title: Text(loc.catalogDataSourcesTitle),
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 640),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8.0,
            children: [
              Row(
                spacing: 8.0,
                children: [
                  Text(loc.catalogDataSource, style: theme.textTheme.titleSmall),
                  const Spacer(),
                  ModeSwitcher<CatalogDataSourceSetting>(
                    selected: selectedSource,
                    modes: {
                      CatalogDataSourceSetting.auto: loc.catalogDataSourceAuto,
                      CatalogDataSourceSetting.wisp: loc.catalogDataSourceWisp,
                      CatalogDataSourceSetting.fossic:
                          loc.catalogDataSourceFossic,
                    },
                    onChanged: (source) => _setDataSource(source),
                  ),
                ],
              ),
              _DataSourceCard(
                info: _DataSourceInfo(
                  title: loc.catalogWispsModRepo,
                  subtitle: loc.catalogForumIndexSubforumsAndDiscord,
                  status: modRepoStatus,
                  itemCount: modRepoCount,
                  itemNoun: loc.catalogItemNounMods,
                  cachedAt: _modRepoCachedAt,
                  ttl: modRepoFetcher.maxAge,
                  sizeBytes: _modRepoSize,
                  sourceUrl: modRepoFetcher.url,
                  localPath: modRepoFetcher.cacheFilePath,
                  isLoading: isLoadingMod,
                  website: Uri.parse(
                    "https://github.com/wispborne/StarsectorModRepo",
                  ),
                ),
                onRefresh: () => _refresh(
                  fetcher: modRepoFetcher,
                  provider: wispCatalogDataProvider,
                  alsoInvalidate: [browseModsNotifierProvider],
                ),
                onClear: () => _clear(
                  fetcher: modRepoFetcher,
                  provider: wispCatalogDataProvider,
                  alsoInvalidate: [browseModsNotifierProvider],
                ),
              ),
              _DataSourceCard(
                info: _DataSourceInfo(
                  title: loc.catalogFossicModRepo,
                  subtitle: loc.catalogFossicModRepoSubtitle,
                  status: fossicStatus,
                  itemCount: fossicCount,
                  itemNoun: loc.catalogItemNounMods,
                  cachedAt: _fossicCachedAt,
                  ttl: fossicModsFetcher.maxAge,
                  sizeBytes: _fossicSize,
                  sourceUrl: fossicModsFetcher.url,
                  localPath: fossicModsFetcher.cacheFilePath,
                  isLoading: isLoadingFossic,
                  website: Uri.parse("https://www.fossic.org"),
                ),
                onRefresh: () => _refresh(
                  fetcher: fossicModsFetcher,
                  provider: fossicCatalogDataProvider,
                  alsoInvalidate: [browseModsNotifierProvider],
                ),
                onClear: () => _clear(
                  fetcher: fossicModsFetcher,
                  provider: fossicCatalogDataProvider,
                  alsoInvalidate: [browseModsNotifierProvider],
                ),
              ),
              _DataSourceCard(
                info: _DataSourceInfo(
                  title: loc.catalogQbsForumBundle,
                  subtitle: loc.catalogForumIndexSubforumsPostsStats,
                  status: forumStatus,
                  itemCount: forumCount,
                  itemNoun: loc.catalogItemNounThreads,
                  cachedAt: _forumCachedAt,
                  ttl: forumDataFetcher.maxAge,
                  sizeBytes: _forumSize,
                  sourceUrl: forumDataFetcher.url,
                  localPath: forumDataFetcher.cacheFilePath,
                  isLoading: forumAsync.isLoading,
                  website: Uri.parse(
                    "https://github.com/theRoastSuckling/QBForumModData",
                  ),
                ),
                onRefresh: () => _refresh(
                  fetcher: forumDataFetcher,
                  provider: forumDataProvider,
                ),
                onClear: () => _clear(
                  fetcher: forumDataFetcher,
                  provider: forumDataProvider,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        MovingTooltipWidget.text(
          message: loc.catalogOpenCacheFolderTooltip,
          child: TextButton.icon(
            icon: const Icon(Icons.folder_open),
            label: Text(loc.catalogOpenCacheFolder),
            style: TextButton.styleFrom(
              foregroundColor: theme.colorScheme.onSurfaceVariant,
            ),
            onPressed: () {
              OpenFilex.open(cacheDir.path);
            },
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(loc.catalogClose),
        ),
      ],
    );
  }

  void _setDataSource(CatalogDataSourceSetting source) {
    try {
      ref
          .read(appSettings.notifier)
          .update((curr) => curr.copyWith(catalogDataSource: source));
    } catch (e, st) {
      Fimber.w('Failed to save catalog data source', ex: e, stacktrace: st);
    }
  }

  Future<void> _refresh({
    required CachedJsonFetcher fetcher,
    required ProviderOrFamily provider,
    List<ProviderOrFamily> alsoInvalidate = const [],
  }) async {
    try {
      await fetcher.fetch(bypassCache: true);
    } catch (ex, st) {
      Fimber.w(
        '${fetcher.logTag} force-refresh failed',
        ex: ex,
        stacktrace: st,
      );
    }
    ref.invalidate(provider);
    for (final extra in alsoInvalidate) {
      ref.invalidate(extra);
    }
    if (mounted) setState(_readSnapshots);
  }

  void _clear({
    required CachedJsonFetcher fetcher,
    required ProviderOrFamily provider,
    List<ProviderOrFamily> alsoInvalidate = const [],
  }) {
    fetcher.clearCache();
    ref.invalidate(provider);
    for (final extra in alsoInvalidate) {
      ref.invalidate(extra);
    }
    setState(_readSnapshots);
  }

  int? _fileSize(String path) {
    try {
      return File(path).statSync().size;
    } catch (_) {
      return null;
    }
  }

  _DataSourceStatus _statusFor(AsyncValue value, DateTime? cachedAt) {
    if (value.hasError) return _DataSourceStatus.error;
    if (value.isLoading && !value.hasValue) return _DataSourceStatus.loading;
    if (value.hasValue) return _DataSourceStatus.loaded;
    if (cachedAt == null) return _DataSourceStatus.notCached;
    return _DataSourceStatus.loading;
  }
}

enum _DataSourceStatus { notCached, loading, loaded, error }

class _DataSourceInfo {
  final String title;
  final String subtitle;
  final _DataSourceStatus status;
  final int? itemCount;
  final String itemNoun;
  final DateTime? cachedAt;
  final Duration ttl;
  final int? sizeBytes;
  final String sourceUrl;
  final String localPath;
  final bool isLoading;
  final Uri website;

  const _DataSourceInfo({
    required this.title,
    required this.subtitle,
    required this.status,
    required this.itemCount,
    required this.itemNoun,
    required this.cachedAt,
    required this.ttl,
    required this.sizeBytes,
    required this.sourceUrl,
    required this.localPath,
    required this.isLoading,
    required this.website,
  });
}

class _DataSourceCard extends StatelessWidget {
  final _DataSourceInfo info;
  final Future<void> Function() onRefresh;
  final VoidCallback onClear;

  const _DataSourceCard({
    required this.info,
    required this.onRefresh,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final neutral = theme.colorScheme.onSurfaceVariant;
    final canClear = info.sizeBytes != null || info.cachedAt != null;

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const .all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(info.title, style: theme.textTheme.titleMedium),
                      Text(
                        info.subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: neutral,
                          fontStyle: .italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                MovingTooltipWidget.text(
                  message: _statusLabel(info.status, loc),
                  child: _StatusDot(status: info.status),
                ),
              ],
            ),
            Text(
              _metadataSummary(loc),
              style: theme.textTheme.bodySmall?.copyWith(color: neutral),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 56,
                  child: Text(
                    loc.catalogSource,
                    style: theme.textTheme.bodySmall?.copyWith(color: neutral),
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    info.sourceUrl,
                    style: theme.textTheme.bodySmall,
                    maxLines: 2,
                  ),
                ),
                MovingTooltipWidget.text(
                  message: loc.catalogCopyUrl,
                  child: IconButton(
                    icon: const Icon(Icons.copy, size: 16),
                    tooltip: '',
                    color: neutral,
                    visualDensity: VisualDensity.compact,
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: info.sourceUrl));
                    },
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 56,
                  child: Text(
                    loc.catalogDataSourcesDialogPath,
                    style: theme.textTheme.bodySmall?.copyWith(color: neutral),
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    info.localPath,
                    style: theme.textTheme.bodySmall,
                    maxLines: 3,
                  ),
                ),
                MovingTooltipWidget.text(
                  message: loc.catalogOpenFile,
                  child: IconButton(
                    icon: const Icon(Icons.folder_open, size: 16),
                    tooltip: '',
                    color: neutral,
                    visualDensity: VisualDensity.compact,
                    onPressed: () {
                      info.localPath.openAsUriInBrowser();
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 8.0,
              children: [
                TextButton.icon(
                  onPressed: () => info.website.toString().openAsUriInBrowser(),
                  icon: const Icon(Icons.open_in_new, size: 18),
                  label: Text(loc.catalogWebsite),
                ),
                Spacer(),
                MovingTooltipWidget.text(
                  message: info.isLoading
                      ? loc.catalogRefreshDisabledWhileLoading
                      : loc.catalogFetchFreshData,
                  child: TextButton.icon(
                    icon: const Icon(Icons.refresh, size: 18),
                    label: Text(loc.catalogRefreshNow),
                    style: TextButton.styleFrom(foregroundColor: neutral),
                    onPressed: info.isLoading ? null : () => onRefresh(),
                  ),
                ),
                MovingTooltipWidget.text(
                  message: canClear
                      ? loc.catalogDeleteCachedFiles
                      : loc.catalogNothingCachedToClear,
                  child: TextButton.icon(
                    icon: const Icon(Icons.delete_outline, size: 18),
                    label: Text(loc.catalogClearCache),
                    style: TextButton.styleFrom(foregroundColor: neutral),
                    onPressed: canClear ? onClear : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _statusLabel(_DataSourceStatus s, AppLocalizations loc) {
    switch (s) {
      case _DataSourceStatus.notCached:
        return loc.catalogDataSourcesDialogNotCached;
      case _DataSourceStatus.loading:
        return loc.catalogDataSourcesDialogLoading;
      case _DataSourceStatus.loaded:
        return loc.catalogDataSourcesDialogLoaded;
      case _DataSourceStatus.error:
        return loc.commonError;
    }
  }

  String _metadataSummary(AppLocalizations loc) {
    final parts = <String>[];

    if (info.itemCount != null) {
      parts.add('${info.itemCount!} ${info.itemNoun}');
    } else {
      parts.add('— ${info.itemNoun}');
    }

    if (info.cachedAt != null) {
      parts.add(
        loc.catalogCachedAgeAgo(
          info.cachedAt!.ageCompact(),
          info.ttl.toCompactString(),
        ),
      );
    } else {
      parts.add(
        loc.catalogNotCachedWithTtl(info.ttl.toCompactString()),
      );
    }

    if (info.sizeBytes != null) {
      parts.add(info.sizeBytes!.bytesAsReadable());
    } else {
      parts.add('—');
    }

    return parts.join(' • ');
  }
}

class _StatusDot extends StatelessWidget {
  final _DataSourceStatus status;

  const _StatusDot({required this.status});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color color;
    switch (status) {
      case _DataSourceStatus.notCached:
        color = theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4);
        break;
      case _DataSourceStatus.loading:
        color = theme.colorScheme.primary;
        break;
      case _DataSourceStatus.loaded:
        color = theme.statusColors.success;
        break;
      case _DataSourceStatus.error:
        color = theme.colorScheme.error;
        break;
    }
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
