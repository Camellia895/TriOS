import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:trios/catalog/catalog_download_resolver.dart';
import 'package:trios/catalog/fossic_catalog_converter.dart';
import 'package:trios/catalog/models/fossic_mod.dart';
import 'package:trios/catalog/models/mod_repo_entry.dart';

/// A trimmed-down copy of a real fossic `/mods` response: an original mod with
/// attachments for three game versions, plus a translated mod without any.
const fossicOriginalJson = {
  'mod_info_type': 'original',
  'mod_id': 'AEF',
  'mod_name_cn': 'AEF-阿瓦隆远征队',
  'mod_name_en': 'Avali Explorer Fleet',
  'mod_author_names': ['Crossstar', 'MAJOR_Kai'],
  'mod_category': 'faction',
  'mod_game_versions': ['0.96', '0.98', '0.97'],
  'mod_version': 'Ver:0.6.7-Sub:2',
  'mod_allow_direct_download': true,
  'mod_safe_remove': false,
  'mod_dependency_names': ['无'],
  'mod_conflict_names': [],
  'mod_short_description': '因为&quot;异常维度共振&quot;事件抵达星区外围。',
  'mod_language': 'chinese',
  'mod_update_date': 1790092800,
  'mod_publish_urls': [
    'https://www.fossic.org/thread-18653-1-1.html',
    'http://fractalsoftworks.com/forum/index.php?topic=2550.0',
  ],
  'admin_notes': {'mod_index_comment': '', 'thread_comment': ''},
  'thread_meta': {
    'tid': 18653,
    'uid': 21243,
    'fid': 46,
    'featured_level': 0,
    'recommend_weight': 186,
    'heats': 146,
    'views': 61003,
  },
  'mod_releases': [
    {
      'attachment_id': 74349,
      'game_version_id': 'modVersion_098x',
      'game_version': '0.98',
      'mod_version': 'Ver:0.6.5-Sub:2',
      'display_name': 'AEF-0.98',
      'download_count': 11313,
      'file_name': 'avali_explorer_v0.6.9s2 GameVer0.98a-RC8.rar',
      'file_size': 36761419,
      'uploaded_at': 1790167677,
      'download_url':
          'https://www.fossic.org/forum.php?mod=misc&action=moddownload&aid=74349',
    },
    {
      'attachment_id': 74347,
      'game_version_id': 'modVersion_096x',
      'game_version': '0.96',
      'mod_version': 'Ver:0.6.5-Sub:2',
      'display_name': 'AEF-0.96',
      'download_count': 1779,
      'file_name': 'avali_explorer_v0.6.7s2 GameVer0.96a-RC10.rar',
      'file_size': 36691244,
      'uploaded_at': 1788914548,
      'download_url':
          'https://www.fossic.org/forum.php?mod=misc&action=moddownload&aid=74347',
    },
    {
      'attachment_id': 74348,
      'game_version_id': 'modVersion_097x',
      'game_version': '0.97',
      'mod_version': 'Ver:0.6.5-Sub:2',
      'display_name': null,
      'download_count': 2374,
      'file_name': 'avali_explorer_v0.6.7s2 GameVer0.97a-RC11.rar',
      'file_size': 36691244,
      'uploaded_at': 1788914548,
      // Mods that don't allow direct downloads hand back null URLs.
      'download_url': null,
    },
  ],
};

const fossicTranslatedJson = {
  'mod_info_type': 'translated',
  'mod_id': 'A_S-F',
  'mod_name_cn': 'Amazigh铸船厂',
  'mod_name_en': "Amazigh's Ship Foundry",
  'mod_author_names': ['Amazigh'],
  'mod_category': 'content',
  'mod_game_versions': ['0.95.1'],
  'mod_version': '0.9',
  'mod_releases': null,
  'mod_allow_direct_download': false,
  'mod_safe_remove': false,
  'mod_short_description': '新玩具，新敌人，新挑战.',
  'mod_language': 'chinese',
  'mod_update_date': 1675612800,
  'mod_publish_urls': ['https://www.fossic.org/forum.php?mod=viewthread&tid=7484'],
  'admin_notes': {},
  'thread_meta': {
    'tid': 7484,
    'uid': 38695,
    'fid': 60,
    'featured_level': 0,
    'recommend_weight': 72,
    'heats': 78,
    'views': 43724,
  },
  'mod_translator_names': ['Klize1917', '砒霜瓜子'],
};

FossicCatalogData convert(List<Map<String, dynamic>> mods) {
  final list = FossicMod.parseList(jsonEncode(mods));
  return convertFossicMods(list, FossicMeta());
}

void main() {
  test('parses fossic mod list', () {
    final mods = FossicMod.parseList(
      jsonEncode([fossicOriginalJson, fossicTranslatedJson]),
    );
    expect(mods, hasLength(2));
    expect(mods.first.modId, 'AEF');
    expect(mods.first.nameCn, 'AEF-阿瓦隆远征队');
    expect(mods.first.releases, hasLength(3));
    expect(mods.first.threadMeta?.tid, 18653);
    // `include_modding` and other query-string shapes parse the same way.
    expect(FossicMod.parseList('not json'), isEmpty);
    expect(FossicMod.parseList('{}'), isEmpty);
  });

  test('converts an original mod into a catalog entry', () {
    final data = convert([fossicOriginalJson]);
    expect(data.repoFile.items, hasLength(1));

    final entry = data.repoFile.items.single;
    expect(entry.name, 'AEF-阿瓦隆远征队');
    expect(entry.modId, 'AEF');
    expect(entry.gameVersionReq, '0.98');
    expect(entry.gameVersions, containsAll(['0.96', '0.97', '0.98']));
    // HTML entities in the forum's text are decoded for display.
    expect(entry.summary, contains('"异常维度共振"'));
    // The fossic thread wins over the English forum link.
    expect(entry.urls![ModUrlType.Forum], contains('fossic.org'));
    // Attachment for the newest game version is the direct download.
    expect(entry.urls![ModUrlType.DirectDownload], contains('aid=74349'));
    // Chips: relationship to the community, category, language.
    expect(entry.categories, ['原创', '势力', '中文']);
  });

  test('orders releases newest game version first, skipping URL-less ones', () {
    final data = convert([fossicOriginalJson]);
    final entry = data.repoFile.items.single;

    final releases = entry.downloadReleases!;
    expect(releases, hasLength(2));
    expect(releases[0].gameVersion, '0.98');
    expect(releases[1].gameVersion, '0.96');
    expect(releases[0].fileName, 'avali_explorer_v0.6.9s2 GameVer0.98a-RC8.rar');
  });

  test('translators are listed on the card, marked as translators', () {
    final data = convert([fossicTranslatedJson]);
    final entry = data.repoFile.items.single;

    expect(entry.getAuthors(), contains('Klize1917（汉化）'));
    expect(entry.downloadReleases, isNull);
    // No direct download when the forum doesn't serve attachments.
    expect(entry.urls, isNot(contains(ModUrlType.DirectDownload)));
    expect(entry.urls![ModUrlType.Forum], contains('tid=7484'));
  });

  test('meta names win over the built-in copies', () {
    final data = convertFossicMods(
      FossicMod.parseList(jsonEncode([fossicOriginalJson])),
      FossicMeta(categories: {'faction': '派系'}, languages: {}),
    );
    expect(data.repoFile.items.single.categories, ['原创', '派系', '中文']);
  });

  test('builds per-thread forum data for sorting', () {
    final data = convert([fossicOriginalJson, fossicTranslatedJson]);

    final index = data.forumIndexes[18653];
    expect(index, isNotNull);
    expect(index!.views, 61003);
    expect(index.replies, 146); // heat stands in for reply count
    expect(index.createdDate, isNotNull);

    // The thread URL the forum published is preferred over the constructed one.
    final translated = data.forumIndexes[7484];
    expect(translated!.topicUrl, contains('tid=7484'));
  });

  test('fossic thread ids only extract from fossic URLs', () {
    expect(
      fossicThreadIdFromUrl('https://www.fossic.org/forum.php?mod=viewthread&tid=18653'),
      18653,
    );
    expect(fossicThreadIdFromUrl('https://www.fossic.org/thread-18653-1-1.html'), 18653);
    // The English forum's ids are a different id space — never extracted.
    expect(
      fossicThreadIdFromUrl('https://fractalsoftworks.com/forum/index.php?topic=18653.0'),
      isNull,
    );
    expect(fossicThreadIdFromUrl('https://evil.example.com/?tid=18653'), isNull);
    expect(fossicThreadIdFromUrl(null), isNull);
  });

  test('each release becomes a one-click download candidate', () {
    final data = convert([fossicOriginalJson]);
    final entry = data.repoFile.items.single;

    final candidates = resolveDownloadCandidates(entry, null);
    final direct = candidates
        .where((c) => c.kind == DownloadCandidateKind.catalogDirect)
        .toList();
    expect(direct, hasLength(2));
    // Newest game version first — that's what the download button runs.
    expect(direct.first.url, contains('aid=74349'));
    expect(direct.first.label, startsWith('0.98'));
    expect(direct.first.label, contains('MB')); // human-readable size
    expect(direct.first.isOneClick, isTrue);
  });

  test('installed mod matching uses the entry mod id', () {
    // Covered end-to-end by matchCatalogToInstalled; here we pin the field
    // that feeds it.
    final data = convert([fossicOriginalJson]);
    expect(data.repoFile.items.single.modId, 'AEF');
  });
}
