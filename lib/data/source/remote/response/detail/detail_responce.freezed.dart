// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailResponse _$DetailResponseFromJson(Map<String, dynamic> json) {
  return _DetailResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  DetailResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailResponseCopyWith<DetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailResponseCopyWith<$Res> {
  factory $DetailResponseCopyWith(
          DetailResponse value, $Res Function(DetailResponse) then) =
      _$DetailResponseCopyWithImpl<$Res, DetailResponse>;
  @useResult
  $Res call({bool success, String message, int code, DetailResponseData data});

  $DetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailResponseCopyWithImpl<$Res, $Val extends DetailResponse>
    implements $DetailResponseCopyWith<$Res> {
  _$DetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailResponseDataCopyWith<$Res> get data {
    return $DetailResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailResponseImplCopyWith<$Res>
    implements $DetailResponseCopyWith<$Res> {
  factory _$$DetailResponseImplCopyWith(_$DetailResponseImpl value,
          $Res Function(_$DetailResponseImpl) then) =
      __$$DetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int code, DetailResponseData data});

  @override
  $DetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailResponseImplCopyWithImpl<$Res>
    extends _$DetailResponseCopyWithImpl<$Res, _$DetailResponseImpl>
    implements _$$DetailResponseImplCopyWith<$Res> {
  __$$DetailResponseImplCopyWithImpl(
      _$DetailResponseImpl _value, $Res Function(_$DetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$DetailResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailResponseImpl implements _DetailResponse {
  const _$DetailResponseImpl(
      {required this.success,
      required this.message,
      required this.code,
      required this.data});

  factory _$DetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int code;
  @override
  final DetailResponseData data;

  @override
  String toString() {
    return 'DetailResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailResponseImpl &&
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
  _$$DetailResponseImplCopyWith<_$DetailResponseImpl> get copyWith =>
      __$$DetailResponseImplCopyWithImpl<_$DetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailResponse implements DetailResponse {
  const factory _DetailResponse(
      {required final bool success,
      required final String message,
      required final int code,
      required final DetailResponseData data}) = _$DetailResponseImpl;

  factory _DetailResponse.fromJson(Map<String, dynamic> json) =
      _$DetailResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get code;
  @override
  DetailResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailResponseImplCopyWith<_$DetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailResponseData _$DetailResponseDataFromJson(Map<String, dynamic> json) {
  return _DetailResponseData.fromJson(json);
}

/// @nodoc
mixin _$DetailResponseData {
  DataData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailResponseDataCopyWith<DetailResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailResponseDataCopyWith<$Res> {
  factory $DetailResponseDataCopyWith(
          DetailResponseData value, $Res Function(DetailResponseData) then) =
      _$DetailResponseDataCopyWithImpl<$Res, DetailResponseData>;
  @useResult
  $Res call({DataData data});

  $DataDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DetailResponseDataCopyWithImpl<$Res, $Val extends DetailResponseData>
    implements $DetailResponseDataCopyWith<$Res> {
  _$DetailResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res> get data {
    return $DataDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailResponseDataImplCopyWith<$Res>
    implements $DetailResponseDataCopyWith<$Res> {
  factory _$$DetailResponseDataImplCopyWith(_$DetailResponseDataImpl value,
          $Res Function(_$DetailResponseDataImpl) then) =
      __$$DetailResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataData data});

  @override
  $DataDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailResponseDataImplCopyWithImpl<$Res>
    extends _$DetailResponseDataCopyWithImpl<$Res, _$DetailResponseDataImpl>
    implements _$$DetailResponseDataImplCopyWith<$Res> {
  __$$DetailResponseDataImplCopyWithImpl(_$DetailResponseDataImpl _value,
      $Res Function(_$DetailResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailResponseDataImpl implements _DetailResponseData {
  const _$DetailResponseDataImpl({required this.data});

  factory _$DetailResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailResponseDataImplFromJson(json);

  @override
  final DataData data;

  @override
  String toString() {
    return 'DetailResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailResponseDataImplCopyWith<_$DetailResponseDataImpl> get copyWith =>
      __$$DetailResponseDataImplCopyWithImpl<_$DetailResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailResponseDataImplToJson(
      this,
    );
  }
}

abstract class _DetailResponseData implements DetailResponseData {
  const factory _DetailResponseData({required final DataData data}) =
      _$DetailResponseDataImpl;

  factory _DetailResponseData.fromJson(Map<String, dynamic> json) =
      _$DetailResponseDataImpl.fromJson;

  @override
  DataData get data;
  @override
  @JsonKey(ignore: true)
  _$$DetailResponseDataImplCopyWith<_$DetailResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get guarantee => throw _privateConstructorUsedError;
  @CatalogConverter()
  Catalog get catalog => throw _privateConstructorUsedError;
  List<dynamic> get smallImages => throw _privateConstructorUsedError;
  List<dynamic> get largeImages => throw _privateConstructorUsedError;
  Availability get availability => throw _privateConstructorUsedError;
  dynamic get model => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  int get salePrice => throw _privateConstructorUsedError;
  int get loanPrice => throw _privateConstructorUsedError;
  dynamic get oldPrice => throw _privateConstructorUsedError;
  dynamic get minimalLoanPrice => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<dynamic> get saleMonths => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  dynamic get reviewsMiddleRating => throw _privateConstructorUsedError;
  @CatalogConverter()
  Catalog get seo => throw _privateConstructorUsedError;
  List<dynamic> get stickers => throw _privateConstructorUsedError;
  List<dynamic> get mainCharacters => throw _privateConstructorUsedError;
  List<dynamic> get offersByImage => throw _privateConstructorUsedError;
  List<dynamic> get offersByCharacter => throw _privateConstructorUsedError;
  List<dynamic> get breadcrumbs => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<DataCharacter> get characters => throw _privateConstructorUsedError;
  List<AvailableStore> get availableStores =>
      throw _privateConstructorUsedError;
  List<dynamic> get files => throw _privateConstructorUsedError;
  List<Accessory> get accessories => throw _privateConstructorUsedError;
  int get promotion0012Price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDataCopyWith<DataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) then) =
      _$DataDataCopyWithImpl<$Res, DataData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String guarantee,
      @CatalogConverter() Catalog catalog,
      List<dynamic> smallImages,
      List<dynamic> largeImages,
      Availability availability,
      dynamic model,
      String brand,
      int salePrice,
      int loanPrice,
      dynamic oldPrice,
      dynamic minimalLoanPrice,
      String code,
      List<dynamic> saleMonths,
      int reviewsCount,
      dynamic reviewsMiddleRating,
      @CatalogConverter() Catalog seo,
      List<dynamic> stickers,
      List<dynamic> mainCharacters,
      List<dynamic> offersByImage,
      List<dynamic> offersByCharacter,
      List<dynamic> breadcrumbs,
      String description,
      String overview,
      List<DataCharacter> characters,
      List<AvailableStore> availableStores,
      List<dynamic> files,
      List<Accessory> accessories,
      int promotion0012Price});
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res, $Val extends DataData>
    implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? guarantee = null,
    Object? catalog = null,
    Object? smallImages = null,
    Object? largeImages = null,
    Object? availability = null,
    Object? model = freezed,
    Object? brand = null,
    Object? salePrice = null,
    Object? loanPrice = null,
    Object? oldPrice = freezed,
    Object? minimalLoanPrice = freezed,
    Object? code = null,
    Object? saleMonths = null,
    Object? reviewsCount = null,
    Object? reviewsMiddleRating = freezed,
    Object? seo = null,
    Object? stickers = null,
    Object? mainCharacters = null,
    Object? offersByImage = null,
    Object? offersByCharacter = null,
    Object? breadcrumbs = null,
    Object? description = null,
    Object? overview = null,
    Object? characters = null,
    Object? availableStores = null,
    Object? files = null,
    Object? accessories = null,
    Object? promotion0012Price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      guarantee: null == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String,
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog,
      smallImages: null == smallImages
          ? _value.smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      largeImages: null == largeImages
          ? _value.largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      loanPrice: null == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimalLoanPrice: freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsMiddleRating: freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seo: null == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Catalog,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      mainCharacters: null == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      offersByImage: null == offersByImage
          ? _value.offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      offersByCharacter: null == offersByCharacter
          ? _value.offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<DataCharacter>,
      availableStores: null == availableStores
          ? _value.availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStore>,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      accessories: null == accessories
          ? _value.accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessory>,
      promotion0012Price: null == promotion0012Price
          ? _value.promotion0012Price
          : promotion0012Price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDataImplCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$$DataDataImplCopyWith(
          _$DataDataImpl value, $Res Function(_$DataDataImpl) then) =
      __$$DataDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String guarantee,
      @CatalogConverter() Catalog catalog,
      List<dynamic> smallImages,
      List<dynamic> largeImages,
      Availability availability,
      dynamic model,
      String brand,
      int salePrice,
      int loanPrice,
      dynamic oldPrice,
      dynamic minimalLoanPrice,
      String code,
      List<dynamic> saleMonths,
      int reviewsCount,
      dynamic reviewsMiddleRating,
      @CatalogConverter() Catalog seo,
      List<dynamic> stickers,
      List<dynamic> mainCharacters,
      List<dynamic> offersByImage,
      List<dynamic> offersByCharacter,
      List<dynamic> breadcrumbs,
      String description,
      String overview,
      List<DataCharacter> characters,
      List<AvailableStore> availableStores,
      List<dynamic> files,
      List<Accessory> accessories,
      int promotion0012Price});
}

/// @nodoc
class __$$DataDataImplCopyWithImpl<$Res>
    extends _$DataDataCopyWithImpl<$Res, _$DataDataImpl>
    implements _$$DataDataImplCopyWith<$Res> {
  __$$DataDataImplCopyWithImpl(
      _$DataDataImpl _value, $Res Function(_$DataDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? guarantee = null,
    Object? catalog = null,
    Object? smallImages = null,
    Object? largeImages = null,
    Object? availability = null,
    Object? model = freezed,
    Object? brand = null,
    Object? salePrice = null,
    Object? loanPrice = null,
    Object? oldPrice = freezed,
    Object? minimalLoanPrice = freezed,
    Object? code = null,
    Object? saleMonths = null,
    Object? reviewsCount = null,
    Object? reviewsMiddleRating = freezed,
    Object? seo = null,
    Object? stickers = null,
    Object? mainCharacters = null,
    Object? offersByImage = null,
    Object? offersByCharacter = null,
    Object? breadcrumbs = null,
    Object? description = null,
    Object? overview = null,
    Object? characters = null,
    Object? availableStores = null,
    Object? files = null,
    Object? accessories = null,
    Object? promotion0012Price = null,
  }) {
    return _then(_$DataDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      guarantee: null == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String,
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog,
      smallImages: null == smallImages
          ? _value._smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      largeImages: null == largeImages
          ? _value._largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      loanPrice: null == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimalLoanPrice: freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      saleMonths: null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsMiddleRating: freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seo: null == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Catalog,
      stickers: null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      mainCharacters: null == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      offersByImage: null == offersByImage
          ? _value._offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      offersByCharacter: null == offersByCharacter
          ? _value._offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      breadcrumbs: null == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<DataCharacter>,
      availableStores: null == availableStores
          ? _value._availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStore>,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      accessories: null == accessories
          ? _value._accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessory>,
      promotion0012Price: null == promotion0012Price
          ? _value.promotion0012Price
          : promotion0012Price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl(
      {required this.id,
      required this.name,
      required this.guarantee,
      @CatalogConverter() required this.catalog,
      required final List<dynamic> smallImages,
      required final List<dynamic> largeImages,
      required this.availability,
      required this.model,
      required this.brand,
      required this.salePrice,
      required this.loanPrice,
      required this.oldPrice,
      required this.minimalLoanPrice,
      required this.code,
      required final List<dynamic> saleMonths,
      required this.reviewsCount,
      required this.reviewsMiddleRating,
      @CatalogConverter() required this.seo,
      required final List<dynamic> stickers,
      required final List<dynamic> mainCharacters,
      required final List<dynamic> offersByImage,
      required final List<dynamic> offersByCharacter,
      required final List<dynamic> breadcrumbs,
      required this.description,
      required this.overview,
      required final List<DataCharacter> characters,
      required final List<AvailableStore> availableStores,
      required final List<dynamic> files,
      required final List<Accessory> accessories,
      required this.promotion0012Price})
      : _smallImages = smallImages,
        _largeImages = largeImages,
        _saleMonths = saleMonths,
        _stickers = stickers,
        _mainCharacters = mainCharacters,
        _offersByImage = offersByImage,
        _offersByCharacter = offersByCharacter,
        _breadcrumbs = breadcrumbs,
        _characters = characters,
        _availableStores = availableStores,
        _files = files,
        _accessories = accessories;

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String guarantee;
  @override
  @CatalogConverter()
  final Catalog catalog;
  final List<dynamic> _smallImages;
  @override
  List<dynamic> get smallImages {
    if (_smallImages is EqualUnmodifiableListView) return _smallImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smallImages);
  }

  final List<dynamic> _largeImages;
  @override
  List<dynamic> get largeImages {
    if (_largeImages is EqualUnmodifiableListView) return _largeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeImages);
  }

  @override
  final Availability availability;
  @override
  final dynamic model;
  @override
  final String brand;
  @override
  final int salePrice;
  @override
  final int loanPrice;
  @override
  final dynamic oldPrice;
  @override
  final dynamic minimalLoanPrice;
  @override
  final String code;
  final List<dynamic> _saleMonths;
  @override
  List<dynamic> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  final int reviewsCount;
  @override
  final dynamic reviewsMiddleRating;
  @override
  @CatalogConverter()
  final Catalog seo;
  final List<dynamic> _stickers;
  @override
  List<dynamic> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<dynamic> _mainCharacters;
  @override
  List<dynamic> get mainCharacters {
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainCharacters);
  }

  final List<dynamic> _offersByImage;
  @override
  List<dynamic> get offersByImage {
    if (_offersByImage is EqualUnmodifiableListView) return _offersByImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersByImage);
  }

  final List<dynamic> _offersByCharacter;
  @override
  List<dynamic> get offersByCharacter {
    if (_offersByCharacter is EqualUnmodifiableListView)
      return _offersByCharacter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersByCharacter);
  }

  final List<dynamic> _breadcrumbs;
  @override
  List<dynamic> get breadcrumbs {
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breadcrumbs);
  }

  @override
  final String description;
  @override
  final String overview;
  final List<DataCharacter> _characters;
  @override
  List<DataCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<AvailableStore> _availableStores;
  @override
  List<AvailableStore> get availableStores {
    if (_availableStores is EqualUnmodifiableListView) return _availableStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableStores);
  }

  final List<dynamic> _files;
  @override
  List<dynamic> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  final List<Accessory> _accessories;
  @override
  List<Accessory> get accessories {
    if (_accessories is EqualUnmodifiableListView) return _accessories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessories);
  }

  @override
  final int promotion0012Price;

  @override
  String toString() {
    return 'DataData(id: $id, name: $name, guarantee: $guarantee, catalog: $catalog, smallImages: $smallImages, largeImages: $largeImages, availability: $availability, model: $model, brand: $brand, salePrice: $salePrice, loanPrice: $loanPrice, oldPrice: $oldPrice, minimalLoanPrice: $minimalLoanPrice, code: $code, saleMonths: $saleMonths, reviewsCount: $reviewsCount, reviewsMiddleRating: $reviewsMiddleRating, seo: $seo, stickers: $stickers, mainCharacters: $mainCharacters, offersByImage: $offersByImage, offersByCharacter: $offersByCharacter, breadcrumbs: $breadcrumbs, description: $description, overview: $overview, characters: $characters, availableStores: $availableStores, files: $files, accessories: $accessories, promotion0012Price: $promotion0012Price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guarantee, guarantee) ||
                other.guarantee == guarantee) &&
            (identical(other.catalog, catalog) || other.catalog == catalog) &&
            const DeepCollectionEquality()
                .equals(other._smallImages, _smallImages) &&
            const DeepCollectionEquality()
                .equals(other._largeImages, _largeImages) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            const DeepCollectionEquality()
                .equals(other.minimalLoanPrice, minimalLoanPrice) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality()
                .equals(other.reviewsMiddleRating, reviewsMiddleRating) &&
            (identical(other.seo, seo) || other.seo == seo) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality()
                .equals(other._mainCharacters, _mainCharacters) &&
            const DeepCollectionEquality()
                .equals(other._offersByImage, _offersByImage) &&
            const DeepCollectionEquality()
                .equals(other._offersByCharacter, _offersByCharacter) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._availableStores, _availableStores) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality()
                .equals(other._accessories, _accessories) &&
            (identical(other.promotion0012Price, promotion0012Price) ||
                other.promotion0012Price == promotion0012Price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        guarantee,
        catalog,
        const DeepCollectionEquality().hash(_smallImages),
        const DeepCollectionEquality().hash(_largeImages),
        availability,
        const DeepCollectionEquality().hash(model),
        brand,
        salePrice,
        loanPrice,
        const DeepCollectionEquality().hash(oldPrice),
        const DeepCollectionEquality().hash(minimalLoanPrice),
        code,
        const DeepCollectionEquality().hash(_saleMonths),
        reviewsCount,
        const DeepCollectionEquality().hash(reviewsMiddleRating),
        seo,
        const DeepCollectionEquality().hash(_stickers),
        const DeepCollectionEquality().hash(_mainCharacters),
        const DeepCollectionEquality().hash(_offersByImage),
        const DeepCollectionEquality().hash(_offersByCharacter),
        const DeepCollectionEquality().hash(_breadcrumbs),
        description,
        overview,
        const DeepCollectionEquality().hash(_characters),
        const DeepCollectionEquality().hash(_availableStores),
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_accessories),
        promotion0012Price
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      __$$DataDataImplCopyWithImpl<_$DataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDataImplToJson(
      this,
    );
  }
}

abstract class _DataData implements DataData {
  const factory _DataData(
      {required final int id,
      required final String name,
      required final String guarantee,
      @CatalogConverter() required final Catalog catalog,
      required final List<dynamic> smallImages,
      required final List<dynamic> largeImages,
      required final Availability availability,
      required final dynamic model,
      required final String brand,
      required final int salePrice,
      required final int loanPrice,
      required final dynamic oldPrice,
      required final dynamic minimalLoanPrice,
      required final String code,
      required final List<dynamic> saleMonths,
      required final int reviewsCount,
      required final dynamic reviewsMiddleRating,
      @CatalogConverter() required final Catalog seo,
      required final List<dynamic> stickers,
      required final List<dynamic> mainCharacters,
      required final List<dynamic> offersByImage,
      required final List<dynamic> offersByCharacter,
      required final List<dynamic> breadcrumbs,
      required final String description,
      required final String overview,
      required final List<DataCharacter> characters,
      required final List<AvailableStore> availableStores,
      required final List<dynamic> files,
      required final List<Accessory> accessories,
      required final int promotion0012Price}) = _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get guarantee;
  @override
  @CatalogConverter()
  Catalog get catalog;
  @override
  List<dynamic> get smallImages;
  @override
  List<dynamic> get largeImages;
  @override
  Availability get availability;
  @override
  dynamic get model;
  @override
  String get brand;
  @override
  int get salePrice;
  @override
  int get loanPrice;
  @override
  dynamic get oldPrice;
  @override
  dynamic get minimalLoanPrice;
  @override
  String get code;
  @override
  List<dynamic> get saleMonths;
  @override
  int get reviewsCount;
  @override
  dynamic get reviewsMiddleRating;
  @override
  @CatalogConverter()
  Catalog get seo;
  @override
  List<dynamic> get stickers;
  @override
  List<dynamic> get mainCharacters;
  @override
  List<dynamic> get offersByImage;
  @override
  List<dynamic> get offersByCharacter;
  @override
  List<dynamic> get breadcrumbs;
  @override
  String get description;
  @override
  String get overview;
  @override
  List<DataCharacter> get characters;
  @override
  List<AvailableStore> get availableStores;
  @override
  List<dynamic> get files;
  @override
  List<Accessory> get accessories;
  @override
  int get promotion0012Price;
  @override
  @JsonKey(ignore: true)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accessory _$AccessoryFromJson(Map<String, dynamic> json) {
  return _Accessory.fromJson(json);
}

/// @nodoc
mixin _$Accessory {
  String get name => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessoryCopyWith<Accessory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessoryCopyWith<$Res> {
  factory $AccessoryCopyWith(Accessory value, $Res Function(Accessory) then) =
      _$AccessoryCopyWithImpl<$Res, Accessory>;
  @useResult
  $Res call({String name, List<Product> products});
}

/// @nodoc
class _$AccessoryCopyWithImpl<$Res, $Val extends Accessory>
    implements $AccessoryCopyWith<$Res> {
  _$AccessoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessoryImplCopyWith<$Res>
    implements $AccessoryCopyWith<$Res> {
  factory _$$AccessoryImplCopyWith(
          _$AccessoryImpl value, $Res Function(_$AccessoryImpl) then) =
      __$$AccessoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Product> products});
}

/// @nodoc
class __$$AccessoryImplCopyWithImpl<$Res>
    extends _$AccessoryCopyWithImpl<$Res, _$AccessoryImpl>
    implements _$$AccessoryImplCopyWith<$Res> {
  __$$AccessoryImplCopyWithImpl(
      _$AccessoryImpl _value, $Res Function(_$AccessoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_$AccessoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessoryImpl implements _Accessory {
  const _$AccessoryImpl(
      {required this.name, required final List<Product> products})
      : _products = products;

  factory _$AccessoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessoryImplFromJson(json);

  @override
  final String name;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Accessory(name: $name, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessoryImplCopyWith<_$AccessoryImpl> get copyWith =>
      __$$AccessoryImplCopyWithImpl<_$AccessoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessoryImplToJson(
      this,
    );
  }
}

abstract class _Accessory implements Accessory {
  const factory _Accessory(
      {required final String name,
      required final List<Product> products}) = _$AccessoryImpl;

  factory _Accessory.fromJson(Map<String, dynamic> json) =
      _$AccessoryImpl.fromJson;

  @override
  String get name;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$AccessoryImplCopyWith<_$AccessoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  Availability get availability => throw _privateConstructorUsedError;
  dynamic get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int get salePrice => throw _privateConstructorUsedError;
  int get allCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      Availability availability,
      dynamic axiomMonthlyPrice,
      int salePrice,
      int allCount});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? availability = null,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = null,
    Object? allCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      allCount: null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      Availability availability,
      dynamic axiomMonthlyPrice,
      int salePrice,
      int allCount});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? availability = null,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = null,
    Object? allCount = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      allCount: null == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.availability,
      required this.axiomMonthlyPrice,
      required this.salePrice,
      required this.allCount});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final Availability availability;
  @override
  final dynamic axiomMonthlyPrice;
  @override
  final int salePrice;
  @override
  final int allCount;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, allCount: $allCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality()
                .equals(other.axiomMonthlyPrice, axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      availability,
      const DeepCollectionEquality().hash(axiomMonthlyPrice),
      salePrice,
      allCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      required final String name,
      required final String image,
      required final Availability availability,
      required final dynamic axiomMonthlyPrice,
      required final int salePrice,
      required final int allCount}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  Availability get availability;
  @override
  dynamic get axiomMonthlyPrice;
  @override
  int get salePrice;
  @override
  int get allCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableStore _$AvailableStoreFromJson(Map<String, dynamic> json) {
  return _AvailableStore.fromJson(json);
}

/// @nodoc
mixin _$AvailableStore {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get workTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableStoreCopyWith<AvailableStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableStoreCopyWith<$Res> {
  factory $AvailableStoreCopyWith(
          AvailableStore value, $Res Function(AvailableStore) then) =
      _$AvailableStoreCopyWithImpl<$Res, AvailableStore>;
  @useResult
  $Res call(
      {int id,
      String name,
      String lat,
      String long,
      Phone phone,
      String address,
      String? description,
      String workTime});
}

/// @nodoc
class _$AvailableStoreCopyWithImpl<$Res, $Val extends AvailableStore>
    implements $AvailableStoreCopyWith<$Res> {
  _$AvailableStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? long = null,
    Object? phone = null,
    Object? address = null,
    Object? description = freezed,
    Object? workTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableStoreImplCopyWith<$Res>
    implements $AvailableStoreCopyWith<$Res> {
  factory _$$AvailableStoreImplCopyWith(_$AvailableStoreImpl value,
          $Res Function(_$AvailableStoreImpl) then) =
      __$$AvailableStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String lat,
      String long,
      Phone phone,
      String address,
      String? description,
      String workTime});
}

/// @nodoc
class __$$AvailableStoreImplCopyWithImpl<$Res>
    extends _$AvailableStoreCopyWithImpl<$Res, _$AvailableStoreImpl>
    implements _$$AvailableStoreImplCopyWith<$Res> {
  __$$AvailableStoreImplCopyWithImpl(
      _$AvailableStoreImpl _value, $Res Function(_$AvailableStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? long = null,
    Object? phone = null,
    Object? address = null,
    Object? description = freezed,
    Object? workTime = null,
  }) {
    return _then(_$AvailableStoreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableStoreImpl implements _AvailableStore {
  const _$AvailableStoreImpl(
      {required this.id,
      required this.name,
      required this.lat,
      required this.long,
      required this.phone,
      required this.address,
      this.description,
      required this.workTime});

  factory _$AvailableStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableStoreImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String lat;
  @override
  final String long;
  @override
  final Phone phone;
  @override
  final String address;
  @override
  final String? description;
  @override
  final String workTime;

  @override
  String toString() {
    return 'AvailableStore(id: $id, name: $name, lat: $lat, long: $long, phone: $phone, address: $address, description: $description, workTime: $workTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, lat, long, phone, address, description, workTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableStoreImplCopyWith<_$AvailableStoreImpl> get copyWith =>
      __$$AvailableStoreImplCopyWithImpl<_$AvailableStoreImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableStoreImplToJson(
      this,
    );
  }
}

abstract class _AvailableStore implements AvailableStore {
  const factory _AvailableStore(
      {required final int id,
      required final String name,
      required final String lat,
      required final String long,
      required final Phone phone,
      required final String address,
      final String? description,
      required final String workTime}) = _$AvailableStoreImpl;

  factory _AvailableStore.fromJson(Map<String, dynamic> json) =
      _$AvailableStoreImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get lat;
  @override
  String get long;
  @override
  Phone get phone;
  @override
  String get address;
  @override
  String? get description;
  @override
  String get workTime;
  @override
  @JsonKey(ignore: true)
  _$$AvailableStoreImplCopyWith<_$AvailableStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataCharacter _$DataCharacterFromJson(Map<String, dynamic> json) {
  return _DataCharacter.fromJson(json);
}

/// @nodoc
mixin _$DataCharacter {
  String get name => throw _privateConstructorUsedError;
  List<CharacterCharacter> get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCharacterCopyWith<DataCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCharacterCopyWith<$Res> {
  factory $DataCharacterCopyWith(
          DataCharacter value, $Res Function(DataCharacter) then) =
      _$DataCharacterCopyWithImpl<$Res, DataCharacter>;
  @useResult
  $Res call({String name, List<CharacterCharacter> characters});
}

/// @nodoc
class _$DataCharacterCopyWithImpl<$Res, $Val extends DataCharacter>
    implements $DataCharacterCopyWith<$Res> {
  _$DataCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterCharacter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataCharacterImplCopyWith<$Res>
    implements $DataCharacterCopyWith<$Res> {
  factory _$$DataCharacterImplCopyWith(
          _$DataCharacterImpl value, $Res Function(_$DataCharacterImpl) then) =
      __$$DataCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<CharacterCharacter> characters});
}

/// @nodoc
class __$$DataCharacterImplCopyWithImpl<$Res>
    extends _$DataCharacterCopyWithImpl<$Res, _$DataCharacterImpl>
    implements _$$DataCharacterImplCopyWith<$Res> {
  __$$DataCharacterImplCopyWithImpl(
      _$DataCharacterImpl _value, $Res Function(_$DataCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characters = null,
  }) {
    return _then(_$DataCharacterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterCharacter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataCharacterImpl implements _DataCharacter {
  const _$DataCharacterImpl(
      {required this.name, required final List<CharacterCharacter> characters})
      : _characters = characters;

  factory _$DataCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataCharacterImplFromJson(json);

  @override
  final String name;
  final List<CharacterCharacter> _characters;
  @override
  List<CharacterCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'DataCharacter(name: $name, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCharacterImplCopyWith<_$DataCharacterImpl> get copyWith =>
      __$$DataCharacterImplCopyWithImpl<_$DataCharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataCharacterImplToJson(
      this,
    );
  }
}

abstract class _DataCharacter implements DataCharacter {
  const factory _DataCharacter(
          {required final String name,
          required final List<CharacterCharacter> characters}) =
      _$DataCharacterImpl;

  factory _DataCharacter.fromJson(Map<String, dynamic> json) =
      _$DataCharacterImpl.fromJson;

  @override
  String get name;
  @override
  List<CharacterCharacter> get characters;
  @override
  @JsonKey(ignore: true)
  _$$DataCharacterImplCopyWith<_$DataCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterCharacter _$CharacterCharacterFromJson(Map<String, dynamic> json) {
  return _CharacterCharacter.fromJson(json);
}

/// @nodoc
mixin _$CharacterCharacter {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCharacterCopyWith<CharacterCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCharacterCopyWith<$Res> {
  factory $CharacterCharacterCopyWith(
          CharacterCharacter value, $Res Function(CharacterCharacter) then) =
      _$CharacterCharacterCopyWithImpl<$Res, CharacterCharacter>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$CharacterCharacterCopyWithImpl<$Res, $Val extends CharacterCharacter>
    implements $CharacterCharacterCopyWith<$Res> {
  _$CharacterCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterCharacterImplCopyWith<$Res>
    implements $CharacterCharacterCopyWith<$Res> {
  factory _$$CharacterCharacterImplCopyWith(_$CharacterCharacterImpl value,
          $Res Function(_$CharacterCharacterImpl) then) =
      __$$CharacterCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$CharacterCharacterImplCopyWithImpl<$Res>
    extends _$CharacterCharacterCopyWithImpl<$Res, _$CharacterCharacterImpl>
    implements _$$CharacterCharacterImplCopyWith<$Res> {
  __$$CharacterCharacterImplCopyWithImpl(_$CharacterCharacterImpl _value,
      $Res Function(_$CharacterCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$CharacterCharacterImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterCharacterImpl implements _CharacterCharacter {
  const _$CharacterCharacterImpl({this.name, this.value});

  factory _$CharacterCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterCharacterImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'CharacterCharacter(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterCharacterImplCopyWith<_$CharacterCharacterImpl> get copyWith =>
      __$$CharacterCharacterImplCopyWithImpl<_$CharacterCharacterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterCharacterImplToJson(
      this,
    );
  }
}

abstract class _CharacterCharacter implements CharacterCharacter {
  const factory _CharacterCharacter({final String? name, final String? value}) =
      _$CharacterCharacterImpl;

  factory _CharacterCharacter.fromJson(Map<String, dynamic> json) =
      _$CharacterCharacterImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$CharacterCharacterImplCopyWith<_$CharacterCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
