import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/models/mod_variant.dart';
import 'package:trios/trios/app_state.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/utils/mod_search.dart';
import 'package:trios/widgets/simple_data_row.dart';

import '../models/mod.dart';

class DebugInfo extends ConsumerWidget {
  final Mod mod;

  const DebugInfo({super.key, required this.mod});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = AppLocalizations.of(context);
    final vcResultsCache =
        (ref.watch(AppState.versionCheckResults).value)
            ?.versionCheckResultsBySmolId ??
        {};
    final modsMetadata = ref.watch(AppState.modsMetadata).value;
    // The mod-level metadata carries a copy of every variant's metadata. Drop
    // it, so the shared part doesn't repeat inside each version's card.
    final modMetadata = modsMetadata
        ?.getMergedModMetadata(mod.id)
        ?.copyWith(variantsMetadata: {});

    return SelectionArea(
      child: Column(
        children: mod.modVariants
            .sortedByDescending<ModVariant>((variant) => variant)
            .map(
              (variant) => Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${variant.modInfo.nameOrId} ${variant.modInfo.version}",
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoId,
                            value: variant.modInfo.id,
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoVersion,
                            value:
                                '${variant.modInfo.version} • ${loc.debugInfoVersionChecker}: ${variant.versionCheckerInfo?.modVersion}',
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoInternalId,
                            value: variant.smolId,
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoModFolder,
                            value: variant.modFolder.path,
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoIcon,
                            value: variant.iconFilePath ?? "",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "mod_info.json",
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            variant.modInfo.toString(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.debugInfoVersionCheckerLocal,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            variant.versionCheckerInfo?.toString() ??
                                loc.debugInfoNone,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.debugInfoVersionCheckerRemote,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            vcResultsCache[variant.smolId]?.toString() ??
                                loc.debugInfoNone,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.debugInfoModMetadata,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoWholeMod,
                            value: modMetadata?.toString() ?? loc.debugInfoNone,
                          ),
                          SimpleDataRow(
                            label: loc.debugInfoThisVersion,
                            value:
                                modsMetadata
                                    ?.getMergedModVariantMetadata(
                                      mod.id,
                                      variant.smolId,
                                    )
                                    ?.toString() ??
                                loc.debugInfoNone,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.debugInfoSearchTags,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            getModVariantSearchTags(variant).joinToString(
                              transform: (it) =>
                                  "${it.term} (-${it.scorePenalty.toStringAsFixed(0)})",
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

showDebugViewDialog(BuildContext context, Mod mod) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("${mod.findHighestVersion?.modInfo.name}"),
        content: SingleChildScrollView(child: DebugInfo(mod: mod)),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(AppLocalizations.of(context).commonClose),
          ),
        ],
      );
    },
  );
}
