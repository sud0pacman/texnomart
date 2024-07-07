// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  ProductData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({bool success, String message, int code, ProductData data});

  $ProductDataCopyWith<$Res> get data;
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
              as ProductData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res> get data {
    return $ProductDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int code, ProductData data});

  @override
  $ProductDataCopyWith<$Res> get data;
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
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$ProductImpl(
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
              as ProductData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.success,
      required this.message,
      required this.code,
      required this.data});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int code;
  @override
  final ProductData data;

  @override
  String toString() {
    return 'Product(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
      {required final bool success,
      required final String message,
      required final int code,
      required final ProductData data}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get code;
  @override
  ProductData get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get guarantee => throw _privateConstructorUsedError;
  Catalog get catalog => throw _privateConstructorUsedError;
  List<String> get smallImages => throw _privateConstructorUsedError;
  List<String> get largeImages => throw _privateConstructorUsedError;
  String get availability => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  int get salePrice => throw _privateConstructorUsedError;
  int get loanPrice => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  String? get minimalLoanPrice => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<SaleMonth> get saleMonths => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  String? get reviewsMiddleRating => throw _privateConstructorUsedError;
  Seo get seo => throw _privateConstructorUsedError;
  List<Sticker> get stickers => throw _privateConstructorUsedError;
  List<MainCharacter> get mainCharacters => throw _privateConstructorUsedError;
  List<OfferByImage> get offersByImage => throw _privateConstructorUsedError;
  List<OfferByCharacter> get offersByCharacter =>
      throw _privateConstructorUsedError;
  List<Breadcrumb> get breadcrumbs => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  List<AvailableStore> get availableStores =>
      throw _privateConstructorUsedError;
  List<Accessory> get accessories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String guarantee,
      Catalog catalog,
      List<String> smallImages,
      List<String> largeImages,
      String availability,
      String? model,
      String brand,
      int salePrice,
      int loanPrice,
      String? oldPrice,
      String? minimalLoanPrice,
      String code,
      List<SaleMonth> saleMonths,
      int reviewsCount,
      String? reviewsMiddleRating,
      Seo seo,
      List<Sticker> stickers,
      List<MainCharacter> mainCharacters,
      List<OfferByImage> offersByImage,
      List<OfferByCharacter> offersByCharacter,
      List<Breadcrumb> breadcrumbs,
      String description,
      List<Character> characters,
      List<AvailableStore> availableStores,
      List<Accessory> accessories});

  $CatalogCopyWith<$Res> get catalog;
  $SeoCopyWith<$Res> get seo;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

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
    Object? characters = null,
    Object? availableStores = null,
    Object? accessories = null,
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
              as List<String>,
      largeImages: null == largeImages
          ? _value.largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      minimalLoanPrice: freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsMiddleRating: freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as String?,
      seo: null == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Seo,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      mainCharacters: null == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>,
      offersByImage: null == offersByImage
          ? _value.offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<OfferByImage>,
      offersByCharacter: null == offersByCharacter
          ? _value.offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<OfferByCharacter>,
      breadcrumbs: null == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumb>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      availableStores: null == availableStores
          ? _value.availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStore>,
      accessories: null == accessories
          ? _value.accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessory>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatalogCopyWith<$Res> get catalog {
    return $CatalogCopyWith<$Res>(_value.catalog, (value) {
      return _then(_value.copyWith(catalog: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoCopyWith<$Res> get seo {
    return $SeoCopyWith<$Res>(_value.seo, (value) {
      return _then(_value.copyWith(seo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String guarantee,
      Catalog catalog,
      List<String> smallImages,
      List<String> largeImages,
      String availability,
      String? model,
      String brand,
      int salePrice,
      int loanPrice,
      String? oldPrice,
      String? minimalLoanPrice,
      String code,
      List<SaleMonth> saleMonths,
      int reviewsCount,
      String? reviewsMiddleRating,
      Seo seo,
      List<Sticker> stickers,
      List<MainCharacter> mainCharacters,
      List<OfferByImage> offersByImage,
      List<OfferByCharacter> offersByCharacter,
      List<Breadcrumb> breadcrumbs,
      String description,
      List<Character> characters,
      List<AvailableStore> availableStores,
      List<Accessory> accessories});

  @override
  $CatalogCopyWith<$Res> get catalog;
  @override
  $SeoCopyWith<$Res> get seo;
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
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
    Object? characters = null,
    Object? availableStores = null,
    Object? accessories = null,
  }) {
    return _then(_$ProductDataImpl(
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
              as List<String>,
      largeImages: null == largeImages
          ? _value._largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      minimalLoanPrice: freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      saleMonths: null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsMiddleRating: freezed == reviewsMiddleRating
          ? _value.reviewsMiddleRating
          : reviewsMiddleRating // ignore: cast_nullable_to_non_nullable
              as String?,
      seo: null == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Seo,
      stickers: null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      mainCharacters: null == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>,
      offersByImage: null == offersByImage
          ? _value._offersByImage
          : offersByImage // ignore: cast_nullable_to_non_nullable
              as List<OfferByImage>,
      offersByCharacter: null == offersByCharacter
          ? _value._offersByCharacter
          : offersByCharacter // ignore: cast_nullable_to_non_nullable
              as List<OfferByCharacter>,
      breadcrumbs: null == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumb>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      availableStores: null == availableStores
          ? _value._availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStore>,
      accessories: null == accessories
          ? _value._accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {required this.id,
      required this.name,
      required this.guarantee,
      required this.catalog,
      required final List<String> smallImages,
      required final List<String> largeImages,
      required this.availability,
      this.model,
      required this.brand,
      required this.salePrice,
      required this.loanPrice,
      this.oldPrice,
      this.minimalLoanPrice,
      required this.code,
      required final List<SaleMonth> saleMonths,
      required this.reviewsCount,
      this.reviewsMiddleRating,
      required this.seo,
      required final List<Sticker> stickers,
      required final List<MainCharacter> mainCharacters,
      required final List<OfferByImage> offersByImage,
      required final List<OfferByCharacter> offersByCharacter,
      required final List<Breadcrumb> breadcrumbs,
      required this.description,
      required final List<Character> characters,
      required final List<AvailableStore> availableStores,
      required final List<Accessory> accessories})
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
        _accessories = accessories;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String guarantee;
  @override
  final Catalog catalog;
  final List<String> _smallImages;
  @override
  List<String> get smallImages {
    if (_smallImages is EqualUnmodifiableListView) return _smallImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smallImages);
  }

  final List<String> _largeImages;
  @override
  List<String> get largeImages {
    if (_largeImages is EqualUnmodifiableListView) return _largeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeImages);
  }

  @override
  final String availability;
  @override
  final String? model;
  @override
  final String brand;
  @override
  final int salePrice;
  @override
  final int loanPrice;
  @override
  final String? oldPrice;
  @override
  final String? minimalLoanPrice;
  @override
  final String code;
  final List<SaleMonth> _saleMonths;
  @override
  List<SaleMonth> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  final int reviewsCount;
  @override
  final String? reviewsMiddleRating;
  @override
  final Seo seo;
  final List<Sticker> _stickers;
  @override
  List<Sticker> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<MainCharacter> _mainCharacters;
  @override
  List<MainCharacter> get mainCharacters {
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainCharacters);
  }

  final List<OfferByImage> _offersByImage;
  @override
  List<OfferByImage> get offersByImage {
    if (_offersByImage is EqualUnmodifiableListView) return _offersByImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersByImage);
  }

  final List<OfferByCharacter> _offersByCharacter;
  @override
  List<OfferByCharacter> get offersByCharacter {
    if (_offersByCharacter is EqualUnmodifiableListView)
      return _offersByCharacter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offersByCharacter);
  }

  final List<Breadcrumb> _breadcrumbs;
  @override
  List<Breadcrumb> get breadcrumbs {
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breadcrumbs);
  }

  @override
  final String description;
  final List<Character> _characters;
  @override
  List<Character> get characters {
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

  final List<Accessory> _accessories;
  @override
  List<Accessory> get accessories {
    if (_accessories is EqualUnmodifiableListView) return _accessories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessories);
  }

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, guarantee: $guarantee, catalog: $catalog, smallImages: $smallImages, largeImages: $largeImages, availability: $availability, model: $model, brand: $brand, salePrice: $salePrice, loanPrice: $loanPrice, oldPrice: $oldPrice, minimalLoanPrice: $minimalLoanPrice, code: $code, saleMonths: $saleMonths, reviewsCount: $reviewsCount, reviewsMiddleRating: $reviewsMiddleRating, seo: $seo, stickers: $stickers, mainCharacters: $mainCharacters, offersByImage: $offersByImage, offersByCharacter: $offersByCharacter, breadcrumbs: $breadcrumbs, description: $description, characters: $characters, availableStores: $availableStores, accessories: $accessories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
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
            (identical(other.model, model) || other.model == model) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.minimalLoanPrice, minimalLoanPrice) ||
                other.minimalLoanPrice == minimalLoanPrice) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsMiddleRating, reviewsMiddleRating) ||
                other.reviewsMiddleRating == reviewsMiddleRating) &&
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
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._availableStores, _availableStores) &&
            const DeepCollectionEquality()
                .equals(other._accessories, _accessories));
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
        model,
        brand,
        salePrice,
        loanPrice,
        oldPrice,
        minimalLoanPrice,
        code,
        const DeepCollectionEquality().hash(_saleMonths),
        reviewsCount,
        reviewsMiddleRating,
        seo,
        const DeepCollectionEquality().hash(_stickers),
        const DeepCollectionEquality().hash(_mainCharacters),
        const DeepCollectionEquality().hash(_offersByImage),
        const DeepCollectionEquality().hash(_offersByCharacter),
        const DeepCollectionEquality().hash(_breadcrumbs),
        description,
        const DeepCollectionEquality().hash(_characters),
        const DeepCollectionEquality().hash(_availableStores),
        const DeepCollectionEquality().hash(_accessories)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {required final int id,
      required final String name,
      required final String guarantee,
      required final Catalog catalog,
      required final List<String> smallImages,
      required final List<String> largeImages,
      required final String availability,
      final String? model,
      required final String brand,
      required final int salePrice,
      required final int loanPrice,
      final String? oldPrice,
      final String? minimalLoanPrice,
      required final String code,
      required final List<SaleMonth> saleMonths,
      required final int reviewsCount,
      final String? reviewsMiddleRating,
      required final Seo seo,
      required final List<Sticker> stickers,
      required final List<MainCharacter> mainCharacters,
      required final List<OfferByImage> offersByImage,
      required final List<OfferByCharacter> offersByCharacter,
      required final List<Breadcrumb> breadcrumbs,
      required final String description,
      required final List<Character> characters,
      required final List<AvailableStore> availableStores,
      required final List<Accessory> accessories}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get guarantee;
  @override
  Catalog get catalog;
  @override
  List<String> get smallImages;
  @override
  List<String> get largeImages;
  @override
  String get availability;
  @override
  String? get model;
  @override
  String get brand;
  @override
  int get salePrice;
  @override
  int get loanPrice;
  @override
  String? get oldPrice;
  @override
  String? get minimalLoanPrice;
  @override
  String get code;
  @override
  List<SaleMonth> get saleMonths;
  @override
  int get reviewsCount;
  @override
  String? get reviewsMiddleRating;
  @override
  Seo get seo;
  @override
  List<Sticker> get stickers;
  @override
  List<MainCharacter> get mainCharacters;
  @override
  List<OfferByImage> get offersByImage;
  @override
  List<OfferByCharacter> get offersByCharacter;
  @override
  List<Breadcrumb> get breadcrumbs;
  @override
  String get description;
  @override
  List<Character> get characters;
  @override
  List<AvailableStore> get availableStores;
  @override
  List<Accessory> get accessories;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Catalog _$CatalogFromJson(Map<String, dynamic> json) {
  return _Catalog.fromJson(json);
}

/// @nodoc
mixin _$Catalog {
  String get name => throw _privateConstructorUsedError;
  int get minPrice => throw _privateConstructorUsedError;
  int get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogCopyWith<Catalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCopyWith<$Res> {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) then) =
      _$CatalogCopyWithImpl<$Res, Catalog>;
  @useResult
  $Res call({String name, int minPrice, int maxPrice});
}

/// @nodoc
class _$CatalogCopyWithImpl<$Res, $Val extends Catalog>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? minPrice = null,
    Object? maxPrice = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
          _$CatalogImpl value, $Res Function(_$CatalogImpl) then) =
      __$$CatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int minPrice, int maxPrice});
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
      _$CatalogImpl _value, $Res Function(_$CatalogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? minPrice = null,
    Object? maxPrice = null,
  }) {
    return _then(_$CatalogImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl(
      {required this.name, required this.minPrice, required this.maxPrice});

  factory _$CatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogImplFromJson(json);

  @override
  final String name;
  @override
  final int minPrice;
  @override
  final int maxPrice;

  @override
  String toString() {
    return 'Catalog(name: $name, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogImplToJson(
      this,
    );
  }
}

abstract class _Catalog implements Catalog {
  const factory _Catalog(
      {required final String name,
      required final int minPrice,
      required final int maxPrice}) = _$CatalogImpl;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$CatalogImpl.fromJson;

  @override
  String get name;
  @override
  int get minPrice;
  @override
  int get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleMonth _$SaleMonthFromJson(Map<String, dynamic> json) {
  return _SaleMonth.fromJson(json);
}

/// @nodoc
mixin _$SaleMonth {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleMonthCopyWith<SaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleMonthCopyWith<$Res> {
  factory $SaleMonthCopyWith(SaleMonth value, $Res Function(SaleMonth) then) =
      _$SaleMonthCopyWithImpl<$Res, SaleMonth>;
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class _$SaleMonthCopyWithImpl<$Res, $Val extends SaleMonth>
    implements $SaleMonthCopyWith<$Res> {
  _$SaleMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleMonthImplCopyWith<$Res>
    implements $SaleMonthCopyWith<$Res> {
  factory _$$SaleMonthImplCopyWith(
          _$SaleMonthImpl value, $Res Function(_$SaleMonthImpl) then) =
      __$$SaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String name, String image});
}

/// @nodoc
class __$$SaleMonthImplCopyWithImpl<$Res>
    extends _$SaleMonthCopyWithImpl<$Res, _$SaleMonthImpl>
    implements _$$SaleMonthImplCopyWith<$Res> {
  __$$SaleMonthImplCopyWithImpl(
      _$SaleMonthImpl _value, $Res Function(_$SaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SaleMonthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleMonthImpl implements _SaleMonth {
  const _$SaleMonthImpl(
      {required this.id,
      required this.key,
      required this.name,
      required this.image});

  factory _$SaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleMonthImplFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'SaleMonth(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      __$$SaleMonthImplCopyWithImpl<_$SaleMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleMonthImplToJson(
      this,
    );
  }
}

abstract class _SaleMonth implements SaleMonth {
  const factory _SaleMonth(
      {required final int id,
      required final String key,
      required final String name,
      required final String image}) = _$SaleMonthImpl;

  factory _SaleMonth.fromJson(Map<String, dynamic> json) =
      _$SaleMonthImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seo _$SeoFromJson(Map<String, dynamic> json) {
  return _Seo.fromJson(json);
}

/// @nodoc
mixin _$Seo {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get keywords => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get scriptSeo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoCopyWith<Seo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoCopyWith<$Res> {
  factory $SeoCopyWith(Seo value, $Res Function(Seo) then) =
      _$SeoCopyWithImpl<$Res, Seo>;
  @useResult
  $Res call(
      {String title,
      String description,
      String keywords,
      String image,
      String scriptSeo});
}

/// @nodoc
class _$SeoCopyWithImpl<$Res, $Val extends Seo> implements $SeoCopyWith<$Res> {
  _$SeoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? keywords = null,
    Object? image = null,
    Object? scriptSeo = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      scriptSeo: null == scriptSeo
          ? _value.scriptSeo
          : scriptSeo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoImplCopyWith<$Res> implements $SeoCopyWith<$Res> {
  factory _$$SeoImplCopyWith(_$SeoImpl value, $Res Function(_$SeoImpl) then) =
      __$$SeoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String keywords,
      String image,
      String scriptSeo});
}

/// @nodoc
class __$$SeoImplCopyWithImpl<$Res> extends _$SeoCopyWithImpl<$Res, _$SeoImpl>
    implements _$$SeoImplCopyWith<$Res> {
  __$$SeoImplCopyWithImpl(_$SeoImpl _value, $Res Function(_$SeoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? keywords = null,
    Object? image = null,
    Object? scriptSeo = null,
  }) {
    return _then(_$SeoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      scriptSeo: null == scriptSeo
          ? _value.scriptSeo
          : scriptSeo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoImpl implements _Seo {
  const _$SeoImpl(
      {required this.title,
      required this.description,
      required this.keywords,
      required this.image,
      required this.scriptSeo});

  factory _$SeoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String keywords;
  @override
  final String image;
  @override
  final String scriptSeo;

  @override
  String toString() {
    return 'Seo(title: $title, description: $description, keywords: $keywords, image: $image, scriptSeo: $scriptSeo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.scriptSeo, scriptSeo) ||
                other.scriptSeo == scriptSeo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, keywords, image, scriptSeo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoImplCopyWith<_$SeoImpl> get copyWith =>
      __$$SeoImplCopyWithImpl<_$SeoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoImplToJson(
      this,
    );
  }
}

abstract class _Seo implements Seo {
  const factory _Seo(
      {required final String title,
      required final String description,
      required final String keywords,
      required final String image,
      required final String scriptSeo}) = _$SeoImpl;

  factory _Seo.fromJson(Map<String, dynamic> json) = _$SeoImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get keywords;
  @override
  String get image;
  @override
  String get scriptSeo;
  @override
  @JsonKey(ignore: true)
  _$$SeoImplCopyWith<_$SeoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  String get name => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get textColor => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  bool get showInCard => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard,
      String? image});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showInCard: null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickerImplCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$StickerImplCopyWith(
          _$StickerImpl value, $Res Function(_$StickerImpl) then) =
      __$$StickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String backgroundColor,
      String textColor,
      bool isImage,
      bool showInCard,
      String? image});
}

/// @nodoc
class __$$StickerImplCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$StickerImpl>
    implements _$$StickerImplCopyWith<$Res> {
  __$$StickerImplCopyWithImpl(
      _$StickerImpl _value, $Res Function(_$StickerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? isImage = null,
    Object? showInCard = null,
    Object? image = freezed,
  }) {
    return _then(_$StickerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      showInCard: null == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerImpl implements _Sticker {
  const _$StickerImpl(
      {required this.name,
      required this.backgroundColor,
      required this.textColor,
      required this.isImage,
      required this.showInCard,
      this.image});

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  @override
  final String name;
  @override
  final String backgroundColor;
  @override
  final String textColor;
  @override
  final bool isImage;
  @override
  final bool showInCard;
  @override
  final String? image;

  @override
  String toString() {
    return 'Sticker(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColor, textColor,
      isImage, showInCard, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      __$$StickerImplCopyWithImpl<_$StickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerImplToJson(
      this,
    );
  }
}

abstract class _Sticker implements Sticker {
  const factory _Sticker(
      {required final String name,
      required final String backgroundColor,
      required final String textColor,
      required final bool isImage,
      required final bool showInCard,
      final String? image}) = _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  @override
  String get name;
  @override
  String get backgroundColor;
  @override
  String get textColor;
  @override
  bool get isImage;
  @override
  bool get showInCard;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCharacter _$MainCharacterFromJson(Map<String, dynamic> json) {
  return _MainCharacter.fromJson(json);
}

/// @nodoc
mixin _$MainCharacter {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCharacterCopyWith<MainCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCharacterCopyWith<$Res> {
  factory $MainCharacterCopyWith(
          MainCharacter value, $Res Function(MainCharacter) then) =
      _$MainCharacterCopyWithImpl<$Res, MainCharacter>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$MainCharacterCopyWithImpl<$Res, $Val extends MainCharacter>
    implements $MainCharacterCopyWith<$Res> {
  _$MainCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCharacterImplCopyWith<$Res>
    implements $MainCharacterCopyWith<$Res> {
  factory _$$MainCharacterImplCopyWith(
          _$MainCharacterImpl value, $Res Function(_$MainCharacterImpl) then) =
      __$$MainCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$MainCharacterImplCopyWithImpl<$Res>
    extends _$MainCharacterCopyWithImpl<$Res, _$MainCharacterImpl>
    implements _$$MainCharacterImplCopyWith<$Res> {
  __$$MainCharacterImplCopyWithImpl(
      _$MainCharacterImpl _value, $Res Function(_$MainCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$MainCharacterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainCharacterImpl implements _MainCharacter {
  const _$MainCharacterImpl({required this.name, required this.value});

  factory _$MainCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCharacterImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'MainCharacter(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCharacterImplCopyWith<_$MainCharacterImpl> get copyWith =>
      __$$MainCharacterImplCopyWithImpl<_$MainCharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCharacterImplToJson(
      this,
    );
  }
}

abstract class _MainCharacter implements MainCharacter {
  const factory _MainCharacter(
      {required final String name,
      required final String value}) = _$MainCharacterImpl;

  factory _MainCharacter.fromJson(Map<String, dynamic> json) =
      _$MainCharacterImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$MainCharacterImplCopyWith<_$MainCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferByImage _$OfferByImageFromJson(Map<String, dynamic> json) {
  return _OfferByImage.fromJson(json);
}

/// @nodoc
mixin _$OfferByImage {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferByImageCopyWith<$Res> {
  factory $OfferByImageCopyWith(
          OfferByImage value, $Res Function(OfferByImage) then) =
      _$OfferByImageCopyWithImpl<$Res, OfferByImage>;
}

/// @nodoc
class _$OfferByImageCopyWithImpl<$Res, $Val extends OfferByImage>
    implements $OfferByImageCopyWith<$Res> {
  _$OfferByImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OfferByImageImplCopyWith<$Res> {
  factory _$$OfferByImageImplCopyWith(
          _$OfferByImageImpl value, $Res Function(_$OfferByImageImpl) then) =
      __$$OfferByImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfferByImageImplCopyWithImpl<$Res>
    extends _$OfferByImageCopyWithImpl<$Res, _$OfferByImageImpl>
    implements _$$OfferByImageImplCopyWith<$Res> {
  __$$OfferByImageImplCopyWithImpl(
      _$OfferByImageImpl _value, $Res Function(_$OfferByImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OfferByImageImpl implements _OfferByImage {
  const _$OfferByImageImpl();

  factory _$OfferByImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferByImageImplFromJson(json);

  @override
  String toString() {
    return 'OfferByImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferByImageImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferByImageImplToJson(
      this,
    );
  }
}

abstract class _OfferByImage implements OfferByImage {
  const factory _OfferByImage() = _$OfferByImageImpl;

  factory _OfferByImage.fromJson(Map<String, dynamic> json) =
      _$OfferByImageImpl.fromJson;
}

OfferByCharacter _$OfferByCharacterFromJson(Map<String, dynamic> json) {
  return _OfferByCharacter.fromJson(json);
}

/// @nodoc
mixin _$OfferByCharacter {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferByCharacterCopyWith<$Res> {
  factory $OfferByCharacterCopyWith(
          OfferByCharacter value, $Res Function(OfferByCharacter) then) =
      _$OfferByCharacterCopyWithImpl<$Res, OfferByCharacter>;
}

/// @nodoc
class _$OfferByCharacterCopyWithImpl<$Res, $Val extends OfferByCharacter>
    implements $OfferByCharacterCopyWith<$Res> {
  _$OfferByCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OfferByCharacterImplCopyWith<$Res> {
  factory _$$OfferByCharacterImplCopyWith(_$OfferByCharacterImpl value,
          $Res Function(_$OfferByCharacterImpl) then) =
      __$$OfferByCharacterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfferByCharacterImplCopyWithImpl<$Res>
    extends _$OfferByCharacterCopyWithImpl<$Res, _$OfferByCharacterImpl>
    implements _$$OfferByCharacterImplCopyWith<$Res> {
  __$$OfferByCharacterImplCopyWithImpl(_$OfferByCharacterImpl _value,
      $Res Function(_$OfferByCharacterImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OfferByCharacterImpl implements _OfferByCharacter {
  const _$OfferByCharacterImpl();

  factory _$OfferByCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferByCharacterImplFromJson(json);

  @override
  String toString() {
    return 'OfferByCharacter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferByCharacterImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferByCharacterImplToJson(
      this,
    );
  }
}

abstract class _OfferByCharacter implements OfferByCharacter {
  const factory _OfferByCharacter() = _$OfferByCharacterImpl;

  factory _OfferByCharacter.fromJson(Map<String, dynamic> json) =
      _$OfferByCharacterImpl.fromJson;
}

Breadcrumb _$BreadcrumbFromJson(Map<String, dynamic> json) {
  return _Breadcrumb.fromJson(json);
}

/// @nodoc
mixin _$Breadcrumb {
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreadcrumbCopyWith<Breadcrumb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreadcrumbCopyWith<$Res> {
  factory $BreadcrumbCopyWith(
          Breadcrumb value, $Res Function(Breadcrumb) then) =
      _$BreadcrumbCopyWithImpl<$Res, Breadcrumb>;
  @useResult
  $Res call({String name, String? slug, int? id, String? type});
}

/// @nodoc
class _$BreadcrumbCopyWithImpl<$Res, $Val extends Breadcrumb>
    implements $BreadcrumbCopyWith<$Res> {
  _$BreadcrumbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreadcrumbImplCopyWith<$Res>
    implements $BreadcrumbCopyWith<$Res> {
  factory _$$BreadcrumbImplCopyWith(
          _$BreadcrumbImpl value, $Res Function(_$BreadcrumbImpl) then) =
      __$$BreadcrumbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? slug, int? id, String? type});
}

/// @nodoc
class __$$BreadcrumbImplCopyWithImpl<$Res>
    extends _$BreadcrumbCopyWithImpl<$Res, _$BreadcrumbImpl>
    implements _$$BreadcrumbImplCopyWith<$Res> {
  __$$BreadcrumbImplCopyWithImpl(
      _$BreadcrumbImpl _value, $Res Function(_$BreadcrumbImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$BreadcrumbImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreadcrumbImpl implements _Breadcrumb {
  const _$BreadcrumbImpl({required this.name, this.slug, this.id, this.type});

  factory _$BreadcrumbImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreadcrumbImplFromJson(json);

  @override
  final String name;
  @override
  final String? slug;
  @override
  final int? id;
  @override
  final String? type;

  @override
  String toString() {
    return 'Breadcrumb(name: $name, slug: $slug, id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreadcrumbImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreadcrumbImplCopyWith<_$BreadcrumbImpl> get copyWith =>
      __$$BreadcrumbImplCopyWithImpl<_$BreadcrumbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreadcrumbImplToJson(
      this,
    );
  }
}

abstract class _Breadcrumb implements Breadcrumb {
  const factory _Breadcrumb(
      {required final String name,
      final String? slug,
      final int? id,
      final String? type}) = _$BreadcrumbImpl;

  factory _Breadcrumb.fromJson(Map<String, dynamic> json) =
      _$BreadcrumbImpl.fromJson;

  @override
  String get name;
  @override
  String? get slug;
  @override
  int? get id;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$BreadcrumbImplCopyWith<_$BreadcrumbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String get name => throw _privateConstructorUsedError;
  List<SubCharacter> get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call({String name, List<SubCharacter> characters});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

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
              as List<SubCharacter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<SubCharacter> characters});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? characters = null,
  }) {
    return _then(_$CharacterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<SubCharacter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {required this.name, required final List<SubCharacter> characters})
      : _characters = characters;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final String name;
  final List<SubCharacter> _characters;
  @override
  List<SubCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'Character(name: $name, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
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
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {required final String name,
      required final List<SubCharacter> characters}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  String get name;
  @override
  List<SubCharacter> get characters;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCharacter _$SubCharacterFromJson(Map<String, dynamic> json) {
  return _SubCharacter.fromJson(json);
}

/// @nodoc
mixin _$SubCharacter {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCharacterCopyWith<SubCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCharacterCopyWith<$Res> {
  factory $SubCharacterCopyWith(
          SubCharacter value, $Res Function(SubCharacter) then) =
      _$SubCharacterCopyWithImpl<$Res, SubCharacter>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$SubCharacterCopyWithImpl<$Res, $Val extends SubCharacter>
    implements $SubCharacterCopyWith<$Res> {
  _$SubCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCharacterImplCopyWith<$Res>
    implements $SubCharacterCopyWith<$Res> {
  factory _$$SubCharacterImplCopyWith(
          _$SubCharacterImpl value, $Res Function(_$SubCharacterImpl) then) =
      __$$SubCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$SubCharacterImplCopyWithImpl<$Res>
    extends _$SubCharacterCopyWithImpl<$Res, _$SubCharacterImpl>
    implements _$$SubCharacterImplCopyWith<$Res> {
  __$$SubCharacterImplCopyWithImpl(
      _$SubCharacterImpl _value, $Res Function(_$SubCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$SubCharacterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCharacterImpl implements _SubCharacter {
  const _$SubCharacterImpl({required this.name, required this.value});

  factory _$SubCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCharacterImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SubCharacter(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCharacterImplCopyWith<_$SubCharacterImpl> get copyWith =>
      __$$SubCharacterImplCopyWithImpl<_$SubCharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCharacterImplToJson(
      this,
    );
  }
}

abstract class _SubCharacter implements SubCharacter {
  const factory _SubCharacter(
      {required final String name,
      required final String value}) = _$SubCharacterImpl;

  factory _SubCharacter.fromJson(Map<String, dynamic> json) =
      _$SubCharacterImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SubCharacterImplCopyWith<_$SubCharacterImpl> get copyWith =>
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
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
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
      String phone,
      String address,
      String description,
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
    Object? description = null,
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
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      String phone,
      String address,
      String description,
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
    Object? description = null,
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
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.description,
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
  final String phone;
  @override
  final String address;
  @override
  final String description;
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
      required final String phone,
      required final String address,
      required final String description,
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
  String get phone;
  @override
  String get address;
  @override
  String get description;
  @override
  String get workTime;
  @override
  @JsonKey(ignore: true)
  _$$AvailableStoreImplCopyWith<_$AvailableStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accessory _$AccessoryFromJson(Map<String, dynamic> json) {
  return _Accessory.fromJson(json);
}

/// @nodoc
mixin _$Accessory {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessoryCopyWith<$Res> {
  factory $AccessoryCopyWith(Accessory value, $Res Function(Accessory) then) =
      _$AccessoryCopyWithImpl<$Res, Accessory>;
}

/// @nodoc
class _$AccessoryCopyWithImpl<$Res, $Val extends Accessory>
    implements $AccessoryCopyWith<$Res> {
  _$AccessoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccessoryImplCopyWith<$Res> {
  factory _$$AccessoryImplCopyWith(
          _$AccessoryImpl value, $Res Function(_$AccessoryImpl) then) =
      __$$AccessoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccessoryImplCopyWithImpl<$Res>
    extends _$AccessoryCopyWithImpl<$Res, _$AccessoryImpl>
    implements _$$AccessoryImplCopyWith<$Res> {
  __$$AccessoryImplCopyWithImpl(
      _$AccessoryImpl _value, $Res Function(_$AccessoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AccessoryImpl implements _Accessory {
  const _$AccessoryImpl();

  factory _$AccessoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessoryImplFromJson(json);

  @override
  String toString() {
    return 'Accessory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccessoryImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessoryImplToJson(
      this,
    );
  }
}

abstract class _Accessory implements Accessory {
  const factory _Accessory() = _$AccessoryImpl;

  factory _Accessory.fromJson(Map<String, dynamic> json) =
      _$AccessoryImpl.fromJson;
}
