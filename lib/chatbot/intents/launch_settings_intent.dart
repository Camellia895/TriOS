import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'settings_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Shows game launch configuration.
class LaunchSettingsIntent extends ChatIntent with SettingsAwareIntent {
  @override
  final Ref ref;

  LaunchSettingsIntent(this.ref);

  static const _phrases = [
    'launch settings',
    'launch options',
    'how to launch',
    'launch configuration',
    'game launcher',
    'direct launch',
    'how to start game',
    'start the game',
  ];

  static const _primaryKeywords = {
    'launch': 0.55,
    'launcher': 0.5,
  };

  static const _secondaryKeywords = {
    'settings': 0.15,
    'options': 0.1,
    'direct': 0.1,
    'start': 0.1,
    'configuration': 0.1,
  };

  @override
  String get id => 'launch_settings';

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
    final buf = StringBuffer(loc.chatbotLaunchTitle + '\n');
    buf.writeln(
      loc.chatbotLaunchDirect(
        s.enableDirectLaunch
            ? loc.chatbotLaunchDirectEnabled
            : loc.chatbotLaunchDirectDisabled,
      ),
    );
    if (s.useCustomGameExePath && s.customGameExePath != null) {
      buf.writeln(
        loc.chatbotLaunchCustomExe(s.customGameExePath!),
      );
    }

    if (!s.enableDirectLaunch) {
      buf.writeln(
        loc.chatbotLaunchTip,
      );
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
