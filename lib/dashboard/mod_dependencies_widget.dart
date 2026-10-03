import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/chipper/utils.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/mod_manager/mod_manager_extensions.dart';
import 'package:trios/models/enabled_mods.dart';
import 'package:trios/models/mod_variant.dart';
import 'package:trios/trios/constants_theme.dart';

import '../mod_manager/mod_manager_logic.dart';
import '../themes/theme_manager.dart';
import '../trios/app_state.dart';

class ModDependenciesWidget extends ConsumerStatefulWidget {
  final ModVariant modVariant;
  final Color? compatTextColor;
  final GameCompatibility? compatWithGame;

  const ModDependenciesWidget({
    super.key,
    required this.modVariant,
    this.compatTextColor,
    this.compatWithGame,
  });

  @override
  ConsumerState createState() => _ModDependenciesWidgetState();
}

class _ModDependenciesWidgetState extends ConsumerState<ModDependenciesWidget> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final modVariants = ref.watch(AppState.modVariants).value;
    final mods = ref.watch(AppState.mods);
    final gameVersion = ref.watch(AppState.starsectorVersion).value;
    final enabledMods = ref
        .watch(AppState.enabledModsFile)
        .value
        ?.filterOutMissingMods(mods)
        .enabledMods
        .toList();
    if (modVariants == null || enabledMods == null) return const SizedBox();

    final modVariant = widget.modVariant;
    final modInfo = modVariant.modInfo;
    // var remoteVersionCheck =
    //     ref.watch(AppState.versionCheckResults).value?[modVariant.smolId];
    // final localVersionCheck = modVariant.versionCheckerInfo;
    // final remoteVersionCheck = versionCheck?[modVariant.smolId];
    // final versionCheckComparison =
    //     compareLocalAndRemoteVersions(localVersionCheck, remoteVersionCheck);

    final theme = Theme.of(context);

    // var versionTextStyle = theme.textTheme.labelLarge?.copyWith(
    //     fontFeatures: [const FontFeature.tabularFigures()],
    //     color: theme.colorScheme.primary);
    const spacing = 4.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.mod_dependenciesRequiredGameVersion,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.disabledColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            modInfo.gameVersion ?? "",
            style: theme.textTheme.labelMedium?.copyWith(
              color: widget.compatTextColor,
            ),
          ),
        ),
        if (modInfo.originalGameVersion != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loc.mod_dependenciesOriginalGameVersion,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: TriOSThemeConstants.vanillaWarningColor.withOpacity(0.8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  modInfo.originalGameVersion ?? "",
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: TriOSThemeConstants.vanillaWarningColor,
                  ),
                ),
              ),
            ],
          ),
        Text(
          loc.mod_dependenciesGameVersion,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.disabledColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(gameVersion ?? "", style: theme.textTheme.labelMedium),
        ),
        if (widget.compatWithGame == GameCompatibility.incompatible)
          Text(
            loc.mod_dependenciesErrorThisModRequires,
            style: theme.textTheme.labelMedium?.copyWith(
              color: widget.compatTextColor,
            ),
          ),
        const SizedBox(height: spacing),
        if (modInfo.dependencies.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(loc.mod_dependenciesRequiredMods, style: theme.textTheme.labelMedium),
          ),
        for (var dep in modInfo.dependencies)
          Builder(
            builder: (context) {
              var dependencyState = dep.isSatisfiedByAny(
                modVariants,
                enabledMods,
                gameVersion,
              );
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "${dep.name ?? dep.id} ${dep.version?.toString().append(" ") ?? ""}${switch (dependencyState) {
                    Satisfied _ => loc.mod_dependenciesFound("${dependencyState.modVariant?.modInfo.version}"),
                    Missing _ => loc.mod_dependenciesMissing,
                    Disabled _ => loc.mod_dependenciesDisabled("${dependencyState.modVariant?.modInfo.version}"),
                    VersionInvalid _ => loc.mod_dependenciesWrongVersion("${dependencyState.modVariant?.modInfo.version}"),
                    VersionWarning _ => loc.mod_dependenciesFoundWarning("${dependencyState.modVariant?.modInfo.version}"),
                  }}",
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: switch (dependencyState) {
                      Satisfied _ => null,
                      Missing _ => TriOSThemeConstants.vanillaErrorColor,
                      Disabled _ =>
                        TriOSThemeConstants
                            .vanillaWarningColor, // Disabled means it's present, so we can just enable it.
                      VersionInvalid _ => TriOSThemeConstants.vanillaErrorColor,
                      VersionWarning _ => TriOSThemeConstants.vanillaWarningColor,
                    },
                  ),
                ),
              );
            },
          ),
        const SizedBox(height: spacing),
        if (modInfo.dependencies.any(
          (dep) =>
              dep.isSatisfiedByAny(modVariants, enabledMods, gameVersion)
                  is VersionWarning,
        ))
          Text(
            loc.mod_dependenciesWarningThisModRequires,
            style: theme.textTheme.labelMedium?.copyWith(
              color: TriOSThemeConstants.vanillaErrorColor,
            ),
          ),
      ],
    );
  }
}
