import 'dart:io';

import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';
import 'package:trios/companion_mod/companion_mod_manager.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/mod_manager/mod_manager_logic.dart';
import 'package:trios/thirdparty/dartx/iterable.dart';
import 'package:trios/trios/deep_link/protocol_registration.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/trios/settings/settings.dart';
import 'package:trios/utils/dialogs.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/utils/logging.dart';
import 'package:trios/utils/util.dart';
import 'package:trios/widgets/changelog_viewer.dart';
import 'package:trios/widgets/checkbox_with_label.dart';
import 'package:trios/widgets/disable.dart';
import 'package:trios/widgets/game_paths_widget/game_paths_widget.dart';
import 'package:trios/widgets/moving_tooltip.dart';
import 'package:trios/widgets/rainbow/themed_progress_indicator.dart';
import 'package:trios/widgets/settings_group.dart';
import 'package:trios/widgets/snackbar.dart';
import 'package:trios/widgets/svg_image_icon.dart';
import 'package:trios/widgets/text_with_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trios/widgets/trios_dropdown_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../models/version.dart';
import '../../themes/theme.dart';
import '../../themes/theme_manager.dart';
import '../../themes/theme_modifiers.dart';
import '../../themes/user_themes.dart';
import '../../widgets/restartable_app.dart';
import '../../widgets/trios_dropdown_menu.dart';
import '../../widgets/trios_expansion_tile.dart';
import '../app_state.dart';
import '../constants.dart';
import '../toasts/widgets/self_update_toast.dart';
import 'debug_section.dart';

class SettingsPage extends ConsumerStatefulWidget {
  final double pagePadding;

  const SettingsPage({super.key, required this.pagePadding});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  final _windowScaleTextController = TextEditingController();
  final _scrollController = ScrollController();

  // 1.0 is 100%, 1.25 is 125%
  double newWindowScaleDouble = 1.0;
  bool isInstallingCompanionMod = false;

  @override
  void initState() {
    super.initState();

    newWindowScaleDouble = ref.read(appSettings).windowScaleFactor;
    _windowScaleTextController.text = (newWindowScaleDouble * 100.0)
        .toStringAsFixed(1);
  }

  Widget _showChangelogButton(BuildContext context, WidgetRef ref) {
    final loc = AppLocalizations.of(context);
    return ElevatedButton(
      child: Text(loc.settingsShowChangelog),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: SizedBox(
                width: 600,
                height: 1200,
                child: TriOSChangelogViewer(
                  lastestVersionToShow:
                      ref.read(
                            appSettings.select(
                              (value) => value.updateToPrereleases,
                            ),
                          ) ==
                          true
                      ? null
                      : Constants.currentVersion,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(loc.catalogClose),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const leftTextOptionPadding = 4.0;
    final iconColor = Theme.of(context).iconTheme.color?.withValues(alpha: 0.8);
    final loc = AppLocalizations.of(context);
    return Padding(
      padding: EdgeInsets.only(
        left: widget.pagePadding,
        top: widget.pagePadding,
        right: widget.pagePadding,
      ),
      child: Scrollbar(
        thumbVisibility: true,
        trackVisibility: false,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: EdgeInsets.only(bottom: widget.pagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SettingsGroup(
                  name: loc.settingsGroupStarsector,
                  children: [GamePathsWidget()],
                ),
                SettingsGroup(
                  name: loc.settingsGroupTriosUpdates(Constants.appName),
                  children: [
                    if (Platform.isMacOS) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          loc.settingsSelfUpdateUnavailableMac,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          ElevatedButton.icon(
                            icon: const Icon(Icons.open_in_new, size: 18),
                            label: Text(loc.settingsOpenReleasesPage),
                            onPressed: () =>
                                launchUrlString(Constants.githubReleasesUrl),
                          ),
                          const SizedBox(width: 8),
                          _showChangelogButton(context, ref),
                        ],
                      ),
                    ] else ...[
                      // CheckboxWithLabel(
                      //   value: ref.watch(appSettings.select(
                      //       (value) => value.shouldAutoUpdateOnLaunch)),
                      //   onChanged: (value) {
                      //     ref.read(appSettings.notifier).update((state) =>
                      //         state.copyWith(
                      //             shouldAutoUpdateOnLaunch: value ?? false));
                      //   },
                      //   label: "Auto-update ${Constants.appName} on launch",
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: MovingTooltipWidget.text(
                          message: loc.settingsPrereleasesTooltip,
                          child: CheckboxWithLabel(
                            value: ref.watch(
                              appSettings.select(
                                (value) => value.updateToPrereleases,
                              ),
                            ),
                            onChanged: (value) {
                              ref
                                  .read(appSettings.notifier)
                                  .update(
                                    (state) => state.copyWith(
                                      updateToPrereleases: value ?? false,
                                    ),
                                  );
                            },
                            labelWidget: TextWithIcon(
                              text: loc.settingsEnableTriosPreviewReleases(
                                Constants.appName,
                              ),
                              trailing: Transform.rotate(
                                angle: 0.8,
                                child: SvgImageIcon(
                                  "assets/images/icon-experimental.svg",
                                  width: 20,
                                  color: iconColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          CheckForUpdatesButton(),
                          const SizedBox(width: 8),
                          _showChangelogButton(context, ref),
                        ],
                      ),
                    ],
                  ],
                ),
                SettingsGroup(
                  name: loc.settingsInterface,
                  children: [
                    const _ThemeDropdownRow(),
                    const SizedBox(height: 8),
                    const _FontDropdownRow(),
                    const SizedBox(height: 8),
                    const _LanguageDropdownRow(),
                    const SizedBox(height: 8),
                    const _ThemeModifiersSection(),
                    const SizedBox(height: 16),
                    Builder(
                      builder: (context) {
                        final showForceUpdateWarning = ref.watch(
                          appSettings.select((s) => s.showForceUpdateWarning),
                        );
                        return MovingTooltipWidget.text(
                          message: loc.settingsWhetherToShowThe,
                          child: CheckboxWithLabel(
                            value: showForceUpdateWarning,
                            onChanged: (bool? value) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    showForceUpdateWarning: value ?? true,
                                  ),
                                ),
                            label: loc.settingsShowForceUpdateWarning,
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (context) {
                        final showDonationButton = ref.watch(
                          appSettings.select((s) => s.showDonationButton),
                        );
                        return MovingTooltipWidget.text(
                          message: loc.settingsNoSolicitors,
                          child: CheckboxWithLabel(
                            value: showDonationButton,
                            onChanged: (bool? value) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    showDonationButton: value ?? true,
                                  ),
                                ),
                            label: loc.settingsShowDonationButton,
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (context) {
                        final showReportBugButton = ref.watch(
                          appSettings.select((s) => s.showReportBugButton),
                        );
                        return MovingTooltipWidget.text(
                          message: loc.settingsAllRightThenKeep,
                          child: CheckboxWithLabel(
                            value: showReportBugButton,
                            onChanged: (bool? value) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    showReportBugButton: value ?? true,
                                  ),
                                ),
                            label: loc.settingsShowReportBugButton,
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (context) {
                        final showLayoutToggle = ref.watch(
                          appSettings.select((s) => s.showLayoutToggle),
                        );
                        return CheckboxWithLabel(
                          value: showLayoutToggle,
                          onChanged: (bool? value) => ref
                              .read(appSettings.notifier)
                              .update(
                                (state) => state.copyWith(
                                  showLayoutToggle: value ?? true,
                                ),
                              ),
                          label: loc.settingsShowLayoutToggleButton,
                        );
                      },
                    ),
                    CheckboxWithLabel(
                      value: ref.watch(
                        appSettings.select((value) => value.useTopToolbar),
                      ),
                      onChanged: (value) {
                        ref
                            .read(appSettings.notifier)
                            .update(
                              (state) =>
                                  state.copyWith(useTopToolbar: value ?? false),
                            );
                      },
                      label: loc.settingsUseTopToolbarInstead,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MovingTooltipWidget.text(
                            message: loc.settingsWindowScaleTooltip,
                            child: SizedBox(
                              width: 90,
                              child: TextField(
                                controller: _windowScaleTextController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  isDense: true,
                                  labelText: loc.settingsTriosScale(
                                    Constants.appName,
                                  ),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .labelLarge,
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .labelLarge,
                                ),
                                onChanged: (newPath) {
                                  final newScale =
                                      double.parse(newPath) / 100.0;
                                  newWindowScaleDouble = newScale;
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text("%"),
                          const SizedBox(width: 8),
                          MovingTooltipWidget.text(
                            warningLevel: TooltipWarningLevel.warning,
                            message: loc.settingsScaleCautionTooltip,
                            child: ElevatedButton(
                              onPressed: () {
                                if (newWindowScaleDouble >= 0.50 &&
                                    newWindowScaleDouble <= 3.0) {
                                  Fimber.i(
                                    "Setting window scale to $newWindowScaleDouble",
                                  );
                                  ref.read(appSettings.notifier).update((
                                    state,
                                  ) {
                                    return state.copyWith(
                                      windowScaleFactor: newWindowScaleDouble,
                                    );
                                  });
                                }
                                // RestartableApp.restartApp(context);
                              },
                              child: Text(loc.settingsApplyUiScaling),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Builder(
                  builder: (context) {
                    final lastNVersionsSetting = ref
                        .watch(appSettings.select((s) => s.keepLastNVersions))
                        ?.coerceAtLeast(1);
                    final enableMultipleVersions = lastNVersionsSetting != 1;
                    return SettingsGroup(
                      name: loc.settingsModOrganization,
                      children: [
                        MovingTooltipWidget.text(
                          message: loc.settingsFolderNamingTooltip,
                          child: CheckboxWithLabel(
                            value:
                                ref.watch(
                                  appSettings.select(
                                    (s) => s.folderNamingSetting,
                                  ),
                                ) ==
                                FolderNamingSetting.allFoldersVersioned,
                            onChanged: (value) {
                              ref
                                  .read(appSettings.notifier)
                                  .update(
                                    (state) => state.copyWith(
                                      folderNamingSetting: value == true
                                          ? FolderNamingSetting
                                                .allFoldersVersioned
                                          : FolderNamingSetting
                                                .doNotChangeNameForHighestVersion,
                                    ),
                                  );
                            },
                            label: loc.settingsRenameAllModFolders,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: MovingTooltipWidget.text(
                            message: loc.settingsManualNamingTooltip,
                            warningLevel: TooltipWarningLevel.error,
                            child: CheckboxWithLabel(
                              value:
                                  ref.watch(
                                    appSettings.select(
                                      (s) => s.folderNamingSetting,
                                    ),
                                  ) ==
                                  FolderNamingSetting.doNotChangeNamesEver,
                              onChanged: (value) {
                                ref
                                    .read(appSettings.notifier)
                                    .update(
                                      (state) => state.copyWith(
                                        folderNamingSetting: value == true
                                            ? FolderNamingSetting
                                                  .doNotChangeNamesEver
                                            : FolderNamingSetting
                                                  .doNotChangeNameForHighestVersion,
                                      ),
                                    );
                              },
                              labelWidget: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(loc.settingsManualFolderNaming),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.warning),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        MovingTooltipWidget.text(
                          message: loc.settingsWhenCheckedUpdatingAn,
                          child: CheckboxWithLabel(
                            value:
                                ref.watch(
                                  appSettings.select(
                                    (s) => s.modUpdateBehavior,
                                  ),
                                ) ==
                                ModUpdateBehavior
                                    .switchToNewVersionIfWasEnabled,
                            onChanged: (newValue) {
                              setState(() {
                                ref
                                    .read(appSettings.notifier)
                                    .update(
                                      (s) => s.copyWith(
                                        modUpdateBehavior: newValue == true
                                            ? ModUpdateBehavior
                                                  .switchToNewVersionIfWasEnabled
                                            : ModUpdateBehavior.doNotChange,
                                      ),
                                    );
                              });
                            },
                            labelWidget: Text(loc.settingsAutoSwapOnMod),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SettingsGroup.subsection(
                          name: loc.settingsOldModVersions,
                          children: [
                            MovingTooltipWidget.text(
                              message: loc.settingsInstallingOrUpdatingA,
                              child: IntrinsicWidth(
                                child: RadioListTile(
                                  title: Text(loc.settingsKeepOnlyOneModVersion),
                                  value: false,
                                  contentPadding: const EdgeInsets.all(0),
                                  groupValue: enableMultipleVersions,
                                  onChanged: (value) => ref
                                      .read(appSettings.notifier)
                                      .update(
                                        (state) => state.copyWith(
                                          keepLastNVersions: 1,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                IntrinsicWidth(
                                  child: MovingTooltipWidget.text(
                                    message: switch (lastNVersionsSetting) {
                                      null => loc.settingsKeepVersionsNeverRemove,
                                      1 => loc.settingsKeepVersionsReplaceMod,
                                      _ =>
                                        loc.settingsKeepVersionsKeepLastN(
                                          lastNVersionsSetting,
                                        ),
                                    },
                                    child: RadioListTile(
                                      title: Text(
                                        loc.settingsKeepAllModVersions,
                                      ),
                                      value: true,
                                      contentPadding: const EdgeInsets.all(0),
                                      groupValue: enableMultipleVersions,
                                      onChanged: (value) => ref
                                          .read(appSettings.notifier)
                                          .update(
                                            (state) => state.copyWith(
                                              keepLastNVersions:
                                                  (value ?? false) ? null : 1,
                                            ),
                                          ),
                                    ),
                                  ),
                                ),
                                Disable(
                                  isEnabled: enableMultipleVersions,
                                  child: Row(
                                    children: [
                                      Text(loc.onboardingUpTo),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        child: TriOSDropdownButton<int>(
                                          value: lastNVersionsSetting,
                                          items: [
                                            for (int i = 1; i <= 10; i++)
                                              DropdownMenuItem(
                                                value: i,
                                                child: Text(" $i"),
                                              ),
                                            const DropdownMenuItem(
                                              value: null,
                                              child: Text(" ∞"),
                                            ),
                                          ],
                                          onChanged: (value) {
                                            ref
                                                .read(appSettings.notifier)
                                                .update(
                                                  (state) => state.copyWith(
                                                    keepLastNVersions: value,
                                                  ),
                                                );
                                          },
                                          isDense: true,
                                        ),
                                      ),
                                      const Text(")"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Disable(
                              isEnabled: lastNVersionsSetting != null,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: MovingTooltipWidget.text(
                                  message: switch (lastNVersionsSetting) {
                                    null => "\n${loc.settingsCleanUpPrompt}",
                                    1 =>
                                      "${loc.settingsRemoveAllButNewest}\n${loc.settingsCleanUpPrompt}",
                                    _ =>
                                      "${loc.settingsRemoveAllButNewestCount(lastNVersionsSetting)}\n${loc.settingsCleanUpPrompt}",
                                  },
                                  child: ElevatedButton.icon(
                                    icon: const SvgImageIcon(
                                      "assets/images/icon-shredder.svg",
                                    ),
                                    onPressed: () async {
                                      final modsThatWouldBeRemoved = await ref
                                          .read(modManager.notifier)
                                          .cleanUpAllModVariantsBasedOnRetainSetting(
                                            dryRun: true,
                                          );

                                      if (!context.mounted) return;
                                      showDeleteModFoldersConfirmationDialog(
                                        modsThatWouldBeRemoved,
                                        context,
                                        ref,
                                      );
                                    },
                                    label: Text(loc.settingsCleanUp),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Builder(
                          builder: (context) {
                            final concurrentExtractions = ref.watch(
                              appSettings.select(
                                (s) => s.concurrentExtractions,
                              ),
                            );
                            return MovingTooltipWidget.text(
                              message: loc.settingsConcurrentExtractionsTooltip,
                              child: Row(
                                children: [
                                  Text(loc.settingsConcurrentExtractions),
                                  const SizedBox(width: 16),
                                  SizedBox(
                                    width: 200,
                                    child: Slider(
                                      value: concurrentExtractions
                                          .clamp(1, 6)
                                          .toDouble(),
                                      min: 1,
                                      max: 6,
                                      divisions: 5,
                                      label: "$concurrentExtractions",
                                      onChanged: (value) {
                                        ref
                                            .read(appSettings.notifier)
                                            .update(
                                              (s) => s.copyWith(
                                                concurrentExtractions: value
                                                    .round(),
                                              ),
                                            );
                                      },
                                    ),
                                  ),
                                  Text(
                                    "$concurrentExtractions",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
                SettingsGroup(
                  name: loc.settingsCompanionMod,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: leftTextOptionPadding,
                      ),
                      child: Builder(
                        builder: (BuildContext context) {
                          final mods = ref.watch(AppState.mods);
                          final companionMod = mods.firstOrNullWhere(
                            (m) => m.id == Constants.companionModId,
                          );
                          final isCompanionModEnabled = mods.any(
                            (m) =>
                                m.id == Constants.companionModId &&
                                m.hasEnabledVariant,
                          );

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                loc.settingsCompanionModDescription(
                                  Constants.appName,
                                ),
                                style: theme.textTheme.labelLarge?.copyWith(
                                  fontStyle: FontStyle.italic,
                                  color: theme.textTheme.labelLarge?.color
                                      ?.withValues(alpha: 0.7),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextWithIcon(
                                text: companionMod == null
                                    ? loc.settingsCompanionModNotInstalled
                                    : isCompanionModEnabled
                                    ? loc.settingsCompanionModSetUpCorrectly
                                    : loc.settingsCompanionModNotEnabled,
                                trailing: companionMod == null
                                    ? const Icon(Icons.error)
                                    : isCompanionModEnabled
                                    ? const Icon(Icons.check)
                                    : const Icon(Icons.warning),
                                style: theme.textTheme.labelLarge,
                              ),

                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  MovingTooltipWidget.text(
                                    message: loc.settingsReinstallCompanionTooltip(
                                      Constants.appName,
                                    ),
                                    child: ElevatedButton.icon(
                                      icon: Icon(Icons.install_desktop),
                                      label: Text(
                                        companionMod != null
                                            ? loc.settingsReinstallCompanionMod
                                            : loc.settingsInstallCompanionMod,
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          isInstallingCompanionMod = true;
                                        });

                                        try {
                                          final companionModManager = ref.read(
                                            companionModManagerProvider,
                                          );
                                          await companionModManager
                                              .fullySetUpCompanionMod();
                                        } catch (e) {
                                          showSnackBar(
                                            context: ref.read(
                                              AppState.appContext,
                                            )!,
                                            content: Text(e.toString()),
                                          );
                                        } finally {
                                          setState(() {
                                            isInstallingCompanionMod = false;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                  if (isInstallingCompanionMod)
                                    SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: ThemedCircularProgressIndicator(),
                                    ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Disable(
                                isEnabled: companionMod != null,
                                child: ElevatedButton.icon(
                                  icon: Icon(Icons.folder_open),
                                  label: Text(
                                    loc.settingsOpenCompanionModFolder,
                                  ),
                                  onPressed: () async {
                                    try {
                                      companionMod
                                          ?.findFirstEnabledOrHighestVersion
                                          ?.modFolder
                                          .openInExplorer();
                                    } catch (e) {
                                      showSnackBar(
                                        context: ref.read(AppState.appContext)!,
                                        content: Text(e.toString()),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SettingsGroup(
                  name: loc.settingsMisc,
                  children: [
                    // Slider for number of seconds between mod info update checks (secondsBetweenModFolderChecks in mod_manager_logic.dart).
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: MovingTooltipWidget.text(
                        message: loc.settingsRescanTooltip(Constants.appName),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: leftTextOptionPadding,
                              ),
                              child: Text(
                                loc.settingsRescanEvery(
                                  ref.watch(
                                    appSettings.select(
                                      (value) => value.secondsBetweenModFolderChecks,
                                    ),
                                  ),
                                ),
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Slider(
                              value: ref
                                  .watch(
                                    appSettings.select(
                                      (value) =>
                                          value.secondsBetweenModFolderChecks,
                                    ),
                                  )
                                  .toDouble()
                                  .clamp(1, 30),
                              min: 1,
                              max: 30,
                              divisions: 29,
                              label:
                                  "${ref.watch(appSettings.select((value) => value.secondsBetweenModFolderChecks))}",
                              onChanged: (value) {
                                ref
                                    .read(appSettings.notifier)
                                    .update(
                                      (state) => state.copyWith(
                                        secondsBetweenModFolderChecks: value
                                            .toInt(),
                                      ),
                                    );
                              },
                              inactiveColor: theme.colorScheme.onSurface
                                  .withOpacity(0.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: leftTextOptionPadding,
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: MovingTooltipWidget.text(
                          message: loc.settingsHowLongNotificationsE,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                loc.settingsNotificationDuration(
                                  ref.watch(
                                    appSettings.select(
                                      (value) => value.toastDurationSeconds,
                                    ),
                                  ),
                                ),
                                style: theme.textTheme.bodyLarge,
                              ),
                              Slider(
                                value: ref
                                    .watch(
                                      appSettings.select(
                                        (value) => value.toastDurationSeconds,
                                      ),
                                    )
                                    .toDouble()
                                    .clamp(1, 45),
                                min: 1,
                                max: 45,
                                divisions: 45,
                                label:
                                    "${ref.watch(appSettings.select((value) => value.toastDurationSeconds))}",
                                onChanged: (value) {
                                  ref
                                      .read(appSettings.notifier)
                                      .update(
                                        (state) => state.copyWith(
                                          toastDurationSeconds: value.toInt(),
                                        ),
                                      );
                                },
                                inactiveColor: theme.colorScheme.onSurface
                                    .withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: leftTextOptionPadding,
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: MovingTooltipWidget.text(
                          message: loc.settingsAffectsHowQuicklyVersion,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                loc.settingsMaxHttpRequests(
                                  ref.watch(
                                    appSettings.select(
                                      (value) => value.maxHttpRequestsAtOnce,
                                    ),
                                  ),
                                ),
                                style: theme.textTheme.bodyLarge,
                              ),
                              Slider(
                                value: ref
                                    .watch(
                                      appSettings.select(
                                        (value) => value.maxHttpRequestsAtOnce,
                                      ),
                                    )
                                    .toDouble()
                                    .clamp(1, 100),
                                min: 1,
                                max: 100,
                                divisions: 10,
                                label:
                                    "${ref.watch(appSettings.select((value) => value.maxHttpRequestsAtOnce))}",
                                onChanged: (value) {
                                  ref
                                      .read(appSettings.notifier)
                                      .update(
                                        (state) => state.copyWith(
                                          maxHttpRequestsAtOnce: value.toInt(),
                                        ),
                                      );
                                },
                                inactiveColor: theme.colorScheme.onSurface
                                    .withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Checkbox for enabling crash reporting
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          MovingTooltipWidget.text(
                            message: loc.settingsErrorReportingTooltip(
                              Constants.appName,
                            ),
                            child: CheckboxWithLabel(
                              value: ref.watch(
                                appSettings.select(
                                  (value) => value.allowCrashReporting ?? false,
                                ),
                              ),
                              onChanged: (value) async {
                                if (!context.mounted) return;
                                showAlertDialog(
                                  context,
                                  title: loc.settingsRestartRequired,
                                  content: loc.settingsRestartToApply(
                                    Constants.appName,
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text(loc.settingsRestartNow),
                                      onPressed: () async {
                                        await ref
                                            .read(appSettings.notifier)
                                            .update(
                                              (state) => state.copyWith(
                                                allowCrashReporting:
                                                    value ?? false,
                                              ),
                                            );
                                        // Must restart TriOS to toggle. Soft restart doesn't properly initialize SentryWidget and Report Bug button doesn't work.
                                        restartApplication();
                                      },
                                    ),
                                    TextButton(
                                      child: Text(loc.settingsNevermind),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                              label: loc.settingsAllowErrorReporting,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.info),
                            onPressed: () {
                              showAlertDialog(
                                context,
                                title: loc.settingsErrorReporting,
                                content: loc.settingsErrorReportingDialogContent(
                                  Constants.appName,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    MovingTooltipWidget.text(
                      message: loc.settingsLaunchPrecheckTooltip(
                        Constants.appName,
                      ),
                      child: CheckboxWithLabel(
                        value: ref.watch(
                          appSettings.select(
                            (value) => value.enableLauncherPrecheck,
                          ),
                        ),
                        onChanged: (value) {
                          ref
                              .read(appSettings.notifier)
                              .update(
                                (state) => state.copyWith(
                                  enableLauncherPrecheck: value ?? false,
                                ),
                              );
                        },
                        label: loc.settingsEnableLaunchPrecheck,
                      ),
                    ),
                    Row(
                      children: [
                        MovingTooltipWidget.text(
                          message: loc.settingsCheckGameRunningTooltip(
                            Constants.appName,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CheckboxWithLabel(
                                value: ref.watch(
                                  appSettings.select(
                                    (value) => value.checkIfGameIsRunning,
                                  ),
                                ),
                                onChanged: (value) {
                                  ref
                                      .read(appSettings.notifier)
                                      .update(
                                        (state) => state.copyWith(
                                          checkIfGameIsRunning: value ?? false,
                                        ),
                                      );
                                },
                                label: loc.settingsCheckIfGameIs,
                              ),
                              if (ref
                                      .watch(AppState.gameRunningCheckError)
                                      .value
                                      ?.isNotEmpty ==
                                  true)
                                Padding(
                                  padding: const EdgeInsets.only(left: 48),
                                  child: Text(
                                    "${loc.settingsGameRunningCheckError}\n${ref.watch(AppState.gameRunningCheckError).value?.join("\n")}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        // IconButton(
                        //   icon: const Icon(Icons.info),
                        //   onPressed: () {
                        //     showAlertDialog(
                        //       context,
                        //       title: "Check if game is running",
                        //       content:
                        //       "",
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                    if (!Platform.isMacOS)
                      Builder(
                        builder: (context) {
                          final skipDeepLinkConfirmation = ref.watch(
                            appSettings.select(
                              (s) => s.deepLinkSkipConfirmation,
                            ),
                          );
                          return MovingTooltipWidget.text(
                            message: loc.settingsWhenEnabledModsOpened,
                            child: CheckboxWithLabel(
                              value: skipDeepLinkConfirmation,
                              onChanged: (bool? value) => ref
                                  .read(appSettings.notifier)
                                  .update(
                                    (state) => state.copyWith(
                                      deepLinkSkipConfirmation: value ?? false,
                                    ),
                                  ),
                              label: loc.settingsAlwaysInstallModsFrom,
                            ),
                          );
                        },
                      ),
                    if (!Platform.isMacOS)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: _DeepLinkRegistrationButton(),
                      ),
                    if (Platform.isLinux)
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: MovingTooltipWidget.text(
                          message: loc.settingsAccessibilitySemanticsTooltip(
                            Constants.appName,
                          ),
                          child: CheckboxWithLabel(
                            value: ref.watch(
                              appSettings.select(
                                (value) =>
                                    value.enableAccessibilitySemanticsOnLinux ==
                                    true,
                              ),
                            ),
                            onChanged: (value) {
                              ref
                                  .read(appSettings.notifier)
                                  .update(
                                    (state) => state.copyWith(
                                      enableAccessibilitySemanticsOnLinux:
                                          value,
                                    ),
                                  );
                              RestartableApp.softRestartApp(context);
                            },
                            label: loc.settingsEnableAccessibilitySemanticsMay,
                          ),
                        ),
                      ),
                  ],
                ),
                SettingsGroup(
                  name: loc.settingsAiFeatures,
                  children: [
                    MovingTooltipWidget.text(
                      message: loc.settingsDisableAiTooltip(Constants.appName),
                      child: CheckboxWithLabel(
                        value: !ref.watch(
                          appSettings.select((s) => s.enableAiFeatures),
                        ),
                        onChanged: (value) {
                          ref
                              .read(appSettings.notifier)
                              .update(
                                (state) => state.copyWith(
                                  enableAiFeatures: !(value ?? false),
                                ),
                              );
                        },
                        label: loc.settingsDisableAllAiRelated,
                      ),
                    ),
                  ],
                ),
                // Debugging line here
                SizedBox.fromSize(size: const Size.fromHeight(20)),
                Theme(
                  data: theme.copyWith(dividerColor: Colors.transparent),
                  child: TriOSExpansionTile(
                    title: Text(loc.settingsDebugging),
                    subtitle: Text(
                      loc.settingsJunkDrawerSubtitle,
                    ),
                    leading: Icon(
                      Icons.bug_report,
                      color: Theme.of(context).iconTheme.color
                          ?.withOpacity(0.7),
                    ),
                    expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: SettingsDebugSection(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckForUpdatesButton extends ConsumerStatefulWidget {
  const CheckForUpdatesButton({super.key});

  @override
  ConsumerState<CheckForUpdatesButton> createState() =>
      _CheckForUpdatesButtonState();
}

class _CheckForUpdatesButtonState extends ConsumerState<CheckForUpdatesButton> {
  ScaffoldMessengerState? _scaffoldMessenger;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scaffoldMessenger = ScaffoldMessenger.of(context);
  }

  @override
  void dispose() {
    _scaffoldMessenger?.hideCurrentSnackBar();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return ElevatedButton(
      onPressed: () async {
        final selfUpdateNotifier = ref.read(AppState.selfUpdate.notifier);
        final release = await selfUpdateNotifier.getLatestRelease();
        if (!mounted) return;
        if (release == null) {
          showSnackBar(
            context: context,
            content: Text(loc.settingsNoNewReleaseFound),
          );
        } else if (Version.parse(release.tagName, sanitizeInput: true) <=
            Version.parse(Constants.version, sanitizeInput: true)) {
          showSnackBar(
            context: context,
            content: Text(
              loc.settingsAlreadyLatestVersion(
                Constants.version,
                release.tagName,
                release.prerelease ? " (prerelease)" : "",
              ),
            ),
            action: SnackBarAction(
              label: loc.settingsIDonTBelieve,
              backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
              onPressed: () async {
                final innerRelease = await selfUpdateNotifier
                    .getLatestRelease();
                if (innerRelease == null) {
                  Fimber.d("No release found");
                  return;
                }
                if (!context.mounted) return;
                toastification.showCustom(
                  context: context,
                  builder: (context, item) =>
                      SelfUpdateToast(innerRelease, item),
                );
              },
            ),
          );
        } else {
          toastification.showCustom(
            context: context,
            builder: (context, item) => SelfUpdateToast(release, item),
          );
        }
      },
      child: Text(loc.settingsCheckForUpdate),
    );
  }
}

/// Lets the user register or unregister TriOS as the handler for
/// `starsector-mod://` links. Reflects the actual on-system registration state,
/// not just the saved setting. Not shown on macOS, where registration is
/// build-time via Info.plist.
class _DeepLinkRegistrationButton extends ConsumerStatefulWidget {
  const _DeepLinkRegistrationButton();

  @override
  ConsumerState<_DeepLinkRegistrationButton> createState() =>
      _DeepLinkRegistrationButtonState();
}

class _DeepLinkRegistrationButtonState
    extends ConsumerState<_DeepLinkRegistrationButton> {
  bool? _isRegistered;
  bool _isWorking = false;

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future<void> _refresh() async {
    final registered = await ProtocolRegistration.isRegistered();
    if (!mounted) return;
    setState(() => _isRegistered = registered);
  }

  Future<void> _toggle() async {
    final currentlyRegistered = _isRegistered ?? false;
    setState(() => _isWorking = true);
    try {
      if (currentlyRegistered) {
        await ProtocolRegistration.unregister();
      } else {
        await ProtocolRegistration.register();
      }
      await ref
          .read(appSettings.notifier)
          .update(
            (state) => state.copyWith(
              deepLinkProtocolRegistered: !currentlyRegistered,
            ),
          );
      await _refresh();
    } finally {
      if (mounted) setState(() => _isWorking = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isRegistered = _isRegistered ?? false;
    final loc = AppLocalizations.of(context);
    return MovingTooltipWidget.text(
      message: loc.settingsDeepLinkTooltip(Constants.appName),
      child: ElevatedButton.icon(
        icon: _isWorking
            ? const SizedBox(
                width: 18,
                height: 18,
                child: ThemedCircularProgressIndicator(),
              )
            : Icon(isRegistered ? Icons.link_off : Icons.link),
        label: Text(
          isRegistered
              ? loc.settingsDisableOpenWithTrios
              : loc.settingsEnableOpenWithTrios,
        ),
        onPressed: (_isRegistered == null || _isWorking) ? null : _toggle,
      ),
    );
  }
}

class _ThemeDropdownRow extends ConsumerStatefulWidget {
  const _ThemeDropdownRow();

  @override
  ConsumerState<_ThemeDropdownRow> createState() => _ThemeDropdownRowState();
}

class _ThemeDropdownRowState extends ConsumerState<_ThemeDropdownRow> {
  TriOSTheme? _cachedInitialSelection;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final themeState = ref.watch(AppState.themeData).value;
    final availableThemes = themeState?.availableThemes.entries ?? [];

    DropdownMenuEntry<TriOSTheme?> themeEntry(TriOSTheme triosTheme) {
      final themeData = ThemeManager.convertToThemeData(triosTheme);
      return DropdownMenuEntry(
        value: triosTheme,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            themeData.scaffoldBackgroundColor,
          ),
        ),
        labelWidget: Row(
          children: [
            SizedBox(
              width: 40,
              height: 20,
              child: Container(
                color: themeData.colorScheme.primary,
                child: const SizedBox.shrink(),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 20,
              height: 20,
              child: Container(
                color: themeData.colorScheme.secondary,
                child: const SizedBox.shrink(),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              triosTheme.displayName,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: themeData.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        label: triosTheme.displayName,
      );
    }

    DropdownMenuEntry<TriOSTheme?> header(String label) => DropdownMenuEntry(
      value: null,
      enabled: false,
      label: label,
      labelWidget: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );

    final userThemes = availableThemes
        .where((e) => e.value.isUserTheme)
        .map((e) => themeEntry(e.value))
        .distinctBy((e) => e.value)
        .toList();
    final builtInThemes = availableThemes
        .where((e) => !e.value.isUserTheme)
        .map((e) => themeEntry(e.value))
        .distinctBy((e) => e.value)
        .toList();

    // Only worth splitting the list up when the user actually has themes of
    // their own; otherwise it looks the way it always has.
    final entries = userThemes.isEmpty
        ? builtInThemes
        : [
            header(loc.settingsYourThemes),
            ...userThemes,
            header(loc.settingsBuiltIn),
            ...builtInThemes,
          ];

    _cachedInitialSelection ??= ref
        .read(AppState.themeData.notifier)
        .currentTheme;

    return Row(
      children: [
        MovingTooltipWidget.text(
          message: loc.settingsThemeTooltip,
          child: DropdownMenu<TriOSTheme?>(
            requestFocusOnTap: false,
            dropdownMenuEntries: entries,
            onSelected: (TriOSTheme? theme) {
              if (theme == null) return;
              ref.read(AppState.themeData.notifier).switchThemes(theme);
            },
            initialSelection: _cachedInitialSelection,
          ),
        ),
        const SizedBox(width: 8),
        MovingTooltipWidget.text(
          message: loc.settingsIMFeelingLucky,
          child: IconButton(
            onPressed: () async {
              await ref
                  .read(AppState.themeData.notifier)
                  .switchThemes(
                    ref
                        .read(AppState.themeData.notifier)
                        .allThemes
                        .values
                        .random(),
                  );
              setState(() {
                _cachedInitialSelection = null;
              });
            },
            icon: SvgImageIcon(
              "assets/images/icon-dice.svg",
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        MovingTooltipWidget.text(
          message: loc.settingsCopyThemeTooltip,
          child: IconButton(
            onPressed: () async {
              final selected = ref
                  .read(AppState.themeData.notifier)
                  .currentTheme;
              await Clipboard.setData(
                ClipboardData(text: UserThemes.asPasteableEntry(selected)),
              );
              if (!context.mounted) return;
              showSnackBar(
                context: context,
                type: SnackBarType.info,
                content: Text(
                  loc.settingsThemeCopiedSnackbar(selected.displayName),
                ),
              );
            },
            icon: Icon(Icons.copy, color: theme.colorScheme.onSurface),
          ),
        ),
        MovingTooltipWidget.text(
          message: loc.settingsOpenThemesFileTooltip(UserThemes.file.path),
          child: IconButton(
            onPressed: () => UserThemes.file.showInExplorer(),
            icon: Icon(Icons.folder_open, color: theme.colorScheme.onSurface),
          ),
        ),
        MovingTooltipWidget.text(
          message: loc.settingsReloadThemes,
          child: IconButton(
            onPressed: () async {
              final result = await ref
                  .read(AppState.themeData.notifier)
                  .reloadThemes();
              setState(() {
                _cachedInitialSelection = null;
              });
              if (!context.mounted) return;
              showSnackBar(
                context: context,
                type: result.problems.isEmpty
                    ? SnackBarType.info
                    : SnackBarType.warn,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(loc.settingsLoadedThemes(result.themes.length)),
                    for (final problem in result.problems) Text(problem),
                  ],
                ),
              );
            },
            icon: Icon(Icons.refresh, color: theme.colorScheme.onSurface),
          ),
        ),
      ],
    );
  }
}

/// How a font's name is drawn in the font picker, so each choice shows what
/// it looks like.
TextStyle _fontPreviewStyle(AppFont font) => switch (font) {
  AppFont.system => const TextStyle(),
  AppFont.roboto => GoogleFonts.roboto(),
  AppFont.inter => GoogleFonts.inter(),
  AppFont.openSans => GoogleFonts.openSans(),
  AppFont.comicSans => TextStyle(
    fontFamily: 'Comic Sans MS',
    fontFamilyFallback: [GoogleFonts.comicNeue().fontFamily!],
  ),
};

class _FontDropdownRow extends ConsumerWidget {
  const _FontDropdownRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(
      appSettings.select((s) => s.themeModifiers.font),
    );
    final loc = AppLocalizations.of(context);

    return MovingTooltipWidget.text(
      message: loc.settingsFontTooltip,
      child: Row(
        spacing: 8,
        children: [
          Text(loc.settingsFont),
          TriOSDropdownMenu<AppFont>(
            key: ValueKey(selected),
            initialSelection: selected,
            onSelected: (value) {
              if (value == null) return;
              ref
                  .read(appSettings.notifier)
                  .update(
                    (state) => state.copyWith(
                      themeModifiers: state.themeModifiers.copyWith(
                        font: value,
                      ),
                    ),
                  );
            },
            dropdownMenuEntries: [
              for (final font in AppFont.values)
                DropdownMenuEntry(
                  value: font,
                  label: font.label,
                  labelWidget: font == AppFont.comicSans
                      ? MovingTooltipWidget.text(
                          message: 'ಠ_ಠ',
                          child: Text(font.label),
                        )
                      : null,
                  style: ButtonStyle(
                    textStyle: WidgetStateProperty.all(_fontPreviewStyle(font)),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageDropdownRow extends ConsumerWidget {
  const _LanguageDropdownRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(appSettings.select((s) => s.locale));
    final loc = AppLocalizations.of(context);

    return MovingTooltipWidget.text(
      message: loc.settingsLanguageTooltip,
      child: Row(
        spacing: 8,
        children: [
          Text(loc.settingsLanguage),
          IntrinsicWidth(
            child: TriOSDropdownButton<String?>(
              value: selected,
              items: [
                DropdownMenuItem(value: null, child: Text(loc.chipperSystem)),
                DropdownMenuItem(value: "en", child: Text("English")),
                DropdownMenuItem(value: "zh", child: Text("简体中文")),
              ],
              onChanged: (value) {
                ref
                    .read(appSettings.notifier)
                    .update((state) => state.copyWith(locale: value));
              },
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeModifiersSection extends ConsumerWidget {
  const _ThemeModifiersSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final modifiers = ref.watch(appSettings.select((s) => s.themeModifiers));
    final activeThemeId = ref.watch(AppState.themeData).value?.currentTheme.id;
    final motesEnabled = modifiers.motesEnabled(activeThemeId);

    return SizedBox(
      width: 600,
      child: Theme(
        data: theme.copyWith(dividerColor: Colors.transparent),
        child: TriOSExpansionTile(
          title: Text(loc.settingsThemeModifiers),
          subtitle: Text(loc.settingsOverridePartsOfThe),
          children: [
            Padding(
              padding: .only(left: 16, right: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Row(
                    spacing: 16,
                    children: [
                      MovingTooltipWidget.text(
                        message: loc.settingsOverrideTheAppIcon,
                        child: Row(
                          spacing: 8,
                          children: [
                            Text(loc.settingsAppIcon),
                            TriOSDropdownMenu<AppIconOverride>(
                              key: ValueKey(modifiers.appIconOverride),
                              initialSelection: modifiers.appIconOverride,
                              onSelected: (value) {
                                if (value == null) return;
                                ref
                                    .read(appSettings.notifier)
                                    .update(
                                      (state) => state.copyWith(
                                        themeModifiers: state.themeModifiers
                                            .copyWith(appIconOverride: value),
                                      ),
                                    );
                              },
                              dropdownMenuEntries: [
                                DropdownMenuEntry(
                                  value: AppIconOverride.defaultIcon,
                                  label: loc.settingsFollowTheme,
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.trios,
                                  label: "TriOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.pride,
                                  label: loc.settingsRainbow,
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.hegemony,
                                  label: "Hegemony",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.bi,
                                  label: "BiOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.sindrian,
                                  label: "Sindrian Diktat",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.independents,
                                  label: "Independents",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.pirates,
                                  label: "Pirates",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.luddicChurch,
                                  label: "Luddic Church",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.luddicPath,
                                  label: "Luddic Path",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.remnants,
                                  label: "[REDACTED]",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.player,
                                  label: loc.settingsPlayer,
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.lionsGuard,
                                  label: "Lion's Guard",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.knightsOfLudd,
                                  label: "Knights of Ludd",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.derelict,
                                  label: "Derelict",
                                ),
                                DropdownMenuEntry(
                                  value: AppIconOverride.mercenary,
                                  label: "Mercenary",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      MovingTooltipWidget.text(
                        message: loc.settingsOverrideTheAppName,
                        child: Row(
                          spacing: 8,
                          children: [
                            Text(loc.settingsAppName),
                            TriOSDropdownMenu<AppNameOverride>(
                              key: ValueKey(modifiers.appNameOverride),
                              initialSelection: modifiers.appNameOverride,
                              onSelected: (value) {
                                if (value == null) return;
                                ref
                                    .read(appSettings.notifier)
                                    .update(
                                      (state) => state.copyWith(
                                        themeModifiers: state.themeModifiers
                                            .copyWith(appNameOverride: value),
                                      ),
                                    );
                              },
                              dropdownMenuEntries: [
                                DropdownMenuEntry(
                                  value: AppNameOverride.defaultName,
                                  label: loc.settingsFollowTheme,
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.trios,
                                  label: "TriOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.hegOS,
                                  label: "HegOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.biOS,
                                  label: "BiOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.sindrian,
                                  label: "SindrOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.independents,
                                  label: "IndieOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.pirates,
                                  label: "PiratOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.luddicChurch,
                                  label: "LuddOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.luddicPath,
                                  label: "PathOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.remnants,
                                  label: "[REDACTED]",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.player,
                                  label: "MyOS",
                                ),
                                DropdownMenuEntry(
                                  value: AppNameOverride.knightsOfLudd,
                                  label: "KnightOS",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  MovingTooltipWidget.text(
                    message: loc.settingsOverrideTheLaunchButton,
                    child: Row(
                      spacing: 8,
                      children: [
                        Text(loc.settingsLaunchButton),
                        TriOSDropdownMenu<LaunchButtonOverride>(
                          key: ValueKey(modifiers.launchButtonOverride),
                          initialSelection: modifiers.launchButtonOverride,
                          onSelected: (value) {
                            if (value == null) return;
                            ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    themeModifiers: state.themeModifiers
                                        .copyWith(launchButtonOverride: value),
                                  ),
                                );
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry(
                              value: LaunchButtonOverride.defaultStyle,
                              label: loc.settingsDefault,
                            ),
                            DropdownMenuEntry(
                              value: LaunchButtonOverride.pride,
                              label: loc.settingsRainbow,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  MovingTooltipWidget.text(
                    message: loc.settingsShowDriftingMotesWhen,
                    child: CheckboxWithLabel(
                      value: motesEnabled,
                      onChanged: (value) => ref
                          .read(appSettings.notifier)
                          .update(
                            (state) => state.copyWith(
                              themeModifiers: state.themeModifiers.copyWith(
                                enableGlitter: value ?? false,
                              ),
                            ),
                          ),
                      label: loc.settingsAnimatedBackgrounds,
                    ),
                  ),
                  if (motesEnabled)
                    Padding(
                      padding: const .only(left: 16),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 8,
                        children: [
                          _BackgroundStylePicker(
                            selected: modifiers.backgroundStyle,
                            onChanged: (style) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    themeModifiers: state.themeModifiers
                                        .copyWith(backgroundStyle: style),
                                  ),
                                ),
                          ),
                          _GlitterLocationsPicker(
                            selected: modifiers.glitterLocations,
                            onChanged: (locations) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    themeModifiers: state.themeModifiers
                                        .copyWith(glitterLocations: locations),
                                  ),
                                ),
                          ),
                          _GlitterColorDropdown(
                            selectedThemeKey: modifiers.glitterThemeKey,
                            onChanged: (themeKey) => ref
                                .read(appSettings.notifier)
                                .update(
                                  (state) => state.copyWith(
                                    themeModifiers: state.themeModifiers
                                        .copyWith(glitterThemeKey: themeKey),
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackgroundStylePicker extends StatelessWidget {
  final BackgroundStyle selected;
  final ValueChanged<BackgroundStyle> onChanged;

  const _BackgroundStylePicker({
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return MovingTooltipWidget.text(
      message: loc.settingsWhichAnimationPlaysIn,
      child: Row(
        spacing: 8,
        children: [
          Text(loc.settingsBackgroundStyle),
          TriOSDropdownMenu<BackgroundStyle>(
            key: ValueKey(selected),
            initialSelection: selected,
            dropdownMenuEntries: [
              for (final style in BackgroundStyle.values)
                DropdownMenuEntry(value: style, label: style.label),
            ],
            onSelected: (style) {
              if (style != null) onChanged(style);
            },
          ),
        ],
      ),
    );
  }
}

class _GlitterLocationsPicker extends StatelessWidget {
  final List<GlitterLocation> selected;
  final ValueChanged<List<GlitterLocation>> onChanged;

  const _GlitterLocationsPicker({
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context);
    final allSelected = GlitterLocation.values.every(
      (l) => selected.contains(l),
    );

    Widget chip({
      required bool checked,
      required IconData icon,
      required String label,
      required ValueChanged<bool> onSelected,
    }) {
      return FilterChip(
        label: Text(label, style: theme.textTheme.labelMedium),
        selected: checked,
        avatar: Icon(
          icon,
          size: 16,
          color: checked
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        onSelected: onSelected,
        selectedColor: theme.colorScheme.primaryContainer,
        backgroundColor: theme.colorScheme.surfaceContainer,
        checkmarkColor: Colors.transparent,
        showCheckmark: false,
        side: BorderSide(
          color: checked
              ? theme.colorScheme.primary
              : theme.colorScheme.outline.withValues(alpha: 0.25),
        ),
      );
    }

    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: [
        chip(
          checked: allSelected,
          icon: allSelected
              ? Icons.check
              : selected.isEmpty
              ? Icons.check_box_outline_blank
              : Icons.remove,
          label: loc.codexAll,
          onSelected: (_) =>
              onChanged(allSelected ? [] : List.of(GlitterLocation.values)),
        ),
        for (final location in GlitterLocation.values)
          chip(
            checked: selected.contains(location),
            icon: selected.contains(location)
                ? Icons.check
                : Icons.check_box_outline_blank,
            label: location.label,
            onSelected: (on) {
              final current = List.of(selected);
              if (on) {
                current.add(location);
              } else {
                current.remove(location);
              }
              onChanged(current);
            },
          ),
      ],
    );
  }
}

class _GlitterColorDropdown extends ConsumerWidget {
  final String? selectedThemeKey;
  final ValueChanged<String?> onChanged;

  const _GlitterColorDropdown({
    required this.selectedThemeKey,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themes = ref.watch(AppState.themeData).value?.availableThemes ?? {};
    final loc = AppLocalizations.of(context);

    final entries = <DropdownMenuEntry<String?>>[
      DropdownMenuEntry(value: null, label: loc.settingsDefault),
      for (final entry in themes.entries)
        DropdownMenuEntry(
          value: entry.key,
          label: entry.value.displayName,
          labelWidget: Row(
            children: [
              for (final color in [
                ThemeManager.convertToThemeData(entry.value)
                    .colorScheme
                    .primary,
                ThemeManager.convertToThemeData(entry.value)
                    .colorScheme
                    .secondary,
              ])
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: ColoredBox(color: color),
                  ),
                ),
              const SizedBox(width: 8),
              Text(entry.value.displayName),
            ],
          ),
        ),
    ];

    return MovingTooltipWidget.text(
      message: loc.settingsWhichThemeSColors,
      child: Row(
        spacing: 8,
        children: [
          Text(loc.settingsColor),
          TriOSDropdownMenu<String?>(
            key: ValueKey(selectedThemeKey),
            initialSelection: selectedThemeKey,
            dropdownMenuEntries: entries,
            onSelected: onChanged,
          ),
        ],
      ),
    );
  }
}
