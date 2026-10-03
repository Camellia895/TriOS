import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/chipper/utils.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/mod_manager/mod_manager_extensions.dart';
import 'package:trios/models/mod_variant.dart';
import 'package:trios/trios/constants_theme.dart';
import 'package:trios/utils/extensions.dart';

import '../mod_manager/mod_manager_logic.dart';
import '../trios/app_state.dart';
import '../widgets/fancy_mod_tooltip_header.dart';

class ModSummaryWidget extends ConsumerStatefulWidget {
  final ModVariant modVariant;
  final Color? compatTextColor;
  final GameCompatibility? compatWithGame;
  final bool showIconTip;

  const ModSummaryWidget({
    super.key,
    required this.modVariant,
    this.compatTextColor,
    this.compatWithGame,
    required this.showIconTip,
  });

  @override
  ConsumerState createState() => _ModSummaryWidgetState();
}

class _ModSummaryWidgetState extends ConsumerState<ModSummaryWidget> {
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
    var cachedVersionChecks = ref.watch(AppState.versionCheckResults).value;
    final versionCheckComparisonResult = modVariant.updateCheck(
      cachedVersionChecks,
    );
    final versionCheckComparison = versionCheckComparisonResult?.comparisonInt;
    final localVersionCheck =
        versionCheckComparisonResult?.variant.versionCheckerInfo;
    final remoteVersionCheck = versionCheckComparisonResult?.remoteVersionCheck;
    final theme = Theme.of(context);

    var versionTextStyle = theme.textTheme.labelLarge?.copyWith(
      fontFeatures: [const FontFeature.tabularFigures()],
      color: theme.colorScheme.primary,
    );
    const spacing = 4.0;
    final int iconSize = 40;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ModTooltipFancyTitleHeader(
          iconPath: modVariant.iconFilePath,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 10,
                  right: 8,
                  bottom: 8,
                ),
                child: SizedBox(
                  width: modVariant.iconFilePath != null
                      ? iconSize.toDouble()
                      : 0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: modVariant.iconFilePath != null
                            ? Image.file(
                                (modVariant.iconFilePath ?? "").toFile(),
                                isAntiAlias: true,
                                cacheWidth: iconSize,
                              )
                            : Container(),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      modInfo.name ?? loc.modSummaryNoName,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      loc.modSummaryIdVersion(modInfo.id, modInfo.version ?? ""),
                      style: theme.textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: spacing),
              if (versionCheckComparison == -1)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.modSummaryNewVersion("${remoteVersionCheck?.remoteVersion?.modVersion}"),
                      style: versionTextStyle,
                    ),
                    Text(
                      loc.versionCheckCurrentVersion("${localVersionCheck?.modVersion}"),
                      style: versionTextStyle,
                    ),
                  ],
                ),
              const SizedBox(height: spacing),
              if (modInfo.author != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.modSummaryAuthor,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.disabledColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        modInfo.author ?? loc.commonNone,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: spacing),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.modSummaryDescription,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.disabledColor,
                    ),
                  ),
                  Text(
                    "${modInfo.description}",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(height: spacing),
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
                        color: TriOSThemeConstants.vanillaWarningColor.withOpacity(
                          0.8,
                        ),
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
                child: Text(
                  gameVersion ?? "",
                  style: theme.textTheme.labelMedium,
                ),
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
                  child: Text(
                    loc.mod_dependenciesRequiredMods,
                    style: theme.textTheme.labelMedium,
                  ),
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
                        "${dep.name ?? dep.id} ${dep.version?.toString().append(" ") ?? ""}${dependencyState.getDependencyStateText()}",
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: getStateColorForDependencyText(
                            dependencyState,
                          ),
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
              if (widget.showIconTip && modVariant.iconFilePath == null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Opacity(
                    opacity: 0.6,
                    child: Text(
                      loc.modSummaryTipAddIcon,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
