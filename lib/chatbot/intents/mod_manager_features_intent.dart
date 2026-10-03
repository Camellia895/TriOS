import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Describes mod manager power-user features: context menu, color tags,
/// grouping, and category assignment.
class ModManagerFeaturesIntent extends ChatIntent {
  static const _phrases = [
    'context menu',
    'right click',
    'right-click',
    'color tag',
    'color tags',
    'mod colors',
    'group by',
    'group mods',
    'mod categories',
    'assign category',
    'bulk actions',
    'bulk edit',
    'mod manager features',
    'mod manager tips',
    'what can i do with mods',
  ];

  static const _primaryKeywords = {
    'context menu': 0.55,
    'right click': 0.5,
    'right-click': 0.5,
    'color': 0.4,
    'tag': 0.35,
    'group': 0.35,
    'bulk': 0.4,
  };

  static const _secondaryKeywords = {
    'mod': 0.1,
    'mods': 0.1,
    'manager': 0.1,
    'organize': 0.1,
    'category': 0.15,
    'categories': 0.15,
    'label': 0.1,
  };

  @override
  String get id => 'mod_manager_features';

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
      text: AppLocalizationsSync.instance.chatbotModManagerFeaturesGuide,
    );
  }
}
