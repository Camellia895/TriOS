import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart' show StateProvider;
import 'package:trios/catalog/models/catalog_data_source.dart';
import 'package:trios/catalog/models/fossic_mod.dart';
import 'package:trios/catalog/models/forum_mod_index.dart';
import 'package:trios/catalog/models/mod_repo_entry.dart';
import 'package:trios/catalog/fossic_catalog_converter.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/utils/cached_json_fetcher.dart';
import 'package:trios/utils/logging.dart';

final isLoadingCatalog = StateProvider<bool>((ref) => false);

/// Shared fetcher for Wisp's mod repo. Exposed so the data-sources dialog
/// can introspect and clear its cache without duplicating file-name wiring.
final modRepoFetcher = CachedJsonFetcher(
  cacheFileName: 'mod_repo.json',
  metaFileName: 'mod_repo.meta',
  url: Constants.modRepoUrl,
  maxAge: Duration(hours: 6),
  logTag: 'mod repo',
);

/// Fetchers for the Fossic (fossic.org) mod index — the Chinese community's
/// mod list — and its category/language display names.
final fossicModsFetcher = CachedJsonFetcher(
  cacheFileName: 'fossic_mods.json',
  metaFileName: 'fossic_mods.meta',
  url: Constants.fossicModsUrl,
  maxAge: Duration(hours: 6),
  logTag: 'fossic mods',
);

final fossicCategoriesFetcher = CachedJsonFetcher(
  cacheFileName: 'fossic_categories.json',
  metaFileName: 'fossic_categories.meta',
  url: Constants.fossicModCategoriesUrl,
  maxAge: Duration(days: 7),
  logTag: 'fossic categories',
);

final fossicLanguagesFetcher = CachedJsonFetcher(
  cacheFileName: 'fossic_languages.json',
  metaFileName: 'fossic_languages.meta',
  url: Constants.fossicModLanguagesUrl,
  maxAge: Duration(days: 7),
  logTag: 'fossic languages',
);

/// Which mod index the Catalog page shows.
enum CatalogDataSource {
  /// The English forum's scraped index (Wisp's Mod Repo).
  wisp,

  /// The Chinese forum's (fossic.org) mod index API.
  fossic,
}

/// Resolves the user's data source setting. `auto` follows the UI language:
/// Chinese-speaking users get fossic, everyone else the English forum.
final activeCatalogDataSourceProvider = Provider<CatalogDataSource>((ref) {
  final setting = ref.watch(
    appSettings.select((s) => s.catalogDataSource),
  );
  switch (setting) {
    case CatalogDataSourceSetting.wisp:
      return CatalogDataSource.wisp;
    case CatalogDataSourceSetting.fossic:
      return CatalogDataSource.fossic;
    case CatalogDataSourceSetting.auto:
      final localeCode =
          ref.watch(appSettings.select((s) => s.locale)) ??
          Platform.localeName;
      return localeCode.toLowerCase().startsWith('zh')
          ? CatalogDataSource.fossic
          : CatalogDataSource.wisp;
  }
});

/// The fossic index, fetched and converted. Lives on its own provider so the
/// per-thread data ([FossicCatalogData.forumIndexes]) is reachable without
/// re-fetching when the entries provider rebuilds.
final fossicCatalogDataProvider = FutureProvider<FossicCatalogData>((ref) async {
  final currentTime = DateTime.now();
  final rawMods = await fossicModsFetcher.fetch();
  final mods = FossicMod.parseList(rawMods);
  if (mods.isEmpty) {
    throw Exception('Fossic mod index was empty or unparseable');
  }

  final meta = await _fetchFossicMeta();
  final data = convertFossicMods(mods, meta, fetchedAt: currentTime);
  Fimber.i(
    'Parsed ${data.repoFile.items.length} fossic mods in '
    '${DateTime.now().difference(currentTime).inMilliseconds}ms',
  );
  return data;
});

/// Best-effort fetch of the forum's category and language display names.
/// Falls back to the built-in copies when the meta endpoints are unreachable —
/// the mod list matters far more than the chip labels.
Future<FossicMeta> _fetchFossicMeta() async {
  final categories = await _fetchStringMap(
    fossicCategoriesFetcher,
  );
  final languages = await _fetchStringMap(fossicLanguagesFetcher);
  return FossicMeta(categories: categories, languages: languages);
}

Future<Map<String, String>> _fetchStringMap(CachedJsonFetcher fetcher) async {
  try {
    final raw = await fetcher.fetch();
    final decoded = jsonDecode(raw);
    if (decoded is! Map) return const {};
    return decoded.map((k, v) => MapEntry(k.toString(), v.toString()));
  } catch (ex) {
    Fimber.w('Failed to fetch ${fetcher.logTag}, using built-in names', ex: ex);
    return const {};
  }
}

/// Fossic threads by tid — views, heat, and dates for the Catalog page's sort
/// keys. Keyed in its own id space; never look a fossic tid up in the English
/// forum bundle's map (or the other way around).
final fossicForumIndexByTid = Provider<Map<int, ForumModIndex>>((ref) {
  return ref.watch(fossicCatalogDataProvider).value?.forumIndexes ?? const {};
});

/// Wisp's repo, fetched and parsed. Split from [browseModsNotifierProvider] so
/// the data-sources dialog can show both sources' status independently of
/// which one is active.
final wispCatalogDataProvider = FutureProvider<ModRepoFile>((ref) async {
  final currentTime = DateTime.now();
  final modRepo = await modRepoFetcher.fetch();
  final parsed = ModRepoFileMapper.fromJson(modRepo);
  Fimber.i(
    'Parsed ${parsed.items.length} catalog mods in '
    '${DateTime.now().difference(currentTime).inMilliseconds}ms',
  );
  return parsed;
});

final browseModsNotifierProvider = StreamProvider<ModRepoFile>((ref) async* {
  ref.watch(isLoadingCatalog.notifier).state = true;

  final source = ref.watch(activeCatalogDataSourceProvider);
  try {
    final catalogMods = source == CatalogDataSource.fossic
        ? (await ref.watch(fossicCatalogDataProvider.future)).repoFile
        : await ref.watch(wispCatalogDataProvider.future);

    ref.watch(isLoadingCatalog.notifier).state = false;
    Fimber.i('Catalog loaded from $source: ${catalogMods.items.length} mods');

    yield catalogMods;
  } catch (ex, st) {
    Fimber.w('Failed to load $source catalog', ex: ex, stacktrace: st);
    return;
  } finally {
    ref.watch(isLoadingCatalog.notifier).state = false;
  }
});
