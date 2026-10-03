import 'package:material_ui/material_ui.dart';
import 'package:trios/l10n/generated/app_localizations.dart';
import 'package:trios/widgets/moving_tooltip.dart';

/// Three-dot icon button that displays a popup menu.
class OverflowMenuButton extends StatelessWidget {
  final List<PopupMenuEntry<int>> menuItems;

  /// Defaults to the localized "More options" when null.
  final String? tooltip;
  final IconData? buttonIcon;
  final Color? iconColor;
  final double? iconSize;

  const OverflowMenuButton({
    super.key,
    required this.menuItems,
    this.tooltip,
    this.buttonIcon,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return MovingTooltipWidget.text(
      message: tooltip ?? AppLocalizations.of(context).commonMoreOptions,
      child: Tooltip(
        message: "",
        child: PopupMenuButton<int>(
          tooltip: "",
          icon: Icon(
            buttonIcon ?? Icons.more_vert,
            color: iconColor,
            size: iconSize,
          ),
          itemBuilder: (context) => menuItems,
        ),
      ),
    );
  }
}

class OverflowMenuItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final String? subtitle;

  const OverflowMenuItem({
    required this.title,
    required this.icon,
    required this.onTap,
    this.subtitle,
  });

  PopupMenuEntry<int> toEntry(int? key) => PopupMenuItem<int>(
    value: key,
    onTap: onTap,
    child: ListTile(
      dense: true,
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
    ),
  );
}

/// Menu item that renders as a [CheckedPopupMenuItem] with a checkmark.
class OverflowMenuCheckItem {
  final String title;
  final IconData icon;
  final bool checked;
  final VoidCallback onTap;
  final String? tooltip;

  /// When false, the row is greyed out and can't be tapped (the checkmark
  /// still shows the current choice).
  final bool enabled;

  const OverflowMenuCheckItem({
    required this.title,
    required this.icon,
    required this.checked,
    required this.onTap,
    this.tooltip,
    this.enabled = true,
  });

  PopupMenuEntry<int> toEntry(int? key) {
    final content = Row(
      spacing: 8,
      children: [
        SizedBox(
          width: 24,
          child: checked ? const Icon(Icons.check, size: 18) : null,
        ),
        Icon(icon, size: 18),
        Text(title),
      ],
    );

    return PopupMenuItem<int>(
      value: key,
      enabled: enabled,
      onTap: enabled ? onTap : null,
      child: tooltip != null
          ? MovingTooltipWidget.text(message: tooltip!, child: content)
          : content,
    );
  }
}

// Alternative version with confirmation dialogs support
class GenericOverflowButtonWithConfirmation extends StatelessWidget {
  final List<OverflowMenuItem> menuItems;

  /// Defaults to the localized "More options" when null.
  final String? tooltip;
  final IconData? buttonIcon;
  final Color? iconColor;
  final double? iconSize;

  const GenericOverflowButtonWithConfirmation({
    super.key,
    required this.menuItems,
    this.tooltip,
    this.buttonIcon,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? AppLocalizations.of(context).commonMoreOptions,
      child: PopupMenuButton<int>(
        tooltip: "",
        icon: Icon(
          buttonIcon ?? Icons.more_vert,
          color: iconColor,
          size: iconSize,
        ),
        itemBuilder: (context) => menuItems
            .asMap()
            .entries
            .map(
              (entry) => PopupMenuItem<int>(
                value: entry.key,
                onTap: entry.value.onTap,
                child: ListTile(
                  dense: true,
                  leading: Icon(entry.value.icon),
                  title: Text(entry.value.title),
                  subtitle: entry.value.subtitle != null
                      ? Text(entry.value.subtitle!)
                      : null,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

// Helper class for items that need confirmation dialogs
class ConfirmationOverflowMenuItem extends OverflowMenuItem {
  final String confirmationTitle;
  final Widget confirmationContent;
  final String confirmButtonText;
  final String cancelButtonText;

  const ConfirmationOverflowMenuItem({
    required super.title,
    required super.icon,
    required super.onTap,
    super.subtitle,
    required this.confirmationTitle,
    required this.confirmationContent,
    this.confirmButtonText = "Confirm",
    this.cancelButtonText = "Cancel",
  });

  // Factory method to create a confirmation dialog action
  static OverflowMenuItem withConfirmation({
    required BuildContext context,
    required String title,
    required IconData icon,
    required VoidCallback onConfirm,
    required String confirmationTitle,
    required Widget confirmationContent,
    String? subtitle,
    String? confirmButtonText,
    String? cancelButtonText,
  }) {
    return OverflowMenuItem(
      title: title,
      icon: icon,
      subtitle: subtitle,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            final loc = AppLocalizations.of(context);
            return AlertDialog(
              title: Text(confirmationTitle),
              content: confirmationContent,
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(cancelButtonText ?? loc.commonCancel),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onConfirm();
                  },
                  child: Text(confirmButtonText ?? loc.commonConfirm),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
