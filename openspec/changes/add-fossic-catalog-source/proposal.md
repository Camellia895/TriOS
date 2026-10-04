# Add fossic catalog source

Status: done

Adapt the Catalog page for the Chinese community: let it browse the Fossic
forum's (fossic.org) mod index — original, translated, and reposted mods with
Chinese names, summaries, and categories — instead of (or alongside) the
English forum's scraped index. Requests to fossic.org identify themselves with
a TriOS User-Agent so the forum can count mod-manager traffic.

## Problem

The Catalog only reads Wisp's Mod Repo, an English-forum scrape. Chinese users
browse mods named in English, read English summaries, and download from
English hosts, while their community maintains a full mod index with direct
attachment downloads at https://api.fossic.org (API docs:
https://api.fossic.org/docs#/).

## Solution

- A fossic source: fetch `/mods?include_modding=true` plus the two `/meta`
  endpoints, and convert each mod into the existing `ModRepoEntry` shape so
  the whole catalog pipeline (search, filters, cards, matching, downloads)
  works unchanged. Per-thread stats (views, heat) become `ForumModIndex`
  entries in their own id space, so sort keys keep working.
- A data source setting (`auto` follows the UI language — Chinese users get
  fossic; `wisp` / `fossic` force one), switched in the Catalog Data Sources
  dialog, which gains a fossic status card.
- Every fossic attachment becomes a one-click download candidate
  ("0.98 · AEF-0.98 · 35.1 MB"), newest game version first; the button runs
  the newest and the menu lists the rest. The links are Discuz attachment
  redirects (two hops to the fossic CDN) — the existing downloader already
  follows them.
- Catalog entries match installed mods by Starsector mod id (`modId`), a new
  clue in `matchCatalogToInstalled` — the only reliable one, since fossic
  names are Chinese and installed mods' names aren't.
- A `TriOS/<version>` User-Agent on TriOS's own HTTP requests (client, JSON
  fetcher, downloader).

## Out of scope / known gaps

- The fossic API doesn't say which attachment is the mod's main archive
  versus a patch or add-on, and gives no reply counts (heat is used as the
  stand-in). If the forum later adds an "is main file" flag or reply count,
  the converter should use them.
- `download_url` values are redirects that could one day need login; today
  `mod_allow_direct_download` mods download without one. Mods without direct
  downloads fall back to opening their fossic thread.
- No mod images: the API serves none, so cards fall back to the installed
  mod's icon.
- Fossic categories/languages ship with built-in Chinese names; `/meta`
  fetches win when reachable.
