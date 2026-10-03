import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/trios_localizations.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'profile_aware_intent.dart';

/// Compares the active mod profile against the current enabled mods.
class ProfileComparisonIntent extends ChatIntent
    with ModAwareIntent, ProfileAwareIntent {
  @override
  final Ref ref;

  ProfileComparisonIntent(this.ref);

  static const _phrases = [
    'compare profiles',
    'profile difference',
    'profile diff',
    'difference between profiles',
    'profile vs current',
    'profile mismatch',
  ];

  static const _primaryKeywords = {
    'compare': 0.5,
    'difference': 0.45,
    'diff': 0.45,
    'versus': 0.4,
    'mismatch': 0.45,
  };

  static const _secondaryKeywords = {
    'profiles': 0.2,
    'profile': 0.15,
    'between': 0.1,
    'current': 0.1,
  };

  @override
  String get id => 'profile_comparison';

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
        text: AppLocalizationsSync.instance.chatbotNoModProfileToCompare,
      );
    }

    final guard = guardModData();
    if (guard != null) return guard;

    // IDs in the profile.
    final profileModIds =
        profile.enabledModVariants.map((v) => v.modId).toSet();

    // IDs currently enabled.
    final currentModIds =
        enabledModVariants.map((v) => v.modInfo.id).toSet();

    final inProfileNotCurrent =
        profileModIds.difference(currentModIds);
    final inCurrentNotProfile =
        currentModIds.difference(profileModIds);

    final loc = AppLocalizationsSync.instance;
    if (inProfileNotCurrent.isEmpty && inCurrentNotProfile.isEmpty) {
      return ChatResponse(
        text: loc.chatbotProfileMatchesCurrent(profile.name),
      );
    }

    final buf = StringBuffer(
      loc.chatbotProfileVsCurrent(profile.name) + '\n',
    );

    if (inProfileNotCurrent.isNotEmpty) {
      buf.writeln(loc.chatbotInProfileNotEnabled);
      for (final id in inProfileNotCurrent.take(15)) {
        final name = profile.enabledModVariants
                .where((v) => v.modId == id)
                .firstOrNull
                ?.nameOrId ??
            id;
        buf.writeln('    - $name');
      }
      if (inProfileNotCurrent.length > 15) {
        buf.writeln(
          '    ' + loc.chatbotAndNMore(inProfileNotCurrent.length - 15),
        );
      }
    }

    if (inCurrentNotProfile.isNotEmpty) {
      buf.writeln(loc.chatbotEnabledNotInProfile);
      for (final id in inCurrentNotProfile.take(15)) {
        final mod = mods.where((m) => m.id == id).firstOrNull;
        final name = mod?.findFirstEnabledOrHighestVersion?.modInfo
                .nameOrId ??
            id;
        buf.writeln('    - $name');
      }
      if (inCurrentNotProfile.length > 15) {
        buf.writeln(
          '    ' + loc.chatbotAndNMore(inCurrentNotProfile.length - 15),
        );
      }
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
