import 'package:file_picker/file_picker.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/trios/constants.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';
import 'package:trios/utils/util.dart';
import 'package:trios/widgets/game_paths_widget/game_paths_controller.dart';
import 'package:trios/widgets/highlightable.dart';

import 'custom_path_field_widget.dart';

class GamePathsWidget extends ConsumerStatefulWidget {
  const GamePathsWidget({super.key});

  @override
  ConsumerState<GamePathsWidget> createState() => _GamePathsWidgetState();
}

class _GamePathsWidgetState extends ConsumerState<GamePathsWidget> {
  // Not to be confused with [GamePathsController].
  final gamePathController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = ref.read(gamePathsControllerProvider);
    gamePathController.text = state.gamePathText;
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final customGamePathsController = ref.watch(
      gamePathsControllerProvider.notifier,
    );
    final state = ref.watch(gamePathsControllerProvider);
    final settings = ref.watch(appSettings);
    final theme = Theme.of(context);

    final invalidPathMessage = loc.gamePathsPathDoesNotExist;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Game Path Field (always enabled, no checkbox)
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: gamePathController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelStyle: theme.textTheme.labelLarge,
                    errorText: state.gamePathExists
                        ? null
                        : loc.gamePathsStarsectorNotFound,
                    labelText: loc.gamePathsGameFolder,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.folder),
                onPressed: () async {
                  final newGameDir = await FilePicker.platform
                      .getDirectoryPath();
                  if (newGameDir == null) return;
                  customGamePathsController.updateGameRootFolderPath(newGameDir);
                },
              ),
              if (gamePathController.text != state.gamePathText)
                TextButton.icon(
                  label: Text(loc.commonApply),
                  icon: const Icon(Icons.check),
                  onPressed: () => customGamePathsController.updateGameRootFolderPath(
                    gamePathController.text,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // Custom Paths
        Highlightable(
          highlightKey: "settings.starsectorLauncher",
          borderPadding: .all(8),
          child: CustomPathField(
            labelText: loc.gamePathsStarsectorLauncher,
            checkboxTooltip: loc.gamePathsOverrideTooltip,
            fieldTooltip: loc.gamePathsLauncherTooltip(Constants.appName),
            pathWhenUnchecked: state.customExecutablePathState.defaultPath,
            customPathWhenChecked: state.customExecutablePathState.customPath,
            isChecked: state.customExecutablePathState.useCustomPath,
            isDirectoryPicker: false,
            initialDirectory: settings.gameDir?.path ?? defaultGamePath().path,
            pickerDialogTitle: loc.gamePathsSelectLauncher,
            errorMessage: state.customExecutablePathState.pathExists
                ? null
                : invalidPathMessage,
            onCheckedChanged: (isEnabled) {
              customGamePathsController.toggleUseCustomExecutable(isEnabled);
            },
            onPathChanged: customGamePathsController.updateCustomExecutablePath,
            onSubmitted: customGamePathsController.submitCustomExecutablePath,
          ),
        ),
        const SizedBox(height: 16),
        CustomPathField(
          labelText: loc.gamePathsMods,
          checkboxTooltip: loc.gamePathsOverrideTooltip,
          fieldTooltip: loc.gamePathsModsTooltip,
          pathWhenUnchecked: state.customModsPathState.defaultPath,
          customPathWhenChecked: state.customModsPathState.customPath,
          isChecked: state.customModsPathState.useCustomPath,
          isDirectoryPicker: true,
          initialDirectory: settings.gameDir?.path ?? defaultGamePath().path,
          pickerDialogTitle: loc.gamePathsSelectMods,
          errorMessage: state.customModsPathState.pathExists
              ? null
              : invalidPathMessage,
          onCheckedChanged: (isEnabled) {
            customGamePathsController.toggleUseCustomModsPath(isEnabled);
          },
          onPathChanged: customGamePathsController.updateCustomModsPath,
          onSubmitted: customGamePathsController.submitCustomModsPath,
        ),
        const SizedBox(height: 16),
        CustomPathField(
          labelText: loc.gamePathsSaves,
          checkboxTooltip: loc.gamePathsOverrideTooltip,
          fieldTooltip: loc.gamePathsSavesTooltip,
          pathWhenUnchecked: state.customSavesPathState.defaultPath,
          customPathWhenChecked: state.customSavesPathState.customPath,
          isChecked: state.customSavesPathState.useCustomPath,
          isDirectoryPicker: true,
          initialDirectory: settings.gameDir?.path ?? defaultGamePath().path,
          pickerDialogTitle: loc.gamePathsSelectSaves,
          errorMessage: state.customSavesPathState.pathExists
              ? null
              : invalidPathMessage,
          onCheckedChanged: (isEnabled) {
            customGamePathsController.toggleUseCustomSavesPath(isEnabled);
          },
          onPathChanged: customGamePathsController.updateCustomSavesPath,
          onSubmitted: customGamePathsController.submitCustomSavesPath,
        ),
        const SizedBox(height: 16),
        CustomPathField(
          labelText: loc.gamePathsCoreData,
          checkboxTooltip: loc.gamePathsOverrideTooltip,
          fieldTooltip: loc.gamePathsCoreDataTooltip,
          pathWhenUnchecked: state.customCorePathState.defaultPath,
          customPathWhenChecked: state.customCorePathState.customPath,
          isChecked: state.customCorePathState.useCustomPath,
          isDirectoryPicker: true,
          initialDirectory: settings.gameDir?.path ?? defaultGamePath().path,
          pickerDialogTitle: loc.gamePathsSelectCore,
          errorMessage: state.customCorePathState.pathExists
              ? null
              : invalidPathMessage,
          onCheckedChanged: (isEnabled) {
            customGamePathsController.toggleUseCustomCorePath(isEnabled);
          },
          onPathChanged: customGamePathsController.updateCustomCorePath,
          onSubmitted: customGamePathsController.submitCustomCorePath,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48, top: 16),
          child: Text(
            loc.gamePathsFootnote(Constants.appName),
            style: theme.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    gamePathController.dispose();
    super.dispose();
  }
}
