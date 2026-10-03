import 'package:material_ui/material_ui.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/thirdparty/flutter_context_menu/flutter_context_menu.dart';
import 'package:trios/utils/extensions.dart';
import 'package:trios/utils/mod_data_files.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// Wording for the mod that wins where copies of a file overlap, and for the
/// ones it beats. A `.wpn` and a spreadsheet row lose differently: a losing
/// `.wpn` still sets everything the winner leaves alone, while a losing row is
/// ignored outright.
class ModDataFileNotes {
  final String effective;
  final String other;

  const ModDataFileNotes({required this.effective, required this.other});

  /// For side files (`.wpn`, `.ship`, `.skin`, `.faction`), which the game
  /// merges together.
  static ModDataFileNotes get merged => ModDataFileNotes(
    effective: AppLocalizationsSync.instance.mod_data_fileUsedForMostValues,
    other: AppLocalizationsSync.instance.mod_data_fileAlsoApplied,
  );

  /// For spreadsheets, where one row wins and the rest do nothing.
  static ModDataFileNotes get oneWins => ModDataFileNotes(
    effective: AppLocalizationsSync.instance.mod_data_fileInUse,
    other: AppLocalizationsSync.instance.mod_data_fileOverridden,
  );
}

String _label(ModDataFile file, ModDataFileNotes notes) =>
    '${file.modName} (${file.isEffective ? notes.effective : notes.other})';

void _open(ModDataFile file) => file.file.absolute.showInExplorer();

/// A context-menu entry that opens a data file, or a submenu listing every
/// mod's copy when more than one mod ships the file.
///
/// Clicking the parent entry opens the copy that takes effect, so the common
/// case stays one click.
ContextMenuEntry buildOpenModDataFileMenuItem(
  List<ModDataFile> files, {
  required String label,
  ModDataFileNotes? notes,
  IconData icon = Icons.edit_note,
}) {
  notes ??= ModDataFileNotes.merged;
  if (files.length == 1) {
    return MenuItem(
      label: label,
      icon: icon,
      onSelected: () => _open(files.first),
    );
  }

  return MenuItem.submenu(
    label: AppLocalizationsSync.instance.modDataFileSubmenuLabel(
      label,
      files.length,
    ),
    icon: icon,
    onSelected: () => _open(files.first),
    items: [
      for (final file in files)
        MenuItem(
          label: _label(file, notes),
          icon: file.isEffective ? Icons.check : null,
          onSelected: () => _open(file),
        ),
    ],
  );
}

/// An icon button that opens a data file, or a menu of every mod's copy when
/// more than one mod ships the file. For the details dialogs.
///
/// Returns nothing when [files] is empty, so callers can drop it straight into
/// a `Wrap`.
Widget buildOpenModDataFileButton(
  BuildContext context,
  List<ModDataFile> files, {
  required String label,
  ModDataFileNotes? notes,
  IconData icon = Icons.edit_note,
}) {
  notes ??= ModDataFileNotes.merged;
  if (files.isEmpty) return const SizedBox.shrink();

  if (files.length == 1) {
    return MovingTooltipWidget.text(
      message: label,
      child: IconButton(icon: Icon(icon), onPressed: () => _open(files.first)),
    );
  }

  return MovingTooltipWidget.text(
    message: AppLocalizations.of(
      context,
    ).modDataFileStatsAffected(label, files.length),
    child: PopupMenuButton<ModDataFile>(
      icon: Icon(icon),
      onSelected: _open,
      itemBuilder: (context) => [
        for (final file in files)
          PopupMenuItem(value: file, child: Text(_label(file, notes!))),
      ],
    ),
  );
}
