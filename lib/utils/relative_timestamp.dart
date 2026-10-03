import 'package:trios/l10n/trios_localizations.dart';

/// Time units for clamping [relativeTimestamp] output.
enum TimeUnit { seconds, minutes, hours, days, weeks, months, years }

extension RelativeTimeExtension on DateTime {
  /// Human-readable relative time, e.g. "5 minutes ago", "in 3 days".
  ///
  /// [minUnit] — smallest unit to display. Anything below is shown as
  /// "less than a minute ago" (or whichever unit [minUnit] is).
  /// [maxUnit] — largest unit to display. Anything above is clamped.
  String relativeTimestamp({
    TimeUnit minUnit = TimeUnit.seconds,
    TimeUnit maxUnit = TimeUnit.years,
  }) {
    final loc = AppLocalizationsSync.instance;
    final Duration difference = DateTime.now().difference(this);
    final bool isPast = difference.isNegative == false;
    final int seconds = difference.inSeconds.abs();
    final int minutes = difference.inMinutes.abs();
    final int hours = difference.inHours.abs();
    final int days = difference.inDays.abs();

    String timeString;

    if (seconds < 60 &&
        minUnit.index <= TimeUnit.seconds.index &&
        maxUnit.index >= TimeUnit.seconds.index) {
      timeString = seconds == 1
          ? loc.commonDurationSecond(seconds)
          : loc.commonDurationSeconds(seconds);
    } else if (minutes < 60 && maxUnit.index >= TimeUnit.minutes.index) {
      // Clamp up: if below minUnit, show the minUnit value.
      final m = minutes < 1 ? 1 : minutes;
      timeString = m == 1
          ? loc.commonDurationMinute(m)
          : loc.commonDurationMinutes(m);
    } else if (hours < 24 && maxUnit.index >= TimeUnit.hours.index) {
      timeString = hours == 1
          ? loc.commonDurationHour(hours)
          : loc.commonDurationHours(hours);
    } else if (days < 7 && maxUnit.index >= TimeUnit.days.index) {
      timeString = days == 1
          ? loc.commonDurationDay(days)
          : loc.commonDurationDays(days);
    } else if (days < 30 && maxUnit.index >= TimeUnit.weeks.index) {
      final weeks = (days / 7).floor();
      timeString = weeks == 1
          ? loc.commonDurationWeek(weeks)
          : loc.commonDurationWeeks(weeks);
    } else if (days < 365 && maxUnit.index >= TimeUnit.months.index) {
      final months = (days / 30).floor();
      timeString = months == 1
          ? loc.commonDurationMonth(months)
          : loc.commonDurationMonths(months);
    } else {
      final years = (days / 365).floor();
      timeString = years == 1
          ? loc.commonDurationYear(years)
          : loc.commonDurationYears(years);
    }

    return isPast
        ? loc.commonTimeAgo(timeString)
        : loc.commonTimeInFuture(timeString);
  }

  /// Compact age string relative to now: `"5s"`, `"3m"`, `"2h"`, `"4d"`.
  /// Always uses the largest unit that fits, no sign.
  String ageCompact() {
    final diff = DateTime.now().difference(this);
    if (diff.inMinutes < 1) return '${diff.inSeconds}s';
    if (diff.inHours < 1) return '${diff.inMinutes}m';
    if (diff.inDays < 1) return '${diff.inHours}h';
    return '${diff.inDays}d';
  }
}

extension CompactDurationExtension on Duration {
  /// Compact duration string: `"5s"`, `"3m"`, `"2h"`, `"4d"`.
  /// Always uses the largest unit that fits.
  String toCompactString() {
    if (inDays >= 1) return '${inDays}d';
    if (inHours >= 1) return '${inHours}h';
    if (inMinutes >= 1) return '${inMinutes}m';
    return '${inSeconds}s';
  }
}
