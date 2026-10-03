import 'dart:convert';
import 'dart:io';
import 'package:trios/widgets/snackbar.dart';

import 'package:collection/collection.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:trios/dashboard/changelogs.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/trios/deep_link/deep_link_parser.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/faction_viewer/faction_manager.dart';
import 'package:trios/mod_manager/mod_manager_extensions.dart';
import 'package:trios/mod_manager/mod_manager_logic.dart';
import 'package:trios/mod_records/mod_record_sources_dialog.dart';
import 'package:trios/models/mod.dart';
import 'package:trios/models/mod_variant.dart';
import 'package:trios/thirdparty/flutter_context_menu/flutter_context_menu.dart';
import 'package:trios/trios/app_state.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/trios/download_manager/download_manager.dart';
import 'package:trios/trios/navigation.dart';
import 'package:trios/trios/navigation_request.dart';
import 'package:trios/utils/dialogs.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/widgets/debug_info.dart';
import 'package:trios/widgets/force_game_version_warning_dialog.dart';
import 'package:trios/widgets/svg_image_icon.dart';
import 'package:url_launcher/url_launcher.dart';

MenuItem<dynamic> buildMenuItemForceChangeModGameVersion(
  String currentStarsectorVersion,
  WidgetRef ref,
  ModVariant modVariant,
) {
  final loc = AppLocalizationsSync.instance;
  return MenuItem(
    label: loc.contextMenuForceToVersion(currentStarsectorVersion),
    icon: Icons.electric_bolt,
    onSelected: () {
      showDialog(
        context: ref.context,
        builder: (context) =>
            ForceGameVersionWarningDialog(modVariant: modVariant),
      );
    },
  );
}

MenuItem<dynamic> buildMenuItemOpenForumPage(
  ModVariant modVariant,
  BuildContext context,
) {
  final hasThread = modVariant.versionCheckerInfo?.modThreadId != null;
  final hasNexusPage = modVariant.versionCheckerInfo?.modNexusId != null;
  final hasPage = hasThread || hasNexusPage;
  final loc = AppLocalizationsSync.instance;
  return MenuItem(
    label: hasThread
        ? loc.contextMenuOpenForumPage
        : hasNexusPage
        ? loc.contextMenuOpenNexusPage
        : loc.contextMenuOpenForumPageUnavailable,
    icon: Icons.open_in_browser,
    iconOpacity: hasPage ? 1 : 0.5,
    onSelected: () {
      if (hasThread) {
        launchUrl(
          Uri.parse(
            "${Constants.forumModPageUrl}${modVariant.versionCheckerInfo?.modThreadId}",
          ),
        );
      } else if (hasNexusPage) {
        launchUrl(
          Uri.parse(
            "${Constants.nexusModsPageUrl}${modVariant.versionCheckerInfo?.modNexusId}",
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              loc.contextMenuNoVersionCheckerForumId,
            ),
          ),
        );
      }
    },
  );
}

/// Builds a `starsector-mod://install?mod=<json>` deep link for [modVariant] and
/// copies it to the clipboard, so mod authors can publish a one-click install
/// link. Prefers the Version Checker `.version` URL (self-updating); falls back
/// to a direct download URL. Embeds the mod id so the manager can reliably tell
/// whether it's already installed (even when several mods share a forum thread).
///
/// Note: the copied link works when pasted into the OS run dialog / browser
/// address bar or used via the launcher landing page, but a raw scheme link
/// does NOT work when clicked directly from a forum post (the forum opens it in
/// a new window, which browsers block from launching a protocol handler).
MenuItem<dynamic> buildMenuItemCopyInstallLink(
  ModVariant modVariant,
  BuildContext context,
) {
  final vci = modVariant.versionCheckerInfo;
  final url = vci?.masterVersionFile ?? vci?.directDownloadURL;
  final hasUrl = url != null && url.isNotEmpty;
  final loc = AppLocalizationsSync.instance;
  return MenuItem(
    label: hasUrl
        ? loc.contextMenuCopyInstallLink
        : loc.contextMenuCopyInstallLinkUnavailable,
    icon: Icons.link,
    iconOpacity: hasUrl ? 1 : 0.5,
    onSelected: () {
      if (!hasUrl) {
        showSnackBar(
          context: context,
          type: SnackBarType.warn,
          content: Text(
            loc.contextMenuNoInstallLinkSource,
          ),
        );
        return;
      }
      final entry = jsonEncode({'url': url, 'id': modVariant.modInfo.id});
      final link =
          '$deepLinkScheme://install?mod=${Uri.encodeComponent(entry)}';
      Clipboard.setData(ClipboardData(text: link));
      showSnackBar(
        context: context,
        type: SnackBarType.info,
        content: Text(loc.contextMenuInstallLinkCopiedTo),
      );
    },
  );
}

/// Opens the dialog that shows, and lets the user edit, where a mod came from.
MenuItem buildMenuItemModSources(Mod mod, BuildContext context) {
  final loc = AppLocalizationsSync.instance;
  return MenuItem(
    label: loc.contextMenuModSources,
    icon: Icons.source,
    onSelected: () => showModRecordSourcesDialog(
      context,
      mod.id,
      mod.findFirstEnabledOrHighestVersion?.modInfo.nameOrId ?? mod.id,
    ),
  );
}

MenuItem buildMenuItemOpenFolder(Mod mod) {
  final loc = AppLocalizationsSync.instance;
  if (mod.modVariants.length == 1) {
    return buildOpenSingleFolderMenuItem(
      mod.modVariants.first.modFolder.absolute,
    );
  } else {
    return MenuItem.submenu(
      label: loc.contextMenuOpenFolder,
      icon: Icons.folder,
      onSelected: () {
        mod.findFirstEnabledOrHighestVersion?.modFolder.absolute.path
            .openAsUriInBrowser();
      },
      items: [
        for (var variant in mod.modVariants.sortedDescending())
          buildOpenSingleFolderMenuItem(
            variant.modFolder.absolute,
            label: variant.modInfo.version.toString(),
          ),
      ],
    );
  }
}

MenuItem<dynamic> buildOpenSingleFolderMenuItem(
  Directory folder, {
  Directory? secondFolder,
  String label = 'Open Folder',
}) {
  return MenuItem(
    label: label,
    icon: Icons.folder,
    onSelected: () {
      folder.path.openAsUriInBrowser();

      if (secondFolder != null && secondFolder.path != folder.path) {
        secondFolder.path.openAsUriInBrowser();
      }
    },
  );
}

MenuItem buildMenuItemChangeVersion(Mod mod, WidgetRef ref) {
  final loc = AppLocalizationsSync.instance;
  final enabledSmolId = mod.findFirstEnabled?.smolId;
  final isEnabled = enabledSmolId != null;

  return MenuItem.submenu(
    label: loc.contextMenuChangeTo,
    icon: Icons.toggle_on,
    onSelected: () {
      if (isEnabled) {
        // Don't need changeActiveModVariantWithForceModGameVersionDialogIfNeeded because we're disabling the mod.
        ref.watch(modManager.notifier).changeActiveModVariant(mod, null);
      } else {
        ref
            .watch(modManager.notifier)
            .changeActiveModVariantWithForceModGameVersionDialogIfNeeded(
              mod,
              mod.findHighestVersion,
            );
      }
    },
    items: [
      if (isEnabled)
        MenuItem(
          label: loc.triosDisable,
          icon: Icons.close,
          onSelected: () {
            ref.watch(modManager.notifier).changeActiveModVariant(mod, null);
          },
        ),
      for (var variant in mod.modVariants.sortedDescending())
        MenuItem(
          icon: variant.smolId == enabledSmolId
              ? Icons.power_settings_new
              : null,
          label:
              variant.modInfo.version.toString() +
              (variant.smolId == enabledSmolId ? " (enabled)" : ""),
          onSelected: () {
            ref
                .watch(modManager.notifier)
                .changeActiveModVariantWithForceModGameVersionDialogIfNeeded(
                  mod,
                  variant,
                );
          },
        ),
    ],
  );
}

MenuItem buildMenuItemOpenModInfoFile(Mod mod) {
  final loc = AppLocalizationsSync.instance;
  final modVariant = mod.findFirstEnabledOrHighestVersion!;
  return MenuItem(
    label: loc.contextMenuOpenModInfoJson,
    icon: Icons.edit_note,
    onSelected: () {
      launchUrl(
        Uri.parse(
          "file:${getModInfoFile(modVariant.modFolder)?.absolute.path}",
        ),
      );
    },
  );
}

MenuItem menuItemDeleteFolder(Mod mod, BuildContext context, WidgetRef ref) {
  final loc = AppLocalizationsSync.instance;
  if (mod.modVariants.length == 1) {
    return MenuItem(
      label: loc.contextMenuDeleteMod,
      icon: Icons.delete,
      onSelected: () {
        showDeleteModFoldersConfirmationDialog(
          [mod.modVariants.first],
          context,
          ref,
        );
      },
    );
  } else {
    final modVariantsSorted = mod.modVariants.sortedDescending();
    return MenuItem.submenu(
      label: loc.contextMenuDeleteMod,
      icon: Icons.delete,
      items: [
        for (var variant in modVariantsSorted)
          MenuItem(
            label: variant.modInfo.version.toString(),
            onSelected: () {
              showDeleteModFoldersConfirmationDialog([variant], context, ref);
            },
          ),
        MenuItem(
          label: loc.contextMenuAllButVersion(
            modVariantsSorted.firstOrNull?.modInfo.version?.toString() ?? "",
          ),
          onSelected: () {
            showDeleteModFoldersConfirmationDialog(
              modVariantsSorted.skip(1).map((v) => v).toList(),
              context,
              ref,
            );
          },
        ),
        MenuItem(
          label: loc.contextMenuAllVersions,
          onSelected: () {
            showDeleteModFoldersConfirmationDialog(
              modVariantsSorted.map((v) => v).toList(),
              context,
              ref,
            );
          },
        ),
      ],
    );
  }
}

MenuItem menuItemDeleteMultipleMods(
  List<Mod> mods,
  BuildContext context,
  WidgetRef ref,
) {
  final loc = AppLocalizationsSync.instance;
  if (mods.length == 1) {
    return menuItemDeleteFolder(mods.first, context, ref);
  }

  return MenuItem.submenu(
    label: loc.contextMenuDeleteMods,
    icon: Icons.delete,
    items: [
      MenuItem(
        label: loc.contextMenuAllButEnabledHighest,
        onSelected: () {
          showDeleteModFoldersConfirmationDialog(
            mods
                .flatMap(
                  (mod) =>
                      mod.modVariants
                          .toList() // Copy the list to avoid modifying the original
                        ..remove(mod.findFirstEnabledOrHighestVersion!),
                )
                .map((v) => v)
                .toList(),
            context,
            ref,
          );
        },
      ),
      MenuItem(
        label: loc.contextMenuAllSelectedMods,
        onSelected: () {
          showDeleteModFoldersConfirmationDialog(
            mods.flatMap((mod) => mod.modVariants).map((v) => v).toList(),
            context,
            ref,
          );
        },
      ),
    ],
  );
}

MenuItem buildMenuItemDebugging(
  BuildContext context,
  Mod mod,
  WidgetRef ref,
  bool isGameRunning,
) {
  final latestVersionWithDirectDownload = mod.modVariants
      .sortedDescending()
      .firstWhereOrNull((v) => v.versionCheckerInfo?.hasDirectDownload == true);

  // The link a mod advertises in its version file is the first choice. If no
  // version of this mod advertises one, fall back to the link TriOS saved when
  // it downloaded the mod.
  final modsMetadata = ref.read(AppState.modsMetadata).value;
  String? savedDownloadUrl(ModVariant variant) {
    final saved = modsMetadata
        ?.getMergedModVariantMetadata(mod.id, variant.smolId)
        ?.downloadedFrom;
    return (saved == null || saved.isEmpty) ? null : saved;
  }

  final latestVersionWithSavedDownload = latestVersionWithDirectDownload != null
      ? null
      : mod.modVariants.sortedDescending().firstWhereOrNull(
          (v) => savedDownloadUrl(v) != null,
        );

  final redownloadVariant =
      latestVersionWithDirectDownload ?? latestVersionWithSavedDownload;
  final redownloadUrl =
      latestVersionWithDirectDownload?.versionCheckerInfo?.directDownloadURL ??
      (latestVersionWithSavedDownload == null
          ? null
          : savedDownloadUrl(latestVersionWithSavedDownload));

  var redownloadEnabled = redownloadUrl != null;
  final loc = AppLocalizationsSync.instance;
  return MenuItem.submenu(
    label: loc.contextMenuTroubleshoot,
    icon: Icons.bug_report,
    onSelected: () => showDebugViewDialog(context, mod),
    items: [
      MenuItem(
        label: loc.contextMenuShowRawInfo,
        icon: Icons.info_outline,
        onSelected: () => showDebugViewDialog(context, mod),
      ),
      if (!isGameRunning)
        MenuItem(
          label: (redownloadEnabled)
              ? loc.contextMenuRedownloadReinstall
              : loc.contextMenuRedownloadUnavailable,
          icon: redownloadEnabled ? Icons.downloading : null,
          onSelected: () {
            if (redownloadUrl != null && redownloadVariant != null) {
              ref
                  .read(downloadManager.notifier)
                  .downloadAndInstallMod(
                    redownloadVariant.modInfo.nameOrId,
                    redownloadUrl,
                    activateVariantOnComplete: false,
                    modInfo: redownloadVariant.modInfo,
                    sourceHint: null,
                  );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    loc.contextMenuNoDirectDownload,
                  ),
                ),
              );
            }
          },
        ),
    ],
  );
}

MenuItem buildMenuItemViewChangelog(
  Mod mod,
  WidgetRef ref,
  BuildContext context,
) {
  final versionCheckResults = ref.read(AppState.versionCheckResults).value;
  final versionCheckComparison = mod.updateCheck(versionCheckResults);
  final localVersionCheck = versionCheckComparison?.variant.versionCheckerInfo;
  final remoteVersionCheck = versionCheckComparison?.remoteVersionCheck;
  final changelogUrl = ref
      .read(AppState.changelogsProvider.notifier)
      .getChangelogUrl(localVersionCheck, remoteVersionCheck);
  final hasChangelog = changelogUrl.isNotNullOrEmpty();
  final loc = AppLocalizationsSync.instance;

  return MenuItem(
    label: hasChangelog
        ? loc.triosViewChangelog
        : loc.contextMenuViewChangelogUnavailable,
    icon: Icons.history,
    iconOpacity: hasChangelog ? 1 : 0.5,
    onSelected: () {
      if (!hasChangelog) {
        showSnackBar(
          context: context,
          type: SnackBarType.warn,
          content: Text(
            loc.contextMenuNoChangelog,
          ),
        );
        return;
      }
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Changelogs(
            mod,
            localVersionCheck,
            remoteVersionCheck,
            showVersionChips: true,
          ),
        ),
      );
    },
  );
}

MenuItem buildMenuItemCheckVram(Mod mod, WidgetRef ref) {
  return MenuItem(
    label: AppLocalizationsSync.instance.contextMenuEstimateVramUsage,
    icon: Icons.memory,
    onSelected: () {
      ref
          .read(AppState.vramEstimatorProvider.notifier)
          .startEstimating(
            variantsToCheck: [mod.findFirstEnabledOrHighestVersion!],
          );
    },
  );
}

MenuItem buildMenuItemOpenInSidebar(
  Mod mod,
  WidgetRef ref,
  Function(Mod? mod) openSidebar,
) {
  return MenuItem(
    label: AppLocalizationsSync.instance.contextMenuOpenInSidePanel,
    icon: Icons.view_sidebar,
    onSelected: () {
      openSidebar(mod);
    },
  );
}

/// The single entry for muting a mod's updates.
///
/// Clicking it mutes just the update being advertised right now. That's the
/// common case: an author ships a broken update and fixes it later, and the
/// user only wants quiet until then. A muted version un-mutes itself as soon as
/// the mod advertises a different version.
///
/// The submenu also offers muting the mod's updates for good. When there's no
/// single update to pick out, this falls back to that all-updates mute.
MenuItem buildMenuItemToggleMuteUpdates(Mod mod, WidgetRef ref) {
  final modsMetadata = ref.watch(AppState.modsMetadata).value;
  final metadata = modsMetadata?.getMergedModMetadata(mod.id);
  final areUpdatesMuted = metadata?.areUpdatesMuted == true;

  void setAllUpdatesMuted(bool muted) {
    ref
        .read(AppState.modsMetadata.notifier)
        .updateModUserMetadata(
          mod.id,
          (oldMetadata) => oldMetadata.copyWith(areUpdatesMuted: muted),
        );
    if (!muted) {
      // Checks stop while a mod is fully muted, so the cached result is stale.
      ref
          .read(AppState.versionCheckResults.notifier)
          .refresh(
            skipCache: true,
            specificVariantsToCheck: [mod.findFirstEnabledOrHighestVersion!],
            evenIfMuted: true,
          );
    }
  }

  // Already fully muted, so the only thing left to offer is turning it back on.
  if (areUpdatesMuted) {
    return MenuItem(
      label: AppLocalizationsSync.instance.contextMenuUnmuteUpdates,
      icon: Icons.notifications,
      onSelected: () => setAllUpdatesMuted(false),
    );
  }

  final versionCheckResults = ref.watch(AppState.versionCheckResults).value;
  final comparison = mod.updateCheck(versionCheckResults);
  final remoteVersion = comparison?.remoteVersionString;
  final isVersionMuted =
      remoteVersion != null && metadata?.mutedUpdateVersion == remoteVersion;

  // No single update to pick out, so offer the all-updates mute on its own.
  if (remoteVersion == null ||
      (!isVersionMuted && comparison?.hasUpdate != true)) {
    return MenuItem(
      label: AppLocalizationsSync.instance.contextMenuMuteUpdates,
      icon: Icons.notifications_off,
      onSelected: () => setAllUpdatesMuted(true),
    );
  }

  void toggleVersionMute() {
    // No re-check needed afterwards. Muting one version never stops the update
    // checks, so the cached result is already current.
    ref
        .read(AppState.modsMetadata.notifier)
        .updateModUserMetadata(
          mod.id,
          (oldMetadata) => oldMetadata.copyWith(
            mutedUpdateVersion: isVersionMuted ? null : remoteVersion,
          ),
        );
  }

  final thisUpdateLabel = isVersionMuted
      ? AppLocalizationsSync.instance.contextMenuUnmuteThisUpdate(remoteVersion)
      : AppLocalizationsSync.instance.contextMenuMuteThisUpdate(remoteVersion);
  final thisUpdateIcon = isVersionMuted
      ? Icons.notifications
      : Icons.notifications_paused;

  return MenuItem.submenu(
    label: thisUpdateLabel,
    icon: thisUpdateIcon,
    // Clicking the top-level item does the common thing straight away.
    onSelected: toggleVersionMute,
    items: [
      MenuItem(
        label: thisUpdateLabel,
        icon: thisUpdateIcon,
        onSelected: toggleVersionMute,
      ),
      MenuItem(
        label: AppLocalizationsSync.instance.contextMenuMuteAllUpdates,
        icon: Icons.notifications_off,
        onSelected: () => setAllUpdatesMuted(true),
      ),
    ],
  );
}

MenuItem buildMenuItemViewInViewer(Mod mod, WidgetRef ref) {
  final loc = AppLocalizationsSync.instance;
  final modName =
      mod.findFirstEnabledOrHighestVersion?.modInfo.nameOrId ?? mod.id;

  void navigate(TriOSTools tool) {
    ref.read(AppState.viewerFilterRequest.notifier).state = ViewerFilterRequest(
      destination: tool,
      modName: modName,
    );
    ref.read(AppState.navigationRequest.notifier).state = NavigationRequest(
      destination: tool,
    );
  }

  final factions = ref.read(mergedFactionListProvider(false));
  final modFactions =
      factions.where((f) => f.sources.any((s) => s.name == modName)).toList()
        ..sort((a, b) => a.displayName.compareTo(b.displayName));

  return MenuItem.submenu(
    label: loc.contextMenuView,
    icon: Icons.search,
    items: [
      MenuItem(
        label: loc.contextMenuShips,
        leading: SvgImageIcon("assets/images/icon-onslaught.svg"),
        onSelected: () => navigate(TriOSTools.ships),
      ),
      MenuItem(
        label: loc.contextMenuWeapons,
        leading: SvgImageIcon("assets/images/icon-target.svg"),
        onSelected: () => navigate(TriOSTools.weapons),
      ),
      MenuItem(
        label: loc.contextMenuHullmods,
        leading: SvgImageIcon("assets/images/icon-hullmod.svg"),
        onSelected: () => navigate(TriOSTools.hullmods),
      ),
      if (modFactions.isNotEmpty)
        MenuItem.submenu(
          label: loc.contextMenuFactionsCount(modFactions.length),
          icon: Icons.flag,
          items: [
            MenuItem(
              label: loc.contextMenuViewAllInFaction,
              icon: Icons.open_in_new,
              onSelected: () => navigate(TriOSTools.factions),
            ),
            const MenuDivider(),
            for (final faction in modFactions)
              MenuItem(
                label: faction.displayName,
                leading: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: faction.factionColor,
                    shape: BoxShape.circle,
                  ),
                ),
                onSelected: () => navigate(TriOSTools.factions),
              ),
          ],
        ),
      if (modFactions.isEmpty)
        MenuItem(
          label: loc.contextMenuFactions,
          icon: Icons.flag,
          onSelected: () => navigate(TriOSTools.factions),
        ),
      MenuItem(
        label: loc.contextMenuPortraits,
        leading: SvgImageIcon("assets/images/icon-account-box-outline.svg"),
        onSelected: () => navigate(TriOSTools.portraits),
      ),
    ],
  );
}
