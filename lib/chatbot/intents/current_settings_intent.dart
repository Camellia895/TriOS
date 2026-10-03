import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'settings_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Shows a summary of the user's current TriOS settings.
class CurrentSettingsIntent extends ChatIntent with SettingsAwareIntent {
  @override
  final Ref ref;

  CurrentSettingsIntent(this.ref);

  static const _phrases = [
    'my settings',
    'current settings',
    'show settings',
    'trios settings',
    'app settings',
    'what are my settings',
  ];

  static const _primaryKeywords = {
    'settings': 0.55,
    'configuration': 0.5,
    'config': 0.5,
    'preferences': 0.45,
  };

  static const _secondaryKeywords = {
    'current': 0.1,
    'show': 0.1,
    'my': 0.1,
  };

  @override
  String get id => 'current_settings';

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
    final s = settings;
    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(loc.chatbotSettingsTitle + '\n');
    buf.writeln(
      loc.chatbotSettingsGameFolder(gameFolder?.path ?? loc.chatbotValueNotSet),
    );
    buf.writeln(
      loc.chatbotSettingsModsFolder(
        modsFolder?.path ?? loc.chatbotValueDefault,
      ),
    );
    buf.writeln(
      loc.chatbotSettingsDirectLaunch(
        s.enableDirectLaunch
            ? loc.chatbotStatusEnabled
            : loc.chatbotStatusDisabled,
      ),
    );
    buf.writeln(loc.chatbotSettingsDefaultPage(s.defaultTool.name));
    buf.writeln(
      loc.chatbotSettingsTheme(s.themeKey ?? loc.chatbotValueDefault),
    );
    buf.writeln(
      loc.chatbotSettingsGameVersion(
        s.lastStarsectorVersion ?? loc.chatbotValueUnknown,
      ),
    );
    buf.writeln(
      loc.chatbotSettingsColorfulGrid(
        s.modsGridColorful ? loc.chatbotStatusOn : loc.chatbotStatusOff,
      ),
    );

    return ChatResponse(text: buf.toString().trimRight());
  }
}
