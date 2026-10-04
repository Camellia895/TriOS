/// Read-only models for the Fossic (fossic.org) mod index API.
///
/// The API (https://api.fossic.org/docs#/) serves every mod listed on the
/// Chinese community's forum: original mods, translated ones, and reposts.
/// Each mod carries its forum thread and, when the author allows it, direct
/// download links to the forum's attachments.
///
/// Parsed by hand rather than dart_mappable: the shapes are small, the data is
/// never serialized back out, and every field is treated as optional anyway —
/// the forum's data is hand-maintained and full of nulls.
library;

import 'dart:convert';
class FossicMod {
  /// `original`, `translated`, or `reposted` — how the mod relates to the
  /// Chinese community.
  final String infoType;

  /// The mod's Starsector id (the `id` in its mod_info.json), e.g. "shaderLib".
  final String modId;

  final String nameCn;

  /// English name; always present for translated/reposted mods, often null
  /// for originals.
  final String? nameEn;

  final List<String> authorNames;

  /// Who translated it; only on `translated` mods.
  final List<String> translatorNames;

  /// Category code, e.g. "faction" — see [fossicCategoryNames].
  final String category;

  /// Game versions the mod supports, e.g. ["0.96", "0.97", "0.98"].
  final List<String> gameVersions;

  final String modVersion;

  /// Forum attachments, one per game version the mod ships for. Null when the
  /// mod has no attachments (download via its thread instead).
  final List<FossicRelease>? releases;

  /// Whether the forum serves attachment downloads without a login.
  final bool allowDirectDownload;

  final bool safeRemove;

  /// Required mods by name, e.g. ["LazyLib", "MagicLib"] — or ["无"] ("none").
  final List<String> dependencyNames;
  final List<String> conflictNames;

  final String shortDescription;

  /// Language code, e.g. "chinese" — see [fossicLanguageNames].
  final String language;

  /// Last update, seconds since epoch.
  final int updateDate;

  /// Links to the mod's threads/pages, mostly fossic.org and the original
  /// English forum.
  final List<String> publishUrls;

  final FossicThreadMeta? threadMeta;

  FossicMod({
    required this.infoType,
    required this.modId,
    required this.nameCn,
    this.nameEn,
    this.authorNames = const [],
    this.translatorNames = const [],
    required this.category,
    this.gameVersions = const [],
    required this.modVersion,
    this.releases,
    required this.allowDirectDownload,
    required this.safeRemove,
    this.dependencyNames = const [],
    this.conflictNames = const [],
    required this.shortDescription,
    required this.language,
    required this.updateDate,
    this.publishUrls = const [],
    this.threadMeta,
  });

  static List<FossicMod> parseList(String rawJson) {
    final Object? decoded;
    try {
      decoded = jsonDecode(rawJson);
    } catch (_) {
      // Corrupt cache or a bad response — the caller treats empty as a
      // failed load and shows the catalog as unavailable.
      return const [];
    }
    if (decoded is! List) return const [];
    return decoded
        .whereType<Map>()
        .map((m) => _fromMap(Map<String, dynamic>.from(m)))
        .whereType<FossicMod>()
        .toList();
  }

  static FossicMod? _fromMap(Map<String, dynamic> m) {
    final modId = m['mod_id']?.toString();
    final nameCn = m['mod_name_cn']?.toString();
    if (modId == null || modId.isEmpty || nameCn == null) return null;
    return FossicMod(
      infoType: m['mod_info_type']?.toString() ?? 'original',
      modId: modId,
      nameCn: nameCn,
      nameEn: m['mod_name_en']?.toString(),
      authorNames: _stringList(m['mod_author_names']),
      translatorNames: _stringList(m['mod_translator_names']),
      category: m['mod_category']?.toString() ?? '',
      gameVersions: _stringList(m['mod_game_versions']),
      modVersion: m['mod_version']?.toString() ?? '',
      releases: (m['mod_releases'] as List?)
          ?.whereType<Map>()
          .map((r) => FossicRelease._fromMap(Map<String, dynamic>.from(r)))
          .whereType<FossicRelease>()
          .toList(),
      allowDirectDownload: m['mod_allow_direct_download'] == true,
      safeRemove: m['mod_safe_remove'] == true,
      dependencyNames: _stringList(m['mod_dependency_names']),
      conflictNames: _stringList(m['mod_conflict_names']),
      shortDescription: m['mod_short_description']?.toString() ?? '',
      language: m['mod_language']?.toString() ?? '',
      updateDate: (m['mod_update_date'] as num?)?.toInt() ?? 0,
      publishUrls: _stringList(m['mod_publish_urls']),
      threadMeta: FossicThreadMeta._fromMap(m['thread_meta']),
    );
  }
}

class FossicRelease {
  final int attachmentId;

  /// Game version this attachment is built for, e.g. "0.98".
  final String gameVersion;
  final String modVersion;

  /// Forum-side label, e.g. "AEF-0.98".
  final String? displayName;
  final int? downloadCount;

  /// Archive file name, e.g. "avali_explorer_v0.6.9s2 GameVer0.98a-RC8.rar".
  final String? fileName;
  final int? fileSize;

  /// Seconds since epoch.
  final int? uploadedAt;

  /// The forum's attachment download link. Redirects (twice) to the CDN file.
  /// Null when the mod doesn't allow direct downloads.
  final String? downloadUrl;

  FossicRelease({
    required this.attachmentId,
    required this.gameVersion,
    required this.modVersion,
    this.displayName,
    this.downloadCount,
    this.fileName,
    this.fileSize,
    this.uploadedAt,
    this.downloadUrl,
  });

  static FossicRelease? _fromMap(Map<String, dynamic> m) {
    final attachmentId = (m['attachment_id'] as num?)?.toInt();
    if (attachmentId == null) return null;
    return FossicRelease(
      attachmentId: attachmentId,
      gameVersion: m['game_version']?.toString() ?? '',
      modVersion: m['mod_version']?.toString() ?? '',
      displayName: m['display_name']?.toString(),
      downloadCount: (m['download_count'] as num?)?.toInt(),
      fileName: m['file_name']?.toString(),
      fileSize: (m['file_size'] as num?)?.toInt(),
      uploadedAt: (m['uploaded_at'] as num?)?.toInt(),
      downloadUrl: m['download_url']?.toString(),
    );
  }
}

class FossicThreadMeta {
  final int tid;
  final int views;

  /// The forum's "heat" score — its stand-in for discussion volume.
  final int heats;

  FossicThreadMeta({required this.tid, required this.views, required this.heats});

  static FossicThreadMeta? _fromMap(dynamic value) {
    if (value is! Map) return null;
    final m = Map<String, dynamic>.from(value);
    final tid = (m['tid'] as num?)?.toInt();
    if (tid == null) return null;
    return FossicThreadMeta(
      tid: tid,
      views: (m['views'] as num?)?.toInt() ?? 0,
      heats: (m['heats'] as num?)?.toInt() ?? 0,
    );
  }
}

/// The `/meta/mod_categories` and `/meta/mod_languages` responses: code →
/// display name, both maintained by the forum.
class FossicMeta {
  final Map<String, String> categories;
  final Map<String, String> languages;

  FossicMeta({this.categories = const {}, this.languages = const {}});
}

List<String> _stringList(dynamic value) {
  if (value is! List) return const [];
  return value.whereType<Object>().map((e) => e.toString()).toList();
}

/// Decodes the handful of HTML entities the forum's text uses (`&quot;` and
/// friends). The API hands back escaped strings; the catalog shows them raw.
String decodeFossicText(String text) {
  if (!text.contains('&')) return text;
  return text
      .replaceAll('&quot;', '"')
      .replaceAll('&#39;', "'")
      .replaceAll('&apos;', "'")
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&amp;', '&');
}

/// The fossic thread id in a mod's forum URL, e.g. 18653 from
/// `forum.php?mod=viewthread&tid=18653`. Only fossic.org URLs count — the
/// English forum's `topic=` ids are a different id space, and the two must
/// never be looked up in each other's maps.
int? fossicThreadIdFromUrl(String? url) {
  if (url == null) return null;
  final uri = Uri.tryParse(url);
  final host = uri?.host.toLowerCase() ?? '';
  if (!(host == 'fossic.org' || host.endsWith('.fossic.org'))) return null;
  final tid = uri?.queryParameters['tid'] ?? _threadPathTid.firstMatch(url)?.group(1);
  if (tid == null) return null;
  return int.tryParse(tid);
}

final _threadPathTid = RegExp(r'thread-(\d+)-');

/// Fallback names for category/language codes, matching
/// `/meta/mod_categories` and `/meta/mod_languages`. Used when the meta
/// endpoints can't be fetched; the fetch result wins when present.
const fossicCategoryNames = {
  'faction': '势力',
  'content': '内容',
  'utility': '功能',
  'feature_overhauls': '独立',
  'ui': '美化',
  'campaign': '战役',
  'megamod': '大型',
  'library': '前置',
  'mod_extension': 'Mod扩展',
  'misc': '杂项',
};

const fossicLanguageNames = {
  'chinese': '中文',
  'english': '英文',
  'other': '其它',
  'no_text': '无文本',
};

/// How a mod relates to the Chinese community, as the forum words it.
const fossicTypeNames = {
  'original': '原创',
  'translated': '汉化',
  'reposted': '转载',
};
