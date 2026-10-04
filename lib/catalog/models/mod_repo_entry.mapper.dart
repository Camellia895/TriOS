// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mod_repo_entry.dart';

class ModSourceMapper extends EnumMapper<ModSource> {
  ModSourceMapper._();

  static ModSourceMapper? _instance;
  static ModSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModSourceMapper._());
    }
    return _instance!;
  }

  static ModSource fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModSource decode(dynamic value) {
    switch (value) {
      case r'Index':
        return ModSource.Index;
      case r'ModdingSubforum':
        return ModSource.ModdingSubforum;
      case r'Discord':
        return ModSource.Discord;
      case r'NexusMods':
        return ModSource.NexusMods;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModSource self) {
    switch (self) {
      case ModSource.Index:
        return r'Index';
      case ModSource.ModdingSubforum:
        return r'ModdingSubforum';
      case ModSource.Discord:
        return r'Discord';
      case ModSource.NexusMods:
        return r'NexusMods';
    }
  }
}

extension ModSourceMapperExtension on ModSource {
  String toValue() {
    ModSourceMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModSource>(this) as String;
  }
}

class ModUrlTypeMapper extends EnumMapper<ModUrlType> {
  ModUrlTypeMapper._();

  static ModUrlTypeMapper? _instance;
  static ModUrlTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModUrlTypeMapper._());
    }
    return _instance!;
  }

  static ModUrlType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModUrlType decode(dynamic value) {
    switch (value) {
      case r'Forum':
        return ModUrlType.Forum;
      case r'Discord':
        return ModUrlType.Discord;
      case r'NexusMods':
        return ModUrlType.NexusMods;
      case r'DirectDownload':
        return ModUrlType.DirectDownload;
      case r'DownloadPage':
        return ModUrlType.DownloadPage;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModUrlType self) {
    switch (self) {
      case ModUrlType.Forum:
        return r'Forum';
      case ModUrlType.Discord:
        return r'Discord';
      case ModUrlType.NexusMods:
        return r'NexusMods';
      case ModUrlType.DirectDownload:
        return r'DirectDownload';
      case ModUrlType.DownloadPage:
        return r'DownloadPage';
    }
  }
}

extension ModUrlTypeMapperExtension on ModUrlType {
  String toValue() {
    ModUrlTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModUrlType>(this) as String;
  }
}

class ModRepoFileMapper extends ClassMapperBase<ModRepoFile> {
  ModRepoFileMapper._();

  static ModRepoFileMapper? _instance;
  static ModRepoFileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModRepoFileMapper._());
      ModRepoEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModRepoFile';

  static List<ModRepoEntry> _$items(ModRepoFile v) => v.items;
  static const Field<ModRepoFile, List<ModRepoEntry>> _f$items = Field(
    'items',
    _$items,
  );
  static String _$lastUpdated(ModRepoFile v) => v.lastUpdated;
  static const Field<ModRepoFile, String> _f$lastUpdated = Field(
    'lastUpdated',
    _$lastUpdated,
  );

  @override
  final MappableFields<ModRepoFile> fields = const {
    #items: _f$items,
    #lastUpdated: _f$lastUpdated,
  };

  static ModRepoFile _instantiate(DecodingData data) {
    return ModRepoFile(
      items: data.dec(_f$items),
      lastUpdated: data.dec(_f$lastUpdated),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModRepoFile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModRepoFile>(map);
  }

  static ModRepoFile fromJson(String json) {
    return ensureInitialized().decodeJson<ModRepoFile>(json);
  }
}

mixin ModRepoFileMappable {
  String toJson() {
    return ModRepoFileMapper.ensureInitialized().encodeJson<ModRepoFile>(
      this as ModRepoFile,
    );
  }

  Map<String, dynamic> toMap() {
    return ModRepoFileMapper.ensureInitialized().encodeMap<ModRepoFile>(
      this as ModRepoFile,
    );
  }

  ModRepoFileCopyWith<ModRepoFile, ModRepoFile, ModRepoFile> get copyWith =>
      _ModRepoFileCopyWithImpl<ModRepoFile, ModRepoFile>(
        this as ModRepoFile,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModRepoFileMapper.ensureInitialized().stringifyValue(
      this as ModRepoFile,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModRepoFileMapper.ensureInitialized().equalsValue(
      this as ModRepoFile,
      other,
    );
  }

  @override
  int get hashCode {
    return ModRepoFileMapper.ensureInitialized().hashValue(this as ModRepoFile);
  }
}

extension ModRepoFileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModRepoFile, $Out> {
  ModRepoFileCopyWith<$R, ModRepoFile, $Out> get $asModRepoFile =>
      $base.as((v, t, t2) => _ModRepoFileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModRepoFileCopyWith<$R, $In extends ModRepoFile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ModRepoEntry,
    ModRepoEntryCopyWith<$R, ModRepoEntry, ModRepoEntry>
  >
  get items;
  $R call({List<ModRepoEntry>? items, String? lastUpdated});
  ModRepoFileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModRepoFileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModRepoFile, $Out>
    implements ModRepoFileCopyWith<$R, ModRepoFile, $Out> {
  _ModRepoFileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModRepoFile> $mapper =
      ModRepoFileMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModRepoEntry,
    ModRepoEntryCopyWith<$R, ModRepoEntry, ModRepoEntry>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({List<ModRepoEntry>? items, String? lastUpdated}) => $apply(
    FieldCopyWithData({
      if (items != null) #items: items,
      if (lastUpdated != null) #lastUpdated: lastUpdated,
    }),
  );
  @override
  ModRepoFile $make(CopyWithData data) => ModRepoFile(
    items: data.get(#items, or: $value.items),
    lastUpdated: data.get(#lastUpdated, or: $value.lastUpdated),
  );

  @override
  ModRepoFileCopyWith<$R2, ModRepoFile, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModRepoFileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModRepoEntryMapper extends ClassMapperBase<ModRepoEntry> {
  ModRepoEntryMapper._();

  static ModRepoEntryMapper? _instance;
  static ModRepoEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModRepoEntryMapper._());
      ModUrlTypeMapper.ensureInitialized();
      ModSourceMapper.ensureInitialized();
      ModRepoImageMapper.ensureInitialized();
      ModRepoDownloadMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModRepoEntry';

  static String _$name(ModRepoEntry v) => v.name;
  static const Field<ModRepoEntry, String> _f$name = Field('name', _$name);
  static String? _$summary(ModRepoEntry v) => v.summary;
  static const Field<ModRepoEntry, String> _f$summary = Field(
    'summary',
    _$summary,
    opt: true,
  );
  static String? _$description(ModRepoEntry v) => v.description;
  static const Field<ModRepoEntry, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static String? _$modVersion(ModRepoEntry v) => v.modVersion;
  static const Field<ModRepoEntry, String> _f$modVersion = Field(
    'modVersion',
    _$modVersion,
    opt: true,
  );
  static String? _$gameVersionReq(ModRepoEntry v) => v.gameVersionReq;
  static const Field<ModRepoEntry, String> _f$gameVersionReq = Field(
    'gameVersionReq',
    _$gameVersionReq,
    opt: true,
    hook: GameVersionHook(),
  );
  static List<String>? _$gameVersions(ModRepoEntry v) => v.gameVersions;
  static const Field<ModRepoEntry, List<String>> _f$gameVersions = Field(
    'gameVersions',
    _$gameVersions,
    opt: true,
  );
  static String? _$modId(ModRepoEntry v) => v.modId;
  static const Field<ModRepoEntry, String> _f$modId = Field(
    'modId',
    _$modId,
    opt: true,
  );
  static List<String>? _$authorsList(ModRepoEntry v) => v.authorsList;
  static const Field<ModRepoEntry, List<String>> _f$authorsList = Field(
    'authorsList',
    _$authorsList,
    opt: true,
  );
  static Map<ModUrlType, String>? _$urls(ModRepoEntry v) => v.urls;
  static const Field<ModRepoEntry, Map<ModUrlType, String>> _f$urls = Field(
    'urls',
    _$urls,
    opt: true,
  );
  static List<ModSource>? _$sources(ModRepoEntry v) => v.sources;
  static const Field<ModRepoEntry, List<ModSource>> _f$sources = Field(
    'sources',
    _$sources,
    opt: true,
  );
  static List<String>? _$categories(ModRepoEntry v) => v.categories;
  static const Field<ModRepoEntry, List<String>> _f$categories = Field(
    'categories',
    _$categories,
    opt: true,
  );
  static Map<String, ModRepoImage>? _$images(ModRepoEntry v) => v.images;
  static const Field<ModRepoEntry, Map<String, ModRepoImage>> _f$images = Field(
    'images',
    _$images,
    opt: true,
  );
  static List<ModRepoDownload>? _$downloadReleases(ModRepoEntry v) =>
      v.downloadReleases;
  static const Field<ModRepoEntry, List<ModRepoDownload>> _f$downloadReleases =
      Field('downloadReleases', _$downloadReleases, opt: true);
  static DateTime? _$dateTimeCreated(ModRepoEntry v) => v.dateTimeCreated;
  static const Field<ModRepoEntry, DateTime> _f$dateTimeCreated = Field(
    'dateTimeCreated',
    _$dateTimeCreated,
    opt: true,
  );
  static DateTime? _$dateTimeEdited(ModRepoEntry v) => v.dateTimeEdited;
  static const Field<ModRepoEntry, DateTime> _f$dateTimeEdited = Field(
    'dateTimeEdited',
    _$dateTimeEdited,
    opt: true,
  );
  static String? _$partOfThreadTitle(ModRepoEntry v) => v.partOfThreadTitle;
  static const Field<ModRepoEntry, String> _f$partOfThreadTitle = Field(
    'partOfThreadTitle',
    _$partOfThreadTitle,
    opt: true,
  );

  @override
  final MappableFields<ModRepoEntry> fields = const {
    #name: _f$name,
    #summary: _f$summary,
    #description: _f$description,
    #modVersion: _f$modVersion,
    #gameVersionReq: _f$gameVersionReq,
    #gameVersions: _f$gameVersions,
    #modId: _f$modId,
    #authorsList: _f$authorsList,
    #urls: _f$urls,
    #sources: _f$sources,
    #categories: _f$categories,
    #images: _f$images,
    #downloadReleases: _f$downloadReleases,
    #dateTimeCreated: _f$dateTimeCreated,
    #dateTimeEdited: _f$dateTimeEdited,
    #partOfThreadTitle: _f$partOfThreadTitle,
  };

  static ModRepoEntry _instantiate(DecodingData data) {
    return ModRepoEntry(
      name: data.dec(_f$name),
      summary: data.dec(_f$summary),
      description: data.dec(_f$description),
      modVersion: data.dec(_f$modVersion),
      gameVersionReq: data.dec(_f$gameVersionReq),
      gameVersions: data.dec(_f$gameVersions),
      modId: data.dec(_f$modId),
      authorsList: data.dec(_f$authorsList),
      urls: data.dec(_f$urls),
      sources: data.dec(_f$sources),
      categories: data.dec(_f$categories),
      images: data.dec(_f$images),
      downloadReleases: data.dec(_f$downloadReleases),
      dateTimeCreated: data.dec(_f$dateTimeCreated),
      dateTimeEdited: data.dec(_f$dateTimeEdited),
      partOfThreadTitle: data.dec(_f$partOfThreadTitle),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModRepoEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModRepoEntry>(map);
  }

  static ModRepoEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ModRepoEntry>(json);
  }
}

mixin ModRepoEntryMappable {
  String toJson() {
    return ModRepoEntryMapper.ensureInitialized().encodeJson<ModRepoEntry>(
      this as ModRepoEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return ModRepoEntryMapper.ensureInitialized().encodeMap<ModRepoEntry>(
      this as ModRepoEntry,
    );
  }

  ModRepoEntryCopyWith<ModRepoEntry, ModRepoEntry, ModRepoEntry> get copyWith =>
      _ModRepoEntryCopyWithImpl<ModRepoEntry, ModRepoEntry>(
        this as ModRepoEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModRepoEntryMapper.ensureInitialized().stringifyValue(
      this as ModRepoEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModRepoEntryMapper.ensureInitialized().equalsValue(
      this as ModRepoEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ModRepoEntryMapper.ensureInitialized().hashValue(
      this as ModRepoEntry,
    );
  }
}

extension ModRepoEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModRepoEntry, $Out> {
  ModRepoEntryCopyWith<$R, ModRepoEntry, $Out> get $asModRepoEntry =>
      $base.as((v, t, t2) => _ModRepoEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModRepoEntryCopyWith<$R, $In extends ModRepoEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get gameVersions;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get authorsList;
  MapCopyWith<$R, ModUrlType, String, ObjectCopyWith<$R, String, String>>?
  get urls;
  ListCopyWith<$R, ModSource, ObjectCopyWith<$R, ModSource, ModSource>>?
  get sources;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get categories;
  MapCopyWith<
    $R,
    String,
    ModRepoImage,
    ModRepoImageCopyWith<$R, ModRepoImage, ModRepoImage>
  >?
  get images;
  ListCopyWith<
    $R,
    ModRepoDownload,
    ModRepoDownloadCopyWith<$R, ModRepoDownload, ModRepoDownload>
  >?
  get downloadReleases;
  $R call({
    String? name,
    String? summary,
    String? description,
    String? modVersion,
    String? gameVersionReq,
    List<String>? gameVersions,
    String? modId,
    List<String>? authorsList,
    Map<ModUrlType, String>? urls,
    List<ModSource>? sources,
    List<String>? categories,
    Map<String, ModRepoImage>? images,
    List<ModRepoDownload>? downloadReleases,
    DateTime? dateTimeCreated,
    DateTime? dateTimeEdited,
    String? partOfThreadTitle,
  });
  ModRepoEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModRepoEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModRepoEntry, $Out>
    implements ModRepoEntryCopyWith<$R, ModRepoEntry, $Out> {
  _ModRepoEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModRepoEntry> $mapper =
      ModRepoEntryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get gameVersions => $value.gameVersions != null
      ? ListCopyWith(
          $value.gameVersions!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(gameVersions: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get authorsList => $value.authorsList != null
      ? ListCopyWith(
          $value.authorsList!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(authorsList: v),
        )
      : null;
  @override
  MapCopyWith<$R, ModUrlType, String, ObjectCopyWith<$R, String, String>>?
  get urls => $value.urls != null
      ? MapCopyWith(
          $value.urls!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(urls: v),
        )
      : null;
  @override
  ListCopyWith<$R, ModSource, ObjectCopyWith<$R, ModSource, ModSource>>?
  get sources => $value.sources != null
      ? ListCopyWith(
          $value.sources!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(sources: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get categories => $value.categories != null
      ? ListCopyWith(
          $value.categories!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(categories: v),
        )
      : null;
  @override
  MapCopyWith<
    $R,
    String,
    ModRepoImage,
    ModRepoImageCopyWith<$R, ModRepoImage, ModRepoImage>
  >?
  get images => $value.images != null
      ? MapCopyWith(
          $value.images!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(images: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ModRepoDownload,
    ModRepoDownloadCopyWith<$R, ModRepoDownload, ModRepoDownload>
  >?
  get downloadReleases => $value.downloadReleases != null
      ? ListCopyWith(
          $value.downloadReleases!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(downloadReleases: v),
        )
      : null;
  @override
  $R call({
    String? name,
    Object? summary = $none,
    Object? description = $none,
    Object? modVersion = $none,
    Object? gameVersionReq = $none,
    Object? gameVersions = $none,
    Object? modId = $none,
    Object? authorsList = $none,
    Object? urls = $none,
    Object? sources = $none,
    Object? categories = $none,
    Object? images = $none,
    Object? downloadReleases = $none,
    Object? dateTimeCreated = $none,
    Object? dateTimeEdited = $none,
    Object? partOfThreadTitle = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (summary != $none) #summary: summary,
      if (description != $none) #description: description,
      if (modVersion != $none) #modVersion: modVersion,
      if (gameVersionReq != $none) #gameVersionReq: gameVersionReq,
      if (gameVersions != $none) #gameVersions: gameVersions,
      if (modId != $none) #modId: modId,
      if (authorsList != $none) #authorsList: authorsList,
      if (urls != $none) #urls: urls,
      if (sources != $none) #sources: sources,
      if (categories != $none) #categories: categories,
      if (images != $none) #images: images,
      if (downloadReleases != $none) #downloadReleases: downloadReleases,
      if (dateTimeCreated != $none) #dateTimeCreated: dateTimeCreated,
      if (dateTimeEdited != $none) #dateTimeEdited: dateTimeEdited,
      if (partOfThreadTitle != $none) #partOfThreadTitle: partOfThreadTitle,
    }),
  );
  @override
  ModRepoEntry $make(CopyWithData data) => ModRepoEntry(
    name: data.get(#name, or: $value.name),
    summary: data.get(#summary, or: $value.summary),
    description: data.get(#description, or: $value.description),
    modVersion: data.get(#modVersion, or: $value.modVersion),
    gameVersionReq: data.get(#gameVersionReq, or: $value.gameVersionReq),
    gameVersions: data.get(#gameVersions, or: $value.gameVersions),
    modId: data.get(#modId, or: $value.modId),
    authorsList: data.get(#authorsList, or: $value.authorsList),
    urls: data.get(#urls, or: $value.urls),
    sources: data.get(#sources, or: $value.sources),
    categories: data.get(#categories, or: $value.categories),
    images: data.get(#images, or: $value.images),
    downloadReleases: data.get(#downloadReleases, or: $value.downloadReleases),
    dateTimeCreated: data.get(#dateTimeCreated, or: $value.dateTimeCreated),
    dateTimeEdited: data.get(#dateTimeEdited, or: $value.dateTimeEdited),
    partOfThreadTitle: data.get(
      #partOfThreadTitle,
      or: $value.partOfThreadTitle,
    ),
  );

  @override
  ModRepoEntryCopyWith<$R2, ModRepoEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModRepoEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModRepoImageMapper extends ClassMapperBase<ModRepoImage> {
  ModRepoImageMapper._();

  static ModRepoImageMapper? _instance;
  static ModRepoImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModRepoImageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ModRepoImage';

  static String _$id(ModRepoImage v) => v.id;
  static const Field<ModRepoImage, String> _f$id = Field('id', _$id);
  static String? _$filename(ModRepoImage v) => v.filename;
  static const Field<ModRepoImage, String> _f$filename = Field(
    'filename',
    _$filename,
    opt: true,
  );
  static String? _$description(ModRepoImage v) => v.description;
  static const Field<ModRepoImage, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static String? _$contentType(ModRepoImage v) => v.contentType;
  static const Field<ModRepoImage, String> _f$contentType = Field(
    'contentType',
    _$contentType,
    opt: true,
  );
  static int? _$size(ModRepoImage v) => v.size;
  static const Field<ModRepoImage, int> _f$size = Field(
    'size',
    _$size,
    opt: true,
  );
  static String? _$url(ModRepoImage v) => v.url;
  static const Field<ModRepoImage, String> _f$url = Field(
    'url',
    _$url,
    opt: true,
  );
  static String? _$proxyUrl(ModRepoImage v) => v.proxyUrl;
  static const Field<ModRepoImage, String> _f$proxyUrl = Field(
    'proxyUrl',
    _$proxyUrl,
    opt: true,
  );

  @override
  final MappableFields<ModRepoImage> fields = const {
    #id: _f$id,
    #filename: _f$filename,
    #description: _f$description,
    #contentType: _f$contentType,
    #size: _f$size,
    #url: _f$url,
    #proxyUrl: _f$proxyUrl,
  };

  static ModRepoImage _instantiate(DecodingData data) {
    return ModRepoImage(
      id: data.dec(_f$id),
      filename: data.dec(_f$filename),
      description: data.dec(_f$description),
      contentType: data.dec(_f$contentType),
      size: data.dec(_f$size),
      url: data.dec(_f$url),
      proxyUrl: data.dec(_f$proxyUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModRepoImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModRepoImage>(map);
  }

  static ModRepoImage fromJson(String json) {
    return ensureInitialized().decodeJson<ModRepoImage>(json);
  }
}

mixin ModRepoImageMappable {
  String toJson() {
    return ModRepoImageMapper.ensureInitialized().encodeJson<ModRepoImage>(
      this as ModRepoImage,
    );
  }

  Map<String, dynamic> toMap() {
    return ModRepoImageMapper.ensureInitialized().encodeMap<ModRepoImage>(
      this as ModRepoImage,
    );
  }

  ModRepoImageCopyWith<ModRepoImage, ModRepoImage, ModRepoImage> get copyWith =>
      _ModRepoImageCopyWithImpl<ModRepoImage, ModRepoImage>(
        this as ModRepoImage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModRepoImageMapper.ensureInitialized().stringifyValue(
      this as ModRepoImage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModRepoImageMapper.ensureInitialized().equalsValue(
      this as ModRepoImage,
      other,
    );
  }

  @override
  int get hashCode {
    return ModRepoImageMapper.ensureInitialized().hashValue(
      this as ModRepoImage,
    );
  }
}

extension ModRepoImageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModRepoImage, $Out> {
  ModRepoImageCopyWith<$R, ModRepoImage, $Out> get $asModRepoImage =>
      $base.as((v, t, t2) => _ModRepoImageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModRepoImageCopyWith<$R, $In extends ModRepoImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? filename,
    String? description,
    String? contentType,
    int? size,
    String? url,
    String? proxyUrl,
  });
  ModRepoImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModRepoImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModRepoImage, $Out>
    implements ModRepoImageCopyWith<$R, ModRepoImage, $Out> {
  _ModRepoImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModRepoImage> $mapper =
      ModRepoImageMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? filename = $none,
    Object? description = $none,
    Object? contentType = $none,
    Object? size = $none,
    Object? url = $none,
    Object? proxyUrl = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (filename != $none) #filename: filename,
      if (description != $none) #description: description,
      if (contentType != $none) #contentType: contentType,
      if (size != $none) #size: size,
      if (url != $none) #url: url,
      if (proxyUrl != $none) #proxyUrl: proxyUrl,
    }),
  );
  @override
  ModRepoImage $make(CopyWithData data) => ModRepoImage(
    id: data.get(#id, or: $value.id),
    filename: data.get(#filename, or: $value.filename),
    description: data.get(#description, or: $value.description),
    contentType: data.get(#contentType, or: $value.contentType),
    size: data.get(#size, or: $value.size),
    url: data.get(#url, or: $value.url),
    proxyUrl: data.get(#proxyUrl, or: $value.proxyUrl),
  );

  @override
  ModRepoImageCopyWith<$R2, ModRepoImage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModRepoImageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModRepoDownloadMapper extends ClassMapperBase<ModRepoDownload> {
  ModRepoDownloadMapper._();

  static ModRepoDownloadMapper? _instance;
  static ModRepoDownloadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModRepoDownloadMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ModRepoDownload';

  static String _$url(ModRepoDownload v) => v.url;
  static const Field<ModRepoDownload, String> _f$url = Field('url', _$url);
  static String? _$label(ModRepoDownload v) => v.label;
  static const Field<ModRepoDownload, String> _f$label = Field(
    'label',
    _$label,
    opt: true,
  );
  static String? _$fileName(ModRepoDownload v) => v.fileName;
  static const Field<ModRepoDownload, String> _f$fileName = Field(
    'fileName',
    _$fileName,
    opt: true,
  );
  static String? _$gameVersion(ModRepoDownload v) => v.gameVersion;
  static const Field<ModRepoDownload, String> _f$gameVersion = Field(
    'gameVersion',
    _$gameVersion,
    opt: true,
  );
  static String? _$modVersion(ModRepoDownload v) => v.modVersion;
  static const Field<ModRepoDownload, String> _f$modVersion = Field(
    'modVersion',
    _$modVersion,
    opt: true,
  );
  static int? _$fileSizeBytes(ModRepoDownload v) => v.fileSizeBytes;
  static const Field<ModRepoDownload, int> _f$fileSizeBytes = Field(
    'fileSizeBytes',
    _$fileSizeBytes,
    opt: true,
  );
  static int? _$downloadCount(ModRepoDownload v) => v.downloadCount;
  static const Field<ModRepoDownload, int> _f$downloadCount = Field(
    'downloadCount',
    _$downloadCount,
    opt: true,
  );
  static DateTime? _$uploadedAt(ModRepoDownload v) => v.uploadedAt;
  static const Field<ModRepoDownload, DateTime> _f$uploadedAt = Field(
    'uploadedAt',
    _$uploadedAt,
    opt: true,
  );

  @override
  final MappableFields<ModRepoDownload> fields = const {
    #url: _f$url,
    #label: _f$label,
    #fileName: _f$fileName,
    #gameVersion: _f$gameVersion,
    #modVersion: _f$modVersion,
    #fileSizeBytes: _f$fileSizeBytes,
    #downloadCount: _f$downloadCount,
    #uploadedAt: _f$uploadedAt,
  };

  static ModRepoDownload _instantiate(DecodingData data) {
    return ModRepoDownload(
      url: data.dec(_f$url),
      label: data.dec(_f$label),
      fileName: data.dec(_f$fileName),
      gameVersion: data.dec(_f$gameVersion),
      modVersion: data.dec(_f$modVersion),
      fileSizeBytes: data.dec(_f$fileSizeBytes),
      downloadCount: data.dec(_f$downloadCount),
      uploadedAt: data.dec(_f$uploadedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModRepoDownload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModRepoDownload>(map);
  }

  static ModRepoDownload fromJson(String json) {
    return ensureInitialized().decodeJson<ModRepoDownload>(json);
  }
}

mixin ModRepoDownloadMappable {
  String toJson() {
    return ModRepoDownloadMapper.ensureInitialized()
        .encodeJson<ModRepoDownload>(this as ModRepoDownload);
  }

  Map<String, dynamic> toMap() {
    return ModRepoDownloadMapper.ensureInitialized().encodeMap<ModRepoDownload>(
      this as ModRepoDownload,
    );
  }

  ModRepoDownloadCopyWith<ModRepoDownload, ModRepoDownload, ModRepoDownload>
  get copyWith =>
      _ModRepoDownloadCopyWithImpl<ModRepoDownload, ModRepoDownload>(
        this as ModRepoDownload,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModRepoDownloadMapper.ensureInitialized().stringifyValue(
      this as ModRepoDownload,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModRepoDownloadMapper.ensureInitialized().equalsValue(
      this as ModRepoDownload,
      other,
    );
  }

  @override
  int get hashCode {
    return ModRepoDownloadMapper.ensureInitialized().hashValue(
      this as ModRepoDownload,
    );
  }
}

extension ModRepoDownloadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModRepoDownload, $Out> {
  ModRepoDownloadCopyWith<$R, ModRepoDownload, $Out> get $asModRepoDownload =>
      $base.as((v, t, t2) => _ModRepoDownloadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModRepoDownloadCopyWith<$R, $In extends ModRepoDownload, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? url,
    String? label,
    String? fileName,
    String? gameVersion,
    String? modVersion,
    int? fileSizeBytes,
    int? downloadCount,
    DateTime? uploadedAt,
  });
  ModRepoDownloadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModRepoDownloadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModRepoDownload, $Out>
    implements ModRepoDownloadCopyWith<$R, ModRepoDownload, $Out> {
  _ModRepoDownloadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModRepoDownload> $mapper =
      ModRepoDownloadMapper.ensureInitialized();
  @override
  $R call({
    String? url,
    Object? label = $none,
    Object? fileName = $none,
    Object? gameVersion = $none,
    Object? modVersion = $none,
    Object? fileSizeBytes = $none,
    Object? downloadCount = $none,
    Object? uploadedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (label != $none) #label: label,
      if (fileName != $none) #fileName: fileName,
      if (gameVersion != $none) #gameVersion: gameVersion,
      if (modVersion != $none) #modVersion: modVersion,
      if (fileSizeBytes != $none) #fileSizeBytes: fileSizeBytes,
      if (downloadCount != $none) #downloadCount: downloadCount,
      if (uploadedAt != $none) #uploadedAt: uploadedAt,
    }),
  );
  @override
  ModRepoDownload $make(CopyWithData data) => ModRepoDownload(
    url: data.get(#url, or: $value.url),
    label: data.get(#label, or: $value.label),
    fileName: data.get(#fileName, or: $value.fileName),
    gameVersion: data.get(#gameVersion, or: $value.gameVersion),
    modVersion: data.get(#modVersion, or: $value.modVersion),
    fileSizeBytes: data.get(#fileSizeBytes, or: $value.fileSizeBytes),
    downloadCount: data.get(#downloadCount, or: $value.downloadCount),
    uploadedAt: data.get(#uploadedAt, or: $value.uploadedAt),
  );

  @override
  ModRepoDownloadCopyWith<$R2, ModRepoDownload, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModRepoDownloadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

