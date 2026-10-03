import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Tells users how to allocate more RAM via the Dashboard page.
class RamAllocationIntent extends ChatIntent {
  static const _phrases = [
    'how to give more ram',
    'how to allocate more ram',
    'how to increase ram',
    'how to get more ram',
    'increase memory allocation',
    'increase ram allocation',
    'change ram allocation',
    'set ram allocation',
    'give starsector more ram',
    'give the game more ram',
    'increase heap size',
    'change heap size',
    'change xmx',
    'set xmx',
    'out of memory fix',
    'need more ram',
    'need more memory',
    'not enough ram',
    'not enough memory',
    'more ram',
    'low memory',
    'outofmemoryerror',
    'out of memory error',
    'java heap space',
  ];

  static const _primaryKeywords = {
    'allocate': 0.5,
    'allocation': 0.5,
    'heap': 0.5,
    'xmx': 0.55,
    'increase': 0.4,
    'give more': 0.45,
    'out of memory': 0.45,
    'outofmemoryerror': 0.5,
  };

  static const _secondaryKeywords = {
    'ram': 0.15,
    'memory': 0.15,
    'more': 0.1,
    'how': 0.1,
    'change': 0.1,
    'set': 0.1,
  };

  @override
  String get id => 'ram_allocation';

  @override
  double match(String input, ConversationContext context) {
    var score = ModAwareIntent.scoreInput(
      input,
      _phrases,
      _primaryKeywords,
      _secondaryKeywords,
    );

    // Context bonus: user just learned about RAM vs VRAM and wants to act.
    if (context.lastMatchedIntentId == 'ram_vs_vram' && score > 0.0) {
      score = (score + 0.15).clamp(0.0, 0.95);
    }

    return score;
  }

  @override
  ChatResponse respond(String input, ConversationContext context) {
    return ChatResponse(
      text: AppLocalizationsSync.instance.chatbotRamAllocationGuide,
    );
  }
}
