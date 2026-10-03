import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Explains the difference between RAM and VRAM in a Starsector context.
class RamVsVramIntent extends ChatIntent {
  static const _phrases = [
    'ram vs vram',
    'vram vs ram',
    'ram versus vram',
    'vram versus ram',
    'difference between ram and vram',
    'ram and vram difference',
    'ram vram difference',
    'what is vram',
    'what is ram',
    'ram or vram',
    'is it ram or vram',
    'do i need more ram or vram',
    'video memory vs ram',
    'video memory vs system memory',
    'system memory vs video memory',
    'how much vram',
    'how much ram',
    'how much video memory',
  ];

  static const _primaryKeywords = {
    'vram': 0.5,
    'video memory': 0.45,
    'gpu memory': 0.45,
    'graphics memory': 0.4,
  };

  static const _secondaryKeywords = {
    'ram': 0.2,
    'memory': 0.15,
    'difference': 0.15,
    'versus': 0.1,
    'vs': 0.1,
  };

  @override
  String get id => 'ram_vs_vram';

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
    return ChatResponse(
      text: AppLocalizationsSync.instance.chatbotRamVsVramGuide,
    );
  }
}
