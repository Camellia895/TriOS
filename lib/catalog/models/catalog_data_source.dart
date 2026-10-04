import 'package:dart_mappable/dart_mappable.dart';

part 'catalog_data_source.mapper.dart';

/// Which mod index the Catalog page browses.
///
/// `auto` follows the UI language: Chinese-speaking users get the Fossic
/// (fossic.org) index, everyone else the English forum's.
@MappableEnum(defaultValue: CatalogDataSourceSetting.auto)
enum CatalogDataSourceSetting {
  auto,

  /// The English forum's scraped index (Wisp's Mod Repo).
  wisp,

  /// The Chinese forum's (fossic.org) mod index API.
  fossic,
}
