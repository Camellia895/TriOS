import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:path/path.dart' as p;

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'settings_aware_intent.dart';

/// Shows information about RAM allocation and managed vmparams files.
class RamInfoIntent extends ChatIntent with SettingsAwareIntent {
  @override
  final Ref ref;

  RamInfoIntent(this.ref);

  static const _phrases = [
    'ram info',
    'memory info',
    'how much ram',
    'current ram',
    'ram allocation',
    'xmx',
    'xms',
    'vmparams',
    'heap size',
  ];

  static const _primaryKeywords = {
    'ram': 0.55,
    'memory': 0.45,
    'vmparams': 0.5,
  };

  static const _secondaryKeywords = {
    'info': 0.1,
    'current': 0.1,
    'allocation': 0.15,
    'heap': 0.15,
    'size': 0.1,
    'how': 0.05,
    'much': 0.05,
  };

  @override
  String get id => 'ram_info';

  @override
  double match(String input, ConversationContext context) {
    return ModAwareIntent.scoreInput(
      input,
      _phrases,
      _primaryKeywords,
      _secondaryKeywords,
    );
  }

  @override
  ChatResponse respond(String input, ConversationContext context) {
    final state = vmparamsState;

    if (state == null) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotNoRamInformationAvailable,
      );
    }

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotRamAllocationTitle + '\n');

    if (state.currentRamAmountInMb != null) {
      buf.writeln(loc.chatbotRamCurrent('${state.currentRamAmountInMb}'));
    }

    final selected = state.selectedVmparamsFiles;
    if (selected.isNotEmpty) {
      buf.writeln(loc.chatbotRamManagedFiles(selected.length));
      final gameDir = gameFolder;
      for (final file in selected) {
        final ram = state.fileRamAmounts[file];
        final displayPath = gameDir != null
            ? p.relative(file.path, from: gameDir.path)
            : file.path;
        final ramSuffix = ram != null ? ' ($ram MB)' : '';
        buf.writeln(loc.chatbotRamFileEntry(displayPath, ramSuffix));
      }
    }

    if (state.hasMultipleFilesWithDifferentRam) {
      buf.writeln(
        loc.chatbotRamMultipleFilesWarning,
      );
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
