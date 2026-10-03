import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';

/// Helps users find a specific page/tool in the TriOS sidebar.
class NavigateToPageIntent extends ChatIntent {
  static const _phrases = [
    'how to open',
    'where is the',
    'go to page',
    'open page',
    'navigate to',
    'how do i find',
    'how do i get to',
    'take me to',
    'show me the',
    'where can i find',
    'open the',
  ];

  static const _primaryKeywords = {
    'navigate': 0.45,
    'go to': 0.4,
    'page': 0.3,
    'open': 0.35,
  };

  static const _secondaryKeywords = {
    'where': 0.1,
    'how': 0.1,
    'find': 0.1,
    'sidebar': 0.15,
  };

  // Maps page keywords (matched against user input, so they stay English)
  // to page ids.
  static const _pages = {
    'dashboard': 'dashboard',
    'mod manager': 'modManager',
    'mod profiles': 'modProfiles',
    'vram estimator': 'vramEstimator',
    'vram': 'vramEstimator',
    'chipper': 'chipper',
    'log viewer': 'chipper',
    'log': 'chipper',
    'portraits': 'portraits',
    'weapons': 'weapons',
    'ships': 'ships',
    'hullmods': 'hullmods',
    'settings': 'settings',
    'catalog': 'catalog',
    'tips': 'tips',
  };

  static String _pageDescription(String id) {
    final loc = AppLocalizationsSync.instance;
    return switch (id) {
      'dashboard' => loc.chatbotPageDashboard,
      'modManager' => loc.chatbotPageModManager,
      'modProfiles' => loc.chatbotPageModProfiles,
      'vramEstimator' => loc.chatbotPageVramEstimator,
      'chipper' => loc.chatbotPageChipper,
      'portraits' => loc.chatbotPagePortraits,
      'weapons' => loc.chatbotPageWeapons,
      'ships' => loc.chatbotPageShips,
      'hullmods' => loc.chatbotPageHullmods,
      'settings' => loc.chatbotPageSettings,
      'catalog' => loc.chatbotPageCatalog,
      'tips' => loc.chatbotPageTips,
      _ => id,
    };
  }

  @override
  String get id => 'navigate_to_page';

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
    // Try to match a page name in the input.
    for (final entry in _pages.entries) {
      if (input.contains(entry.key)) {
        return ChatResponse(
          text: AppLocalizationsSync.instance.chatbotFindItInSidebar(
            _pageDescription(entry.value),
          ),
        );
      }
    }

    // No specific page matched — list all pages.
    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotAvailablePages);
    final seen = <String>{};
    for (final entry in _pages.entries) {
      final desc = _pageDescription(entry.value);
      if (seen.add(desc)) {
        buf.writeln('  $desc');
      }
    }
    buf.writeln(loc.chatbotAskAboutSpecificPage);
    return ChatResponse(text: buf.toString().trimRight());
  }
}
