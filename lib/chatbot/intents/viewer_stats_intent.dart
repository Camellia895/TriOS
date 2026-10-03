import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'viewer_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Shows combined ship, weapon, hullmod, and portrait counts.
class ViewerStatsIntent extends ChatIntent with ViewerAwareIntent {
  @override
  final Ref ref;

  ViewerStatsIntent(this.ref);

  static const _phrases = [
    'game data stats',
    'data overview',
    'ships weapons hullmods',
    'game content stats',
    'content overview',
    'how much content',
    'content count',
    'game content',
  ];

  static const _primaryKeywords = {
    'stats': 0.45,
    'overview': 0.4,
    'content': 0.4,
    'data': 0.35,
  };

  static const _secondaryKeywords = {
    'ships': 0.1,
    'weapons': 0.1,
    'hullmods': 0.1,
    'game': 0.1,
    'all': 0.1,
  };

  @override
  String get id => 'viewer_stats';

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
    final weaponList = weapons;
    final hullmodList = hullmods;
    final portraitMap = portraits;

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotViewerStatsTitle + '\n');

    if (shipList != null && shipList.isNotEmpty) {
      buf.writeln(loc.chatbotViewerStatsShips('${shipList.length}'));
    } else {
      buf.writeln(loc.chatbotViewerStatsShips(loc.chatbotNotLoaded));
    }

    if (weaponList != null && weaponList.isNotEmpty) {
      buf.writeln(loc.chatbotViewerStatsWeapons('${weaponList.length}'));
    } else {
      buf.writeln(loc.chatbotViewerStatsWeapons(loc.chatbotNotLoaded));
    }

    if (hullmodList != null && hullmodList.isNotEmpty) {
      buf.writeln(loc.chatbotViewerStatsHullmods('${hullmodList.length}'));
    } else {
      buf.writeln(loc.chatbotViewerStatsHullmods(loc.chatbotNotLoaded));
    }

    if (portraitMap != null && portraitMap.isNotEmpty) {
      final totalPortraits = portraitMap.values
          .fold<int>(0, (sum, list) => sum + list.length);
      buf.writeln(loc.chatbotViewerStatsPortraits('$totalPortraits'));
    } else {
      buf.writeln(loc.chatbotViewerStatsPortraits(loc.chatbotNotLoaded));
    }

    buf.writeln(
      loc.chatbotOpenViewerToLoad,
    );

    return ChatResponse(text: buf.toString().trimRight());
  }
}
