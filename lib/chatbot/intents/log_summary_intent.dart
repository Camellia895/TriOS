import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../chatbot_engine.dart';
import '../chatbot_models.dart';
import 'log_aware_intent.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Shows a summary of the parsed log file: game version, OS, Java,
/// mod count, error count, file path, and last-updated time.
class LogSummaryIntent extends ChatIntent with LogAwareIntent {
  @override
  final Ref ref;

  LogSummaryIntent(this.ref);

  static const _phrases = [
    'log summary',
    'log info',
    'log status',
    'log overview',
    'analyze log',
    'check log',
    'read log',
    'show log',
    "what's in my log",
    'whats in my log',
  ];

  static const _primaryKeywords = {
    'summary': 0.45,
    'overview': 0.45,
    'analyze': 0.4,
    'status': 0.35,
    'info': 0.3,
  };

  static const _secondaryKeywords = {
    'log': 0.15,
    'show': 0.1,
    'check': 0.1,
    'read': 0.1,
    'what': 0.1,
  };

  @override
  String get id => 'log_summary';

  @override
  double match(String input, ConversationContext context) {
    // Phrase match — high confidence.
    for (final phrase in _phrases) {
      if (input.contains(phrase)) return 0.85;
    }

    var score = 0.0;
    for (final entry in _primaryKeywords.entries) {
      if (input.contains(entry.key)) score += entry.value;
    }
    for (final entry in _secondaryKeywords.entries) {
      if (input.contains(entry.key)) score += entry.value;
    }

    return score.clamp(0.0, 0.95);
  }

  @override
  ChatResponse respond(String input, ConversationContext context) {
    final chips = logChips;
    if (chips == null) {
      return ChatResponse(text: LogAwareIntent.noLogMessage);
    }

    final modCount = chips.modList.modList.length;
    final errorCount = chips.errorBlock.length;
    final loc = AppLocalizationsSync.instance;
    final unknown = loc.chatbotValueUnknown;
    final updated = chips.lastUpdated != null
        ? DateFormat.yMMMd().add_jm().format(chips.lastUpdated!)
        : unknown;

    final buf = StringBuffer(loc.chatbotLogSummaryTitle + '\n');
    buf.writeln('───────────');
    buf.writeln(
      loc.chatbotLogSummaryGameVersion(chips.gameVersion ?? unknown),
    );
    buf.writeln(loc.chatbotLogSummaryOs(chips.os ?? unknown));
    buf.writeln(loc.chatbotLogSummaryJava(chips.javaVersion ?? unknown));
    buf.writeln(loc.chatbotLogSummaryModsLoaded(modCount));
    buf.writeln(loc.chatbotLogSummaryErrors(errorCount));
    if (chips.filepath != null) {
      buf.writeln(loc.chatbotLogSummaryFile(chips.filepath!));
    }
    buf.write(loc.chatbotLogSummaryLastUpdated(updated));

    return ChatResponse(text: buf.toString());
  }
}
