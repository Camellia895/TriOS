import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/trios/settings/app_settings_logic.dart';

/// The UI language to use, or null to follow the system locale.
///
/// Watch this where the locale is needed (the `MaterialApp` in `main.dart`);
/// the `Localizations` widget propagates changes to every translated string.
final appLocaleProvider = Provider<Locale?>((ref) {
  final languageCode = ref.watch(appSettings.select((s) => s.locale));
  if (languageCode == null || languageCode.isEmpty) return null;
  return Locale(languageCode);
});

/// Access to [AppLocalizations] without a `BuildContext`.
///
/// Strings built outside widgets (controllers, services, error messages) can't
/// call `AppLocalizations.of(context)`. The [SyncAppLocalizationsDelegate]
/// installed on the `MaterialApp` records the latest instance here when the
/// locale loads, so logic-layer code can read `AppLocalizationsSync.instance`.
/// Before the first load it falls back to looking up the system locale.
class AppLocalizationsSync {
  static AppLocalizations? _instance;

  static AppLocalizations get instance =>
      _instance ?? lookupAppLocalizations(PlatformDispatcher.instance.locale);
}

/// Loads [AppLocalizations] for the `MaterialApp` and records the instance in
/// [AppLocalizationsSync]. Use this instead of `AppLocalizations.delegate` so
/// both widget-tree and logic-layer lookups stay in sync.
class SyncAppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const SyncAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.delegate.isSupported(locale);

  @override
  Future<AppLocalizations> load(Locale locale) {
    final localizations = AppLocalizations.delegate.load(locale);
    // The generated load returns a SynchronousFuture for non-lazy messages;
    // record the instance as soon as it exists.
    localizations.then((value) => AppLocalizationsSync._instance = value);
    return localizations;
  }

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<AppLocalizations> old,
  ) => false;
}
