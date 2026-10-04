import 'package:collection/collection.dart';
import 'package:trios/catalog/models/fossic_mod.dart';
import 'package:trios/catalog/models/forum_mod_index.dart';
import 'package:trios/catalog/models/mod_repo_entry.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/utils/catalog_search.dart';

/// Everything the catalog needs from one fossic fetch: the mod list shaped as
/// catalog entries, plus per-thread forum data (views, heat, dates) so the
/// page's sort keys and details header keep working.
class FossicCatalogData {
  final ModRepoFile repoFile;
  final Map<int, ForumModIndex> forumIndexes;

  const FossicCatalogData({required this.repoFile, required this.forumIndexes});
}

/// Converts the fossic mod list into the catalog's shape.
///
/// Names, summaries, and categories stay Chinese — this source exists so
/// Chinese users can browse their own forum's index. Category chips come from
/// the forum's own `/meta` names (see [fossicCategoryNames]), with the mod's
/// relationship to the community (原创/汉化/转载) and its language added to
/// the same chip group, so everything fossic can filter on lives in one place.
FossicCatalogData convertFossicMods(
  List<FossicMod> mods,
  FossicMeta meta, {
  DateTime? fetchedAt,
}) {
  final categoryNames = {
    ...fossicCategoryNames,
    ...meta.categories,
  };
  final languageNames = {...fossicLanguageNames, ...meta.languages};

  final entries = <ModRepoEntry>[];
  final forumIndexes = <int, ForumModIndex>{};

  for (final mod in mods) {
    final entry = _convertEntry(mod, categoryNames, languageNames);
    entries.add(entry);

    final tid = mod.threadMeta?.tid;
    if (tid != null && !forumIndexes.containsKey(tid)) {
      forumIndexes[tid] = _buildForumIndex(mod, entry, categoryNames);
    }
  }

  return FossicCatalogData(
    repoFile: ModRepoFile(
      items: entries,
      lastUpdated: (fetchedAt ?? DateTime.now()).toIso8601String(),
    ),
    forumIndexes: forumIndexes,
  );
}

ModRepoEntry _convertEntry(
  FossicMod mod,
  Map<String, String> categoryNames,
  Map<String, String> languageNames,
) {
  final name = decodeFossicText(mod.nameCn);
  final authors = [...mod.authorNames];
  // Translators are who Chinese users download a 汉化 for — keep them on the
  // card, marked so they don't read as the original authors.
  authors.addAll(mod.translatorNames.map((t) => '$t（汉化）'));

  final downloads = _downloadsFor(mod);
  final urls = <ModUrlType, String>{
    ModUrlType.Forum: _forumUrlFor(mod),
    if (downloads.isNotEmpty) ModUrlType.DirectDownload: downloads.first.url,
    for (final url in mod.publishUrls)
      if (url.contains('nexusmods.com')) ModUrlType.NexusMods: url,
    for (final url in mod.publishUrls)
      if (url.contains('discord.com') || url.contains('discord.gg'))
        ModUrlType.Discord: url,
  };

  return ModRepoEntry(
    name: name,
    summary: _plainOrEmpty(mod.shortDescription),
    modVersion: _plainOrEmpty(mod.modVersion),
    modId: mod.modId,
    gameVersionReq: _newestGameVersion(mod.gameVersions),
    gameVersions: mod.gameVersions.isEmpty ? null : mod.gameVersions,
    authorsList: authors.isEmpty ? null : authors,
    urls: urls,
    categories: _categoriesFor(mod, categoryNames, languageNames),
    downloadReleases: downloads.isEmpty ? null : downloads,
  );
}

/// The mod's forum thread: the first fossic link the forum itself publishes,
/// falling back to the thread id from the thread metadata.
String _forumUrlFor(FossicMod mod) {
  for (final url in mod.publishUrls) {
    if (fossicThreadIdFromUrl(url) != null) return url;
  }
  final tid = mod.threadMeta?.tid;
  if (tid != null) return Constants.fossicThreadUrl(tid);
  return mod.publishUrls.firstOrNull ?? '';
}

List<ModRepoDownload> _downloadsFor(FossicMod mod) {
  final releases = (mod.releases ?? const <FossicRelease>[])
      .where((r) => r.downloadUrl?.isNotEmpty == true)
      .toList()
    ..sort((a, b) {
      // Newest game version first, then the freshest upload of that version.
      final byVersion = compareVersions(b.gameVersion, a.gameVersion);
      if (byVersion != 0) return byVersion;
      return (b.uploadedAt ?? 0).compareTo(a.uploadedAt ?? 0);
    });
  return [
    for (final release in releases)
      ModRepoDownload(
        url: release.downloadUrl!,
        label: _plainOrEmpty(release.displayName),
        fileName: _plainOrEmpty(release.fileName),
        gameVersion: _plainOrEmpty(release.gameVersion),
        modVersion: _plainOrEmpty(release.modVersion),
        fileSizeBytes: release.fileSize,
        downloadCount: release.downloadCount,
        uploadedAt: release.uploadedAt == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(release.uploadedAt! * 1000),
      ),
  ];
}

List<String> _categoriesFor(
  FossicMod mod,
  Map<String, String> categoryNames,
  Map<String, String> languageNames,
) {
  final result = <String>[];
  void add(String? value) {
    final trimmed = value?.trim() ?? '';
    if (trimmed.isEmpty || result.contains(trimmed)) return;
    result.add(trimmed);
  }

  add(fossicTypeNames[mod.infoType] ?? mod.infoType);
  add(categoryNames[mod.category] ?? mod.category);
  add(languageNames[mod.language] ?? mod.language);
  return result;
}

ForumModIndex _buildForumIndex(
  FossicMod mod,
  ModRepoEntry entry,
  Map<String, String> categoryNames,
) {
  final thread = mod.threadMeta!;
  final updated = DateTime.fromMillisecondsSinceEpoch(mod.updateDate * 1000);
  final latestUpload = (mod.releases ?? const <FossicRelease>[])
      .where((r) => r.uploadedAt != null)
      .map((r) => r.uploadedAt!)
      .fold<int?>(null, (a, b) => (a == null || b > a) ? b : a);

  return ForumModIndex(
    topicId: thread.tid,
    title: entry.name,
    category: categoryNames[mod.category] ?? mod.category,
    inModIndex: true,
    isArchivedModIndex: false,
    gameVersion: entry.gameVersionReq,
    author: entry.getAuthors().join(', '),
    // The forum tracks heat rather than reply count; it's the closest thing
    // to a "most discussed" measure the API offers.
    replies: thread.heats,
    views: thread.views,
    // The API exposes the mod's last update, not the thread's creation date —
    // "Newest" sorts by recently-updated, which is what fossic's own index
    // orders by too.
    createdDate: updated,
    lastPostDate: latestUpload == null
        ? updated
        : DateTime.fromMillisecondsSinceEpoch(latestUpload * 1000),
    topicUrl: _forumUrlFor(mod),
    isWip: false,
  );
}

String? _newestGameVersion(List<String> versions) {
  if (versions.isEmpty) return null;
  var newest = versions.first;
  for (final version in versions.skip(1)) {
    if (compareVersions(version, newest) > 0) newest = version;
  }
  return newest;
}

String? _plainOrEmpty(String? text) {
  final trimmed = text?.trim() ?? '';
  if (trimmed.isEmpty) return null;
  final decoded = decodeFossicText(trimmed);
  return decoded.isEmpty ? null : decoded;
}
