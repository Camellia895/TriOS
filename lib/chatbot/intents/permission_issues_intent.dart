import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/trios/app_state.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'mod_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Helps diagnose file permission issues and provides platform-specific advice.
class PermissionIssuesIntent extends ChatIntent {
  final Ref ref;

  PermissionIssuesIntent(this.ref);

  static const _phrases = [
    'permission denied',
    'permission error',
    'access denied',
    'cannot write',
    "can't write",
    'read only',
    'permission problem',
    'permission issue',
    'file permission',
    'folder permission',
    'write permission',
  ];

  static const _primaryKeywords = {
    'permission': 0.55,
    'permissions': 0.55,
    'access denied': 0.5,
  };

  static const _secondaryKeywords = {
    'denied': 0.15,
    'error': 0.1,
    'write': 0.1,
    'read only': 0.1,
    'file': 0.1,
    'folder': 0.1,
  };

  @override
  String get id => 'permission_issues';

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
    final canWrite =
        ref.read(AppState.canWriteToModsFolder).value;
    final canWriteStarsector =
        ref.read(AppState.canWriteToStarsectorFolder).value;

    final loc = AppLocalizationsSync.instance;
    final writableState = (bool? v) => v == true
        ? loc.chatbotPermissionYes
        : v == false
            ? loc.chatbotPermissionNo
            : loc.chatbotValueUnknown;
    final buf = StringBuffer(loc.chatbotPermissionTitle + '\n');

    if (canWrite != null || canWriteStarsector != null) {
      buf.writeln(
        loc.chatbotPermissionModsWritable(writableState(canWrite)),
      );
      buf.writeln(
        loc.chatbotPermissionGameWritable(writableState(canWriteStarsector)),
      );
      buf.writeln();
    }

    if (Platform.isWindows) {
      buf.writeln(loc.chatbotPermissionWindowsFixes);
      buf.writeln(
        loc.chatbotPermissionWindowsStep1,
      );
      buf.writeln(
        loc.chatbotPermissionWindowsStep2,
      );
      buf.writeln(
        loc.chatbotPermissionWindowsStep3,
      );
    } else if (Platform.isMacOS) {
      buf.writeln(loc.chatbotPermissionMacFixes);
      buf.writeln(
        loc.chatbotPermissionMacStep1,
      );
      buf.writeln(
        loc.chatbotPermissionMacStep2,
      );
    } else {
      buf.writeln(loc.chatbotPermissionLinuxFixes);
      buf.writeln(
        loc.chatbotPermissionMacStep2,
      );
      buf.writeln(
        loc.chatbotPermissionLinuxStep2,
      );
    }

    return ChatResponse(text: buf.toString().trimRight());
  }
}
