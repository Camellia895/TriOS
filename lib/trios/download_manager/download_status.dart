import 'package:trios/l10n/trios_localizations.dart';

enum DownloadStatus {
  queued,
  retrievingFileInfo,
  downloading,
  completed,
  failed,
  paused,
  canceled,
}

extension DownloadStatusExtension on DownloadStatus {
  bool get isCompleted {
    switch (this) {
      case DownloadStatus.queued:
        return false;
      case DownloadStatus.retrievingFileInfo:
        return false;
      case DownloadStatus.downloading:
        return false;
      case DownloadStatus.paused:
        return false;
      case DownloadStatus.completed:
        return true;
      case DownloadStatus.failed:
        return true;

      case DownloadStatus.canceled:
        return true;
    }
  }

  String get displayString {
    final loc = AppLocalizationsSync.instance;
    switch (this) {
      case DownloadStatus.queued:
        return loc.downloadStatusQueued;
      case DownloadStatus.retrievingFileInfo:
        return loc.downloadStatusRetrievingFileInfo;
      case DownloadStatus.downloading:
        return loc.downloadStatusDownloading;
      case DownloadStatus.completed:
        return loc.downloadStatusCompleted;
      case DownloadStatus.failed:
        return loc.downloadStatusFailed;
      case DownloadStatus.paused:
        return loc.downloadStatusPaused;
      case DownloadStatus.canceled:
        return loc.downloadStatusCanceled;
    }
  }
}
