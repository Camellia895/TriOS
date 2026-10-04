// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'catalog_data_source.dart';

class CatalogDataSourceSettingMapper
    extends EnumMapper<CatalogDataSourceSetting> {
  CatalogDataSourceSettingMapper._();

  static CatalogDataSourceSettingMapper? _instance;
  static CatalogDataSourceSettingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = CatalogDataSourceSettingMapper._(),
      );
    }
    return _instance!;
  }

  static CatalogDataSourceSetting fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CatalogDataSourceSetting decode(dynamic value) {
    switch (value) {
      case r'auto':
        return CatalogDataSourceSetting.auto;
      case r'wisp':
        return CatalogDataSourceSetting.wisp;
      case r'fossic':
        return CatalogDataSourceSetting.fossic;
      default:
        return CatalogDataSourceSetting.values[0];
    }
  }

  @override
  dynamic encode(CatalogDataSourceSetting self) {
    switch (self) {
      case CatalogDataSourceSetting.auto:
        return r'auto';
      case CatalogDataSourceSetting.wisp:
        return r'wisp';
      case CatalogDataSourceSetting.fossic:
        return r'fossic';
    }
  }
}

extension CatalogDataSourceSettingMapperExtension on CatalogDataSourceSetting {
  String toValue() {
    CatalogDataSourceSettingMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CatalogDataSourceSetting>(this)
        as String;
  }
}

