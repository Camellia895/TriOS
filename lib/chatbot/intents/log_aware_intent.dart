import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/chipper/chipper_state.dart';
import 'package:trios/l10n/trios_localizations.dart';

/// Mixin for intents that need access to the parsed log file.
mixin LogAwareIntent {
  Ref get ref;

  LogChips? get logChips => ref.read(ChipperState.logRawContents).value;

  bool get isLogLoaded => logChips != null;

  static String get noLogMessage =>
      AppLocalizationsSync.instance.chatbotNoLogLoadedYet;
}
