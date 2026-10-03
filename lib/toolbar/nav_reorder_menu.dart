import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/thirdparty/flutter_context_menu/flutter_context_menu.dart';
import 'package:trios/toolbar/nav_order_controller.dart';

/// Builds the right-click context menu for the sidebar / top-bar.
///
/// Menu entries:
/// - "Rearrange icons" / "Exit rearrange mode" — toggles drag mode.
/// - "Reset to default order" — restores [defaultNavOrder]. Confirms only if
///   the current order differs from the default.
ContextMenu buildNavReorderContextMenu(
  BuildContext context,
  WidgetRef ref, {
  Offset? position,
}) {
  final controller = ref.read(navOrderProvider.notifier);
  final state = ref.read(navOrderProvider);
  final loc = AppLocalizations.of(context);

  return ContextMenu(
    entries: [
      MenuItem(
        label: state.isInDragMode
            ? loc.app_sidebarExitRearrangeMode
            : loc.toolbarRearrangeIcons,
        icon: state.isInDragMode ? Icons.check : Icons.drag_indicator,
        onSelected: () {
          controller.toggleDragMode();
        },
      ),
      const MenuDivider(),
      MenuItem(
        label: loc.nav_reorder_menuResetToDefaultOrder,
        icon: Icons.restart_alt,
        onSelected: () async {
          if (!controller.isCustomized) {
            // Already default — no-op, no dialog.
            return;
          }
          final confirmed = await _confirmReset(context);
          if (confirmed == true) {
            await controller.resetToDefault();
          }
        },
      ),
    ],
    position: position,
  );
}

Future<bool?> _confirmReset(BuildContext context) {
  final loc = AppLocalizations.of(context);
  return showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(loc.nav_reorder_menuResetNavOrder),
      content: Text(
        loc.nav_reorder_menuThisRestoresTheDefault,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(false),
          child: Text(loc.commonCancel),
        ),
        FilledButton(
          onPressed: () => Navigator.of(ctx).pop(true),
          child: Text(loc.finderReset),
        ),
      ],
    ),
  );
}
