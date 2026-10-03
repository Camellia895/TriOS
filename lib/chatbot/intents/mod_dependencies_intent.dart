import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';

/// Shows dependency information — most required mods, or deps for a specific mod.
class ModDependenciesIntent extends ChatIntent with ModAwareIntent {
  @override
  final Ref ref;

  ModDependenciesIntent(this.ref);

  static const _phrases = [
    'mod dependencies',
    'dependency tree',
    'required mods',
    'what depends on',
    'what does it need',
    'what does it require',
    'show dependencies',
  ];

  static const _primaryKeywords = {
    'dependencies': 0.5,
    'dependency': 0.5,
    'depends': 0.45,
    'requires': 0.4,
    'required': 0.4,
    'needs': 0.35,
  };

  static const _secondaryKeywords = {
    'mods': 0.1,
    'mod': 0.1,
    'show': 0.1,
    'what': 0.1,
    'tree': 0.15,
  };

  @override
  String get id => 'mod_dependencies';

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
    final guard = guardModData();
    if (guard != null) return guard;

    // Count how many mods depend on each dependency ID
    final dependedOnCount = <String, int>{};
    final dependedOnName = <String, String>{};

    for (final mod in mods) {
      final variant = mod.findFirstEnabledOrHighestVersion;
      if (variant == null) continue;

      for (final dep in variant.modInfo.dependencies) {
        final depId = dep.id;
        if (depId == null) continue;
        dependedOnCount[depId] = (dependedOnCount[depId] ?? 0) + 1;
        dependedOnName.putIfAbsent(depId, () => dep.nameOrId);
      }
    }

    if (dependedOnCount.isEmpty) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotNoModDependenciesFound,
      );
    }

    // Sort by how many mods depend on them
    final sorted = dependedOnCount.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotMostRequiredTitle + '\n');
    for (final entry in sorted.take(15)) {
      final name = dependedOnName[entry.key] ?? entry.key;
      // Check if this dependency is installed
      final isInstalled = mods.any((m) => m.id == entry.key);
      final isEnabled =
          isInstalled && mods.any((m) => m.id == entry.key && m.isEnabledInGame);
      final status = !isInstalled
          ? loc.chatbotDepNotInstalled
          : isEnabled
              ? ''
              : loc.chatbotDepDisabled;
      buf.writeln(
        loc.chatbotDependencyEntry(name, entry.value, status),
      );
    }
    if (sorted.length > 15) {
      buf.writeln('  ' + loc.chatbotAndNMore(sorted.length - 15));
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
