import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Lists all question categories the chatbot can answer.
class HelpIntent extends ChatIntent {
  static const _phrases = [
    'help',
    'what can you do',
    'what do you know',
    'what can i ask',
    'how to use chatbot',
    'what to ask',
    'what can you help with',
    'what questions',
    'what should i ask',
  ];

  static const _primaryKeywords = {
    'help': 0.55,
    'commands': 0.5,
  };

  static const _secondaryKeywords = {
    'can': 0.1,
    'ask': 0.1,
    'what': 0.1,
    'use': 0.1,
    'you': 0.1,
  };

  @override
  String get id => 'help';

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
      text: AppLocalizationsSync.instance.chatbotHelpGuide,
    );
  }
}
