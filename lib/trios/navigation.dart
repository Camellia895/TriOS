import 'package:dart_mappable/dart_mappable.dart';
import 'package:material_ui/material_ui.dart';
import 'package:trios/l10n/trios_localizations.dart';
import 'package:trios/toolbar/nav_order_entry.dart';
import 'package:trios/widgets/svg_image_icon.dart';

part 'navigation.mapper.dart';

/// The default order of reorderable nav items, used on fresh installs and
/// after "Reset to default order". Matches the existing sidebar layout.
///
/// Only the 11 entries below — plus the single divider — are reorderable.
/// Settings, action buttons, launcher, rules.csv, and the layout toggle are
/// pinned and are NOT included here.
const List<NavOrderEntry> defaultNavOrder = [
  NavToolEntry(TriOSTools.dashboard),
  NavToolEntry(TriOSTools.modManager),
  NavToolEntry(TriOSTools.modProfiles),
  NavToolEntry(TriOSTools.catalog),
  NavToolEntry(TriOSTools.chipper),
  NavDividerEntry(),
  NavToolEntry(TriOSTools.codex),
  NavToolEntry(TriOSTools.ships),
  NavToolEntry(TriOSTools.weapons),
  NavToolEntry(TriOSTools.hullmods),
  NavToolEntry(TriOSTools.factions),
  NavToolEntry(TriOSTools.sectorMap),
  NavToolEntry(TriOSTools.portraits),
  NavToolEntry(TriOSTools.vramEstimator),
  NavToolEntry(TriOSTools.tips),
];

/// The set of tools that participate in reordering. `Settings` is pinned and
/// intentionally excluded.
const Set<TriOSTools> reorderableTools = {
  TriOSTools.dashboard,
  TriOSTools.modManager,
  TriOSTools.modProfiles,
  TriOSTools.catalog,
  TriOSTools.chipper,
  TriOSTools.codex,
  TriOSTools.ships,
  TriOSTools.weapons,
  TriOSTools.hullmods,
  TriOSTools.factions,
  TriOSTools.sectorMap,
  TriOSTools.portraits,
  TriOSTools.vramEstimator,
  TriOSTools.tips,
};

/// Tools hidden from the navigation unless the app is in debug mode. Used for
/// work-in-progress features that aren't ready for general use.
const Set<TriOSTools> debugOnlyTools = {TriOSTools.sectorMap, TriOSTools.codex};

/// Whether [tool]'s nav button should be shown, given the debug-mode setting.
bool isNavToolVisible(TriOSTools tool, {required bool debugMode}) =>
    debugMode || !debugOnlyTools.contains(tool);

@MappableEnum(defaultValue: TriOSTools.dashboard)
enum TriOSTools {
  dashboard,
  modManager,
  modProfiles,
  vramEstimator,
  chipper,
  portraits,
  weapons,
  ships,
  hullmods,
  factions,
  settings,
  catalog,
  tips,
  sectorMap,
  codex,
}

enum NavGroup { core, viewers, bottom }

extension TriOSToolsUI on TriOSTools {
  String get label {
    final loc = AppLocalizationsSync.instance;
    return switch (this) {
      TriOSTools.dashboard => loc.navLabelDash,
      TriOSTools.modManager => loc.navLabelMods,
      TriOSTools.modProfiles => loc.navLabelProfiles,
      TriOSTools.catalog => loc.navLabelCatalog,
      TriOSTools.chipper => loc.navLabelLogs,
      TriOSTools.vramEstimator => loc.navLabelVramEstimator,
      TriOSTools.codex => loc.navLabelCodex,
      TriOSTools.ships => loc.navLabelShips,
      TriOSTools.weapons => loc.navLabelWeapons,
      TriOSTools.hullmods => loc.navLabelHullmods,
      TriOSTools.factions => loc.navLabelFactions,
      TriOSTools.portraits => loc.navLabelPortraits,
      TriOSTools.sectorMap => loc.navLabelSector,
      TriOSTools.tips => loc.navLabelTips,
      TriOSTools.settings => loc.navLabelSettings,
    };
  }

  String get tooltip {
    final loc = AppLocalizationsSync.instance;
    return switch (this) {
      TriOSTools.dashboard => loc.navTooltipDashboard,
      TriOSTools.modManager => loc.navTooltipModManager,
      TriOSTools.modProfiles => loc.navTooltipModProfiles,
      TriOSTools.catalog => loc.navTooltipModCatalog,
      TriOSTools.chipper => loc.navTooltipLogViewer,
      TriOSTools.vramEstimator => loc.navTooltipVramEstimator,
      TriOSTools.codex => loc.navTooltipCodex,
      TriOSTools.ships => loc.navTooltipShipViewer,
      TriOSTools.weapons => loc.navTooltipWeaponViewer,
      TriOSTools.hullmods => loc.navTooltipHullmodViewer,
      TriOSTools.factions => loc.navTooltipFactionViewer,
      TriOSTools.portraits => loc.navTooltipPortraitViewer,
      TriOSTools.sectorMap => loc.navTooltipSectorMap,
      TriOSTools.tips => loc.navTooltipTipsManager,
      TriOSTools.settings => loc.navTooltipSettings,
    };
  }

  Widget icon({double size = 24, Color? color}) => switch (this) {
    TriOSTools.dashboard => Icon(Icons.dashboard, size: size, color: color),
    TriOSTools.modManager => SvgImageIcon(
      "assets/images/icon-castigator.svg",
      height: size,
      width: size,
      color: color,
    ),
    TriOSTools.modProfiles => SvgImageIcon(
      "assets/images/icon-view-carousel.svg",
      height: size,
      width: size,
      color: color,
    ),
    TriOSTools.catalog => Icon(Icons.cloud_download, size: size, color: color),
    TriOSTools.chipper => ImageIcon(
      AssetImage("assets/images/chipper/icon.png"),
      size: size - 2,
      color: color,
    ),
    TriOSTools.vramEstimator => SvgImageIcon(
      "assets/images/icon-weight.svg",
      color: color,
    ),
    TriOSTools.ships => SvgImageIcon(
      "assets/images/icon-onslaught.svg",
      height: size,
      width: size,
      color: color,
    ),
    TriOSTools.weapons => SvgImageIcon(
      "assets/images/icon-target.svg",
      color: color,
    ),
    TriOSTools.hullmods => SvgImageIcon(
      "assets/images/icon-hullmod.svg",
      height: size,
      width: size,
      color: color,
    ),
    TriOSTools.factions => Icon(Icons.flag, size: size, color: color),
    TriOSTools.codex => Icon(Icons.menu_book, size: size, color: color),
    TriOSTools.portraits => SvgImageIcon(
      "assets/images/icon-account-box-outline.svg",
      color: color,
    ),
    TriOSTools.sectorMap => Icon(Icons.scatter_plot, size: size, color: color),
    TriOSTools.tips => Icon(Icons.lightbulb, size: size, color: color),
    TriOSTools.settings => Icon(Icons.settings, size: size, color: color),
  };

  NavGroup get group => switch (this) {
    TriOSTools.dashboard ||
    TriOSTools.modManager ||
    TriOSTools.modProfiles ||
    TriOSTools.catalog ||
    TriOSTools.chipper => NavGroup.core,
    TriOSTools.vramEstimator ||
    TriOSTools.codex ||
    TriOSTools.ships ||
    TriOSTools.weapons ||
    TriOSTools.hullmods ||
    TriOSTools.factions ||
    TriOSTools.sectorMap ||
    TriOSTools.portraits ||
    TriOSTools.tips => NavGroup.viewers,
    TriOSTools.settings => NavGroup.bottom,
  };
}
