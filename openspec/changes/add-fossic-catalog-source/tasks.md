# Tasks: add-fossic-catalog-source

## Models & conversion

- [x] `lib/catalog/models/fossic_mod.dart` — hand-parsed `FossicMod` /
  `FossicRelease` / `FossicThreadMeta` / `FossicMeta`, entity decoding,
  `fossicThreadIdFromUrl` (fossic.org hosts only), built-in category /
  language / type name tables.
- [x] `lib/catalog/fossic_catalog_converter.dart` — fossic mods →
  `ModRepoEntry` list + per-thread `ForumModIndex` map (`FossicCatalogData`).
  Releases sorted newest game version first; type + category + language become
  category chips; translators listed as "…（汉化）".
- [x] `ModRepoEntry` gains `modId`, `gameVersions`, `downloadReleases`
  (`ModRepoDownload`); dart_mappable regenerated.

## Source switching

- [x] `CatalogDataSourceSetting` (auto / wisp / fossic) in
  `lib/catalog/models/catalog_data_source.dart`, stored in Settings.
- [x] `catalog_manager.dart`: fossic fetchers (mods + 2 meta endpoints),
  `activeCatalogDataSourceProvider` (auto = locale), `wisp` /
  `fossicCatalogDataProvider`s, `fossicForumIndexByTid`,
  `browseModsNotifierProvider` dispatches by source.
- [x] `forum_data_manager.dart`: skip the (large) English forum bundle and its
  details parse while the fossic source is active.
- [x] `catalogModsProvider` looks fossic entries up only in the fossic map
  (the two forums' thread ids are different id spaces).

## Matching, filters, downloads

- [x] `matchCatalogToInstalled`: new `modId` clue (after saved records, before
  thread id).
- [x] Game Version filter matches against all of a mod's `gameVersions`.
- [x] `resolveDownloadCandidates`: each `ModRepoDownload` becomes a one-click
  candidate labeled "game · file · size"; single `DirectDownload` kept as the
  fallback for the English repo.

## Identifying traffic

- [x] `Constants.userAgent` = "TriOS/<version>".
- [x] Sent by `TriOSHttpClient` (unless the caller overrides it) and
  `CachedJsonFetcher`.

## UI & l10n

- [x] Data Sources dialog: source switcher (auto / English / Chinese) and a
  fossic status card with refresh / clear.
- [x] en + zh arb strings; gen-l10n run.

## Verification

- [x] `test/fossic_catalog_test.dart` (9 tests: parse, convert, release
  ordering, thread-id extraction, download candidates).
- [x] `test/catalog/catalog_links_test.dart`: modId match + fossic-tid
  never-matches-English-thread guard.
- [x] `flutter analyze` clean on all touched files; full `flutter test` green
  except pre-existing environment-dependent `7zip_test.dart` failures
  (hardcoded `F:\Downloads\…` fixture missing on this machine).
