import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'profile_aware_intent.dart';

/// Shows details about the currently active mod profile.
class CurrentProfileIntent extends ChatIntent with ProfileAwareIntent {
  @override
  final Ref ref;

  CurrentProfileIntent(this.ref);

  static const _phrases = [
    'current profile',
    'active profile',
    'which profile',
    'what profile am i using',
    'selected profile',
    'my current profile',
  ];

  static const _primaryKeywords = {
    'current': 0.4,
    'active': 0.4,
    'selected': 0.4,
  };

  static const _secondaryKeywords = {
    'profile': 0.2,
    'which': 0.1,
    'using': 0.1,
  };

  @override
  String get id => 'current_profile';

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
    final profile = currentProfile;
    if (profile == null) {
      return ChatResponse(
        text: AppLocalizationsSync.instance.chatbotNoModProfileActive,
      );
    }

    final loc = AppLocalizationsSync.instance;
    final buf = StringBuffer(
      loc.chatbotActiveProfileHeader(profile.name) + '\n',
    );
    if (profile.description.isNotEmpty) {
      buf.writeln(loc.chatbotDetailDescription(profile.description));
    }
    buf.writeln(
      loc.chatbotProfileModsCount(profile.enabledModVariants.length),
    );
    if (profile.dateCreated != null) {
      buf.writeln(
        loc.chatbotProfileCreated(
          profile.dateCreated!.toLocal().toString().split('.').first,
        ),
      );
    }
    if (profile.dateModified != null) {
      buf.writeln(
        loc.chatbotProfileModified(
          profile.dateModified!.toLocal().toString().split('.').first,
        ),
      );
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
