import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'viewer_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Shows the total ship count and breakdown.
class ShipCountIntent extends ChatIntent with ViewerAwareIntent {
  @override
  final Ref ref;

  ShipCountIntent(this.ref);

  static const _phrases = [
    'how many ships',
    'ship count',
    'total ships',
    'number of ships',
    'how many hulls',
    'hull count',
  ];

  static const _primaryKeywords = {
    'ships': 0.5,
    'ship': 0.5,
    'hulls': 0.45,
    'hull': 0.45,
  };

  static const _secondaryKeywords = {
    'count': 0.15,
    'many': 0.15,
    'total': 0.1,
    'number': 0.1,
    'how': 0.1,
  };

  @override
  String get id => 'ship_count';

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
    final shipList = ships;
    if (shipList == null || shipList.isEmpty) {
      return ChatResponse(
        text: ViewerAwareIntent.noViewerDataMessage,
      );
    }

    final vanilla =
        shipList.where((s) => s.modVariant == null).length;
    final modded = shipList.length - vanilla;

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(
      loc.chatbotShipsHeader(shipList.length) + '\n',
    );
    buf.writeln('  ' + loc.chatbotBreakdownVanilla(vanilla));
    buf.writeln('  ' + loc.chatbotBreakdownFromMods(modded));

    return ChatResponse(text: buf.toString().trimRight());
  }
}
