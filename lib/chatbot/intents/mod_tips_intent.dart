import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/trios/app_state.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';

/// Shows random gameplay tips from installed mods.
class ModTipsIntent extends ChatIntent with ModAwareIntent {
  @override
  final Ref ref;

  ModTipsIntent(this.ref);

  static const _phrases = [
    'mod tips',
    'show tips',
    'any tips',
    'gameplay tips',
    'starsector tips',
    'tips for mods',
    'mod advice',
    'random tip',
    'give me a tip',
  ];

  static const _primaryKeywords = {
    'tips': 0.55,
    'tip': 0.5,
    'advice': 0.45,
    'suggestions': 0.4,
  };

  static const _secondaryKeywords = {
    'mod': 0.1,
    'mods': 0.1,
    'show': 0.1,
    'any': 0.1,
    'random': 0.1,
  };

  @override
  String get id => 'mod_tips';

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
    final tips = ref.read(AppState.tipsProvider).value;

    if (tips == null || tips.isEmpty) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotNoTipsAvailable,
      );
    }

    // Pick up to 5 random tips.
    final rng = Random();
    final shuffled = List.of(tips)..shuffle(rng);
    final selected = shuffled.take(5).toList();

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotTipsTitle + '\n');
    for (final modTip in selected) {
      final tipText = modTip.tipObj.tip ?? loc.chatbotTipNoText;
      final source =
          modTip.variants.firstOrNull?.modInfo.nameOrId ??
          loc.chatbotValueUnknown;
      buf.writeln('  "$tipText"');
      buf.writeln(loc.chatbotTipSource(source));
    }

    if (tips.length > 5) {
      buf.writeln(
        loc.chatbotMoreTips(tips.length - 5),
      );
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
