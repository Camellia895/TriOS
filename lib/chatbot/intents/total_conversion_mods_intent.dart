import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';

/// Lists total conversion mods.
class TotalConversionModsIntent extends ChatIntent with ModAwareIntent {
  @override
  final Ref ref;

  TotalConversionModsIntent(this.ref);

  static const _phrases = [
    'total conversion mods',
    'total conversions',
    'tc mods',
    'overhaul mods',
  ];

  static const _primaryKeywords = {
    'total conversion': 0.55,
    'overhaul': 0.4,
    'tc': 0.45,
  };

  static const _secondaryKeywords = {
    'mods': 0.15,
    'mod': 0.15,
    'show': 0.1,
    'list': 0.1,
  };

  @override
  String get id => 'total_conversion_mods';

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

    final tcMods = mods.where((mod) {
      final variant = mod.findFirstEnabledOrHighestVersion;
      return variant?.modInfo.isTotalConversion == true;
    }).toList()
      ..sort();

    if (tcMods.isEmpty) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotNoTotalConversionMods,
      );
    }

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(
      loc.chatbotTcModsTitle(tcMods.length) + '\n',
    );
    for (final mod in tcMods) {
      final variant = mod.findFirstEnabledOrHighestVersion;
      final name = variant?.modInfo.nameOrId ?? mod.id;
      final version =
          variant?.modInfo.version != null ? ' v${variant!.modInfo.version}' : '';
      final status = mod.isEnabledInGame
          ? '[${loc.chatbotTagOn}] '
          : '[${loc.chatbotTagOff}]';
      buf.writeln('  $status $name$version');
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
