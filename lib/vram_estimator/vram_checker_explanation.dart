import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/widgets/code.dart';
import 'package:trios/widgets/trios_expansion_tile.dart';

import '../trios/constants.dart';

class VramCheckerExplanationDialog extends ConsumerStatefulWidget {
  const VramCheckerExplanationDialog({super.key});

  @override
  ConsumerState createState() => _VramCheckerExplanationDialogState();
}

class _VramCheckerExplanationDialogState
    extends ConsumerState<VramCheckerExplanationDialog> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final titleStyle = Theme.of(
      context,
    ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold);
    return AlertDialog(
      title: Text(loc.vramAboutVramEstimator),
      icon: const Icon(Icons.memory),
      content: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(loc.vramYourVramIsBased),
            const SizedBox(height: 8),
            Text(loc.vramUsedByMods),
            const SizedBox(height: 8),
            Text(
              loc.vramAppCanEstimate(Constants.appName),
            ),
            const SizedBox(height: 16),
            TriOSExpansionTile(
              title: Text(loc.vramViewMoreInfo),
              leading: const Icon(Icons.menu_book),
              backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: SelectionArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(loc.vramWhatIsVram, style: titleStyle),
                          const SizedBox(height: 8),
                          Text(loc.vramWhatIsVramRamVsVram),
                          const SizedBox(height: 8),
                          Text(loc.vramWhatIsVramNotAssignable),
                          const SizedBox(height: 8),
                          Text(loc.vramWhatIsVramMoreImages),
                          const SizedBox(height: 8),
                          Text(loc.vramGraphicsLibDefaults),
                          const SizedBox(height: 16),
                          Text(loc.vramAboutThisTool, style: titleStyle),
                          const SizedBox(height: 8),
                          Text(loc.vramToolEstimates),
                          const SizedBox(height: 8),
                          Text(loc.vramLazyLoadingMods),
                          const SizedBox(height: 16),
                          Text(loc.vramSelectors, style: titleStyle),
                          const SizedBox(height: 8),
                          Text(loc.vramSelectorsIntro),
                          const SizedBox(height: 4),
                          Text(loc.vramSelectorFolderScan),
                          const SizedBox(height: 4),
                          Text(loc.vramSelectorReferencedOnly),
                          const SizedBox(height: 8),
                          Text(loc.vramKnownImprecisions),
                          Text(loc.vramImprecisionDynamicPaths),
                          Text(loc.vramImprecisionObfuscatedJars),
                          Text(loc.vramImprecisionGfxLibMaps),
                          const SizedBox(height: 8),
                          Text(loc.vramDebugToggles),
                          Text(loc.vramDebugPerSourceChips),
                          Text(loc.vramDebugSuppressUnreferenced),
                          Text(loc.vramDebugTrackAttribution),
                          const SizedBox(height: 8),
                          Text(
                            loc.vramSeeTrueUsage,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                          const SizedBox(height: 16),
                          Text(loc.vramCalculation, style: titleStyle),
                          const SizedBox(height: 8),
                          Text(loc.vramCalcBasis),
                          const SizedBox(height: 8),
                          Code(
                            child: Text(
                              '((numOfChannels * bitsPerChannel) / bitsPerByte)',
                              style: GoogleFonts.robotoMono().copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Code(
                            child: Text(
                              '* widthRoundedUpToNearestPowerOfTwo * heightRoundedUpToNearestPowerOfTwo * multiplier',
                              style: GoogleFonts.robotoMono().copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(loc.vramMultiplierNote),
                          const SizedBox(height: 8),
                          Text(loc.vramBackgroundsIgnored),
                          const SizedBox(height: 8),
                          Text(loc.vramLargestBackgroundCounted),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(loc.vramClose),
        ),
      ],
    );
  }
}
