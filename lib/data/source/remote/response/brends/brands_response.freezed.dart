// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopBrands _$TopBrandsFromJson(Map<String, dynamic> json) {
  return _TopBrands.fromJson(json);
}

/// @nodoc
mixin _$TopBrands {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopBrandsDataList? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandsCopyWith<TopBrands> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandsCopyWith<$Res> {
  factory $TopBrandsCopyWith(TopBrands value, $Res Function(TopBrands) then) =
      _$TopBrandsCopyWithImpl<$Res, TopBrands>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopBrandsDataList? data});

  $TopBrandsDataListCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopBrandsCopyWithImpl<$Res, $Val extends TopBrands>
    implements $TopBrandsCopyWith<$Res> {
  _$TopBrandsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopBrandsDataList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopBrandsDataListCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopBrandsDataListCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBrandsImplCopyWith<$Res>
    implements $TopBrandsCopyWith<$Res> {
  factory _$$TopBrandsImplCopyWith(
          _$TopBrandsImpl value, $Res Function(_$TopBrandsImpl) then) =
      __$$TopBrandsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopBrandsDataList? data});

  @override
  $TopBrandsDataListCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopBrandsImplCopyWithImpl<$Res>
    extends _$TopBrandsCopyWithImpl<$Res, _$TopBrandsImpl>
    implements _$$TopBrandsImplCopyWith<$Res> {
  __$$TopBrandsImplCopyWithImpl(
      _$TopBrandsImpl _value, $Res Function(_$TopBrandsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopBrandsImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopBrandsDataList?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandsImpl implements _TopBrands {
  const _$TopBrandsImpl(this.success, this.message, this.code, this.data);

  factory _$TopBrandsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandsImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopBrandsDataList? data;

  @override
  String toString() {
    return 'TopBrands(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandsImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandsImplCopyWith<_$TopBrandsImpl> get copyWith =>
      __$$TopBrandsImplCopyWithImpl<_$TopBrandsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandsImplToJson(
      this,
    );
  }
}

abstract class _TopBrands implements TopBrands {
  const factory _TopBrands(final bool? success, final String? message,
      final int? code, final TopBrandsDataList? data) = _$TopBrandsImpl;

  factory _TopBrands.fromJson(Map<String, dynamic> json) =
      _$TopBrandsImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopBrandsDataList? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandsImplCopyWith<_$TopBrandsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopBrandsDataList _$TopBrandsDataListFromJson(Map<String, dynamic> json) {
  return _TopBrandsDataList.fromJson(json);
}

/// @nodoc
mixin _$TopBrandsDataList {
  List<TopBrandData?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandsDataListCopyWith<TopBrandsDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandsDataListCopyWith<$Res> {
  factory $TopBrandsDataListCopyWith(
          TopBrandsDataList value, $Res Function(TopBrandsDataList) then) =
      _$TopBrandsDataListCopyWithImpl<$Res, TopBrandsDataList>;
  @useResult
  $Res call({List<TopBrandData?>? data});
}

/// @nodoc
class _$TopBrandsDataListCopyWithImpl<$Res, $Val extends TopBrandsDataList>
    implements $TopBrandsDataListCopyWith<$Res> {
  _$TopBrandsDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopBrandData?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopBrandsDataListImplCopyWith<$Res>
    implements $TopBrandsDataListCopyWith<$Res> {
  factory _$$TopBrandsDataListImplCopyWith(_$TopBrandsDataListImpl value,
          $Res Function(_$TopBrandsDataListImpl) then) =
      __$$TopBrandsDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopBrandData?>? data});
}

/// @nodoc
class __$$TopBrandsDataListImplCopyWithImpl<$Res>
    extends _$TopBrandsDataListCopyWithImpl<$Res, _$TopBrandsDataListImpl>
    implements _$$TopBrandsDataListImplCopyWith<$Res> {
  __$$TopBrandsDataListImplCopyWithImpl(_$TopBrandsDataListImpl _value,
      $Res Function(_$TopBrandsDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TopBrandsDataListImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopBrandData?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandsDataListImpl implements _TopBrandsDataList {
  const _$TopBrandsDataListImpl(final List<TopBrandData?>? data) : _data = data;

  factory _$TopBrandsDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandsDataListImplFromJson(json);

  final List<TopBrandData?>? _data;
  @override
  List<TopBrandData?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopBrandsDataList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandsDataListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandsDataListImplCopyWith<_$TopBrandsDataListImpl> get copyWith =>
      __$$TopBrandsDataListImplCopyWithImpl<_$TopBrandsDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandsDataListImplToJson(
      this,
    );
  }
}

abstract class _TopBrandsDataList implements TopBrandsDataList {
  const factory _TopBrandsDataList(final List<TopBrandData?>? data) =
      _$TopBrandsDataListImpl;

  factory _TopBrandsDataList.fromJson(Map<String, dynamic> json) =
      _$TopBrandsDataListImpl.fromJson;

  @override
  List<TopBrandData?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandsDataListImplCopyWith<_$TopBrandsDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopBrandData _$TopBrandDataFromJson(Map<String, dynamic> json) {
  return _TopBrandData.fromJson(json);
}

/// @nodoc
mixin _$TopBrandData {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageAlt => throw _privateConstructorUsedError;
  BrandMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandDataCopyWith<TopBrandData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandDataCopyWith<$Res> {
  factory $TopBrandDataCopyWith(
          TopBrandData value, $Res Function(TopBrandData) then) =
      _$TopBrandDataCopyWithImpl<$Res, TopBrandData>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? image,
      String? imageAlt,
      BrandMeta? meta});

  $BrandMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$TopBrandDataCopyWithImpl<$Res, $Val extends TopBrandData>
    implements $TopBrandDataCopyWith<$Res> {
  _$TopBrandDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAlt: freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BrandMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $BrandMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBrandDataImplCopyWith<$Res>
    implements $TopBrandDataCopyWith<$Res> {
  factory _$$TopBrandDataImplCopyWith(
          _$TopBrandDataImpl value, $Res Function(_$TopBrandDataImpl) then) =
      __$$TopBrandDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      String? image,
      String? imageAlt,
      BrandMeta? meta});

  @override
  $BrandMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$TopBrandDataImplCopyWithImpl<$Res>
    extends _$TopBrandDataCopyWithImpl<$Res, _$TopBrandDataImpl>
    implements _$$TopBrandDataImplCopyWith<$Res> {
  __$$TopBrandDataImplCopyWithImpl(
      _$TopBrandDataImpl _value, $Res Function(_$TopBrandDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? imageAlt = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$TopBrandDataImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BrandMeta?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandDataImpl implements _TopBrandData {
  const _$TopBrandDataImpl(
      this.name, this.slug, this.image, this.imageAlt, this.meta);

  factory _$TopBrandDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandDataImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? image;
  @override
  final String? imageAlt;
  @override
  final BrandMeta? meta;

  @override
  String toString() {
    return 'TopBrandData(name: $name, slug: $slug, image: $image, imageAlt: $imageAlt, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, slug, image, imageAlt, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandDataImplCopyWith<_$TopBrandDataImpl> get copyWith =>
      __$$TopBrandDataImplCopyWithImpl<_$TopBrandDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandDataImplToJson(
      this,
    );
  }
}

abstract class _TopBrandData implements TopBrandData {
  const factory _TopBrandData(
      final String? name,
      final String? slug,
      final String? image,
      final String? imageAlt,
      final BrandMeta? meta) = _$TopBrandDataImpl;

  factory _TopBrandData.fromJson(Map<String, dynamic> json) =
      _$TopBrandDataImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get image;
  @override
  String? get imageAlt;
  @override
  BrandMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandDataImplCopyWith<_$TopBrandDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandMeta _$BrandMetaFromJson(Map<String, dynamic> json) {
  return _BrandMeta.fromJson(json);
}

/// @nodoc
mixin _$BrandMeta {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandMetaCopyWith<BrandMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandMetaCopyWith<$Res> {
  factory $BrandMetaCopyWith(BrandMeta value, $Res Function(BrandMeta) then) =
      _$BrandMetaCopyWithImpl<$Res, BrandMeta>;
  @useResult
  $Res call({String? title, String? description, String? keywords});
}

/// @nodoc
class _$BrandMetaCopyWithImpl<$Res, $Val extends BrandMeta>
    implements $BrandMetaCopyWith<$Res> {
  _$BrandMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandMetaImplCopyWith<$Res>
    implements $BrandMetaCopyWith<$Res> {
  factory _$$BrandMetaImplCopyWith(
          _$BrandMetaImpl value, $Res Function(_$BrandMetaImpl) then) =
      __$$BrandMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, String? keywords});
}

/// @nodoc
class __$$BrandMetaImplCopyWithImpl<$Res>
    extends _$BrandMetaCopyWithImpl<$Res, _$BrandMetaImpl>
    implements _$$BrandMetaImplCopyWith<$Res> {
  __$$BrandMetaImplCopyWithImpl(
      _$BrandMetaImpl _value, $Res Function(_$BrandMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_$BrandMetaImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BrandMetaImpl implements _BrandMeta {
  const _$BrandMetaImpl(this.title, this.description, this.keywords);

  factory _$BrandMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandMetaImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? keywords;

  @override
  String toString() {
    return 'BrandMeta(title: $title, description: $description, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandMetaImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandMetaImplCopyWith<_$BrandMetaImpl> get copyWith =>
      __$$BrandMetaImplCopyWithImpl<_$BrandMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandMetaImplToJson(
      this,
    );
  }
}

abstract class _BrandMeta implements BrandMeta {
  const factory _BrandMeta(final String? title, final String? description,
      final String? keywords) = _$BrandMetaImpl;

  factory _BrandMeta.fromJson(Map<String, dynamic> json) =
      _$BrandMetaImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get keywords;
  @override
  @JsonKey(ignore: true)
  _$$BrandMetaImplCopyWith<_$BrandMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
