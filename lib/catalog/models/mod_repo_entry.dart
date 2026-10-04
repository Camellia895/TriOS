import 'package:dart_mappable/dart_mappable.dart';

part 'mod_repo_entry.mapper.dart';

/// Puts back the leading "0." on game versions that are missing it.
///
/// The catalog reads the version out of the forum thread title, so it inherits
/// whatever the mod author typed — e.g. "[97a-RC11]" or ".98a". Every real
/// Starsector version starts with "0.", and without it the version badge reads
/// wrong and the Game Version filter grows a bogus bucket.
///
/// Deliberately narrow: only a leading dot, or two or more digits before the
/// first dot. That leaves a hypothetical "1.0a" alone.
class GameVersionHook extends MappingHook {
  const GameVersionHook();

  static final _startsWithTwoDigits = RegExp(r'^\d{2}');

  @override
  dynamic beforeDecode(dynamic value) {
    if (value is! String) return value;
    final version = value.trim();
    if (version.isEmpty || version.startsWith('0.')) return value;
    if (version.startsWith('.')) return '0$version';
    if (_startsWithTwoDigits.hasMatch(version)) return '0.$version';
    return value;
  }
}

@MappableClass()
class ModRepoFile with ModRepoFileMappable {
  final List<ModRepoEntry> items;
  final String lastUpdated;

  ModRepoFile({required this.items, required this.lastUpdated});
}

@MappableClass()
class ModRepoEntry with ModRepoEntryMappable {
  final String name;
  final String? summary;
  final String? description;
  final String? modVersion;
  @MappableField(hook: GameVersionHook())
  final String? gameVersionReq;

  /// Every game version the mod ships for. The English catalog data folds
  /// this into [gameVersionReq]; fossic lists them properly, and the Game
  /// Version filter matches against all of them. Null when unknown.
  final List<String>? gameVersions;

  /// The mod's Starsector id (the `id` in mod_info.json), when the source
  /// knows it. A far stronger match against installed mods than the display
  /// name — fossic entries are named in Chinese, installed mods aren't.
  final String? modId;
  final List<String>? authorsList;
  final Map<ModUrlType, String>? urls;
  final List<ModSource>? sources;
  final List<String>? categories;
  final Map<String, ModRepoImage>? images;

  /// Per-game-version download links, newest game version first. The English
  /// catalog has at most one direct link ([ModUrlType.DirectDownload]); fossic
  /// serves one attachment per game version, and the download button offers
  /// each. Null when the source has no such list.
  final List<ModRepoDownload>? downloadReleases;
  final DateTime? dateTimeCreated;
  final DateTime? dateTimeEdited;

  /// Set only on synthesized entries: a mod that lives inside another mod's
  /// forum thread (e.g. an add-on) gets its own card, marked "part of <this
  /// thread title>". Null for real catalog entries. Built at runtime, so it's
  /// absent from the catalog data and never round-trips through it.
  final String? partOfThreadTitle;

  ModRepoEntry({
    required this.name,
    this.summary,
    this.description,
    this.modVersion,
    this.gameVersionReq,
    this.gameVersions,
    this.modId,
    this.authorsList,
    this.urls,
    this.sources,
    this.categories,
    this.images,
    this.downloadReleases,
    this.dateTimeCreated,
    this.dateTimeEdited,
    this.partOfThreadTitle,
  });

  /// True when this is a synthesized entry for a mod bundled in another mod's
  /// forum thread.
  bool get isPartOfThread => partOfThreadTitle != null;

  List<String> getAuthors() => authorsList ?? [];

  /// Authors with case-insensitive duplicates merged, keeping the first
  /// occurrence's casing and order (e.g. ["Wisp", "wisp"] -> ["Wisp"]).
  List<String> getAuthorsDeduplicated() {
    final seen = <String>{};
    return getAuthors()
        .where((author) => seen.add(author.toLowerCase()))
        .toList();
  }

  List<String> getCategories() => categories ?? [];

  List<ModSource> getSources() => sources ?? [];

  Map<String, ModRepoImage> getImages() => images ?? {};

  Map<ModUrlType, String> getUrls() => urls ?? {};

  String? getBestWebsiteUrl() {
    if (urls == null) {
      return null;
    } else if (urls!.containsKey(ModUrlType.Forum)) {
      return urls![ModUrlType.Forum]!;
    } else if (urls!.containsKey(ModUrlType.NexusMods)) {
      return urls![ModUrlType.NexusMods]!;
    }
    return null;
  }
}

@MappableEnum()
enum ModSource { Index, ModdingSubforum, Discord, NexusMods }

@MappableEnum()
enum ModUrlType { Forum, Discord, NexusMods, DirectDownload, DownloadPage }

/// One downloadable file for a catalog entry — a forum attachment with its
/// own game version and file name. Built by the fossic source at runtime;
/// the English catalog data has no equivalent.
@MappableClass()
class ModRepoDownload with ModRepoDownloadMappable {
  final String url;

  /// The forum's own label for the file, e.g. "AEF-0.98". Null when only the
  /// file name is known.
  final String? label;

  /// Archive file name, e.g. "avali_explorer_v0.6.9s2 GameVer0.98a-RC8.rar".
  final String? fileName;

  /// Game version this file is built for, e.g. "0.98".
  final String? gameVersion;
  final String? modVersion;
  final int? fileSizeBytes;
  final int? downloadCount;
  final DateTime? uploadedAt;

  ModRepoDownload({
    required this.url,
    this.label,
    this.fileName,
    this.gameVersion,
    this.modVersion,
    this.fileSizeBytes,
    this.downloadCount,
    this.uploadedAt,
  });
}

@MappableClass()
class ModRepoImage with ModRepoImageMappable {
  final String id;
  final String? filename;
  final String? description;
  final String? contentType;
  final int? size;
  final String? url;
  final String? proxyUrl;

  ModRepoImage({
    required this.id,
    this.filename,
    this.description,
    this.contentType,
    this.size,
    this.url,
    this.proxyUrl,
  });
}
