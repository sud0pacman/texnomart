// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_category_prdoducts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InnerCategoryProducts _$InnerCategoryProductsFromJson(
    Map<String, dynamic> json) {
  return _InnerCategoryProducts.fromJson(json);
}

/// @nodoc
mixin _$InnerCategoryProducts {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerCategoryProductsCopyWith<InnerCategoryProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerCategoryProductsCopyWith<$Res> {
  factory $InnerCategoryProductsCopyWith(InnerCategoryProducts value,
          $Res Function(InnerCategoryProducts) then) =
      _$InnerCategoryProductsCopyWithImpl<$Res, InnerCategoryProducts>;
  @useResult
  $Res call({bool success, String message, int code, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$InnerCategoryProductsCopyWithImpl<$Res,
        $Val extends InnerCategoryProducts>
    implements $InnerCategoryProductsCopyWith<$Res> {
  _$InnerCategoryProductsCopyWithImpl(this._value, this._then);

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
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InnerCategoryProductsImplCopyWith<$Res>
    implements $InnerCategoryProductsCopyWith<$Res> {
  factory _$$InnerCategoryProductsImplCopyWith(
          _$InnerCategoryProductsImpl value,
          $Res Function(_$InnerCategoryProductsImpl) then) =
      __$$InnerCategoryProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int code, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InnerCategoryProductsImplCopyWithImpl<$Res>
    extends _$InnerCategoryProductsCopyWithImpl<$Res,
        _$InnerCategoryProductsImpl>
    implements _$$InnerCategoryProductsImplCopyWith<$Res> {
  __$$InnerCategoryProductsImplCopyWithImpl(_$InnerCategoryProductsImpl _value,
      $Res Function(_$InnerCategoryProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$InnerCategoryProductsImpl(
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
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerCategoryProductsImpl implements _InnerCategoryProducts {
  _$InnerCategoryProductsImpl(
      {required this.success,
      required this.message,
      required this.code,
      required this.data});

  factory _$InnerCategoryProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerCategoryProductsImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int code;
  @override
  final Data data;

  @override
  String toString() {
    return 'InnerCategoryProducts(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerCategoryProductsImpl &&
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
  _$$InnerCategoryProductsImplCopyWith<_$InnerCategoryProductsImpl>
      get copyWith => __$$InnerCategoryProductsImplCopyWithImpl<
          _$InnerCategoryProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerCategoryProductsImplToJson(
      this,
    );
  }
}

abstract class _InnerCategoryProducts implements InnerCategoryProducts {
  factory _InnerCategoryProducts(
      {required final bool success,
      required final String message,
      required final int code,
      required final Data data}) = _$InnerCategoryProductsImpl;

  factory _InnerCategoryProducts.fromJson(Map<String, dynamic> json) =
      _$InnerCategoryProductsImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get code;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$InnerCategoryProductsImplCopyWith<_$InnerCategoryProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Product> get products => throw _privateConstructorUsedError;
  List<int> get categories => throw _privateConstructorUsedError;
  List<BrandElement> get filter => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  List<BrandElement> get stickers => throw _privateConstructorUsedError;
  List<BrandElement> get brands => throw _privateConstructorUsedError;
  List<DataSaleMonth> get saleMonths => throw _privateConstructorUsedError;
  int get saleMonthsCount => throw _privateConstructorUsedError;
  int get brandsCount => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<Product> products,
      List<int> categories,
      List<BrandElement> filter,
      Price price,
      List<BrandElement> stickers,
      List<BrandElement> brands,
      List<DataSaleMonth> saleMonths,
      int saleMonthsCount,
      int brandsCount,
      Pagination pagination});

  $PriceCopyWith<$Res> get price;
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categories = null,
    Object? filter = null,
    Object? price = null,
    Object? stickers = null,
    Object? brands = null,
    Object? saleMonths = null,
    Object? saleMonthsCount = null,
    Object? brandsCount = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      saleMonths: null == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<DataSaleMonth>,
      saleMonthsCount: null == saleMonthsCount
          ? _value.saleMonthsCount
          : saleMonthsCount // ignore: cast_nullable_to_non_nullable
              as int,
      brandsCount: null == brandsCount
          ? _value.brandsCount
          : brandsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products,
      List<int> categories,
      List<BrandElement> filter,
      Price price,
      List<BrandElement> stickers,
      List<BrandElement> brands,
      List<DataSaleMonth> saleMonths,
      int saleMonthsCount,
      int brandsCount,
      Pagination pagination});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categories = null,
    Object? filter = null,
    Object? price = null,
    Object? stickers = null,
    Object? brands = null,
    Object? saleMonths = null,
    Object? saleMonthsCount = null,
    Object? brandsCount = null,
    Object? pagination = null,
  }) {
    return _then(_$DataImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      stickers: null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandElement>,
      saleMonths: null == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<DataSaleMonth>,
      saleMonthsCount: null == saleMonthsCount
          ? _value.saleMonthsCount
          : saleMonthsCount // ignore: cast_nullable_to_non_nullable
              as int,
      brandsCount: null == brandsCount
          ? _value.brandsCount
          : brandsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {required final List<Product> products,
      required final List<int> categories,
      required final List<BrandElement> filter,
      required this.price,
      required final List<BrandElement> stickers,
      required final List<BrandElement> brands,
      required final List<DataSaleMonth> saleMonths,
      required this.saleMonthsCount,
      required this.brandsCount,
      required this.pagination})
      : _products = products,
        _categories = categories,
        _filter = filter,
        _stickers = stickers,
        _brands = brands,
        _saleMonths = saleMonths;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<int> _categories;
  @override
  List<int> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<BrandElement> _filter;
  @override
  List<BrandElement> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  @override
  final Price price;
  final List<BrandElement> _stickers;
  @override
  List<BrandElement> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  final List<BrandElement> _brands;
  @override
  List<BrandElement> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<DataSaleMonth> _saleMonths;
  @override
  List<DataSaleMonth> get saleMonths {
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleMonths);
  }

  @override
  final int saleMonthsCount;
  @override
  final int brandsCount;
  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'Data(products: $products, categories: $categories, filter: $filter, price: $price, stickers: $stickers, brands: $brands, saleMonths: $saleMonths, saleMonthsCount: $saleMonthsCount, brandsCount: $brandsCount, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.saleMonthsCount, saleMonthsCount) ||
                other.saleMonthsCount == saleMonthsCount) &&
            (identical(other.brandsCount, brandsCount) ||
                other.brandsCount == brandsCount) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_filter),
      price,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_saleMonths),
      saleMonthsCount,
      brandsCount,
      pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {required final List<Product> products,
      required final List<int> categories,
      required final List<BrandElement> filter,
      required final Price price,
      required final List<BrandElement> stickers,
      required final List<BrandElement> brands,
      required final List<DataSaleMonth> saleMonths,
      required final int saleMonthsCount,
      required final int brandsCount,
      required final Pagination pagination}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<Product> get products;
  @override
  List<int> get categories;
  @override
  List<BrandElement> get filter;
  @override
  Price get price;
  @override
  List<BrandElement> get stickers;
  @override
  List<BrandElement> get brands;
  @override
  List<DataSaleMonth> get saleMonths;
  @override
  int get saleMonthsCount;
  @override
  int get brandsCount;
  @override
  Pagination get pagination;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandElement _$BrandElementFromJson(Map<String, dynamic> json) {
  return _BrandElement.fromJson(json);
}

/// @nodoc
mixin _$BrandElement {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Value>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandElementCopyWith<BrandElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandElementCopyWith<$Res> {
  factory $BrandElementCopyWith(
          BrandElement value, $Res Function(BrandElement) then) =
      _$BrandElementCopyWithImpl<$Res, BrandElement>;
  @useResult
  $Res call({int id, String name, int count, List<Value>? values});
}

/// @nodoc
class _$BrandElementCopyWithImpl<$Res, $Val extends BrandElement>
    implements $BrandElementCopyWith<$Res> {
  _$BrandElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = null,
    Object? values = freezed,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandElementImplCopyWith<$Res>
    implements $BrandElementCopyWith<$Res> {
  factory _$$BrandElementImplCopyWith(
          _$BrandElementImpl value, $Res Function(_$BrandElementImpl) then) =
      __$$BrandElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int count, List<Value>? values});
}

/// @nodoc
class __$$BrandElementImplCopyWithImpl<$Res>
    extends _$BrandElementCopyWithImpl<$Res, _$BrandElementImpl>
    implements _$$BrandElementImplCopyWith<$Res> {
  __$$BrandElementImplCopyWithImpl(
      _$BrandElementImpl _value, $Res Function(_$BrandElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = null,
    Object? values = freezed,
  }) {
    return _then(_$BrandElementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandElementImpl implements _BrandElement {
  _$BrandElementImpl(
      {required this.id,
      required this.name,
      required this.count,
      final List<Value>? values})
      : _values = values;

  factory _$BrandElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandElementImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int count;
  final List<Value>? _values;
  @override
  List<Value>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandElement(id: $id, name: $name, count: $count, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, count,
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandElementImplCopyWith<_$BrandElementImpl> get copyWith =>
      __$$BrandElementImplCopyWithImpl<_$BrandElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandElementImplToJson(
      this,
    );
  }
}

abstract class _BrandElement implements BrandElement {
  factory _BrandElement(
      {required final int id,
      required final String name,
      required final int count,
      final List<Value>? values}) = _$BrandElementImpl;

  factory _BrandElement.fromJson(Map<String, dynamic> json) =
      _$BrandElementImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get count;
  @override
  List<Value>? get values;
  @override
  @JsonKey(ignore: true)
  _$$BrandElementImplCopyWith<_$BrandElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res, Value>;
  @useResult
  $Res call({int id, String value, int count});
}

/// @nodoc
class _$ValueCopyWithImpl<$Res, $Val extends Value>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl value, $Res Function(_$ValueImpl) then) =
      __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, int count});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$ValueCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl _value, $Res Function(_$ValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? count = null,
  }) {
    return _then(_$ValueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueImpl implements _Value {
  _$ValueImpl({required this.id, required this.value, required this.count});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  final int count;

  @override
  String toString() {
    return 'Value(id: $id, value: $value, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueImplToJson(
      this,
    );
  }
}

abstract class _Value implements Value {
  factory _Value(
      {required final int id,
      required final String value,
      required final int count}) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({int totalCount, int currentPage, int totalPage, int pageSize});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, int currentPage, int totalPage, int pageSize});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? pageSize = null,
  }) {
    return _then(_$PaginationImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  _$PaginationImpl(
      {required this.totalCount,
      required this.currentPage,
      required this.totalPage,
      required this.pageSize});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int totalCount;
  @override
  final int currentPage;
  @override
  final int totalPage;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'Pagination(totalCount: $totalCount, currentPage: $currentPage, totalPage: $totalPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, currentPage, totalPage, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {required final int totalCount,
      required final int currentPage,
      required final int totalPage,
      required final int pageSize}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get totalPage;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  int get maxPrice => throw _privateConstructorUsedError;
  int get minPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({int maxPrice, int minPrice});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPrice = null,
    Object? minPrice = null,
  }) {
    return _then(_value.copyWith(
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPrice, int minPrice});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPrice = null,
    Object? minPrice = null,
  }) {
    return _then(_$PriceImpl(
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  _$PriceImpl({required this.maxPrice, required this.minPrice});

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  final int maxPrice;
  @override
  final int minPrice;

  @override
  String toString() {
    return 'Price(maxPrice: $maxPrice, minPrice: $minPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPrice, minPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  factory _Price({required final int maxPrice, required final int minPrice}) =
      _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  int get maxPrice;
  @override
  int get minPrice;
  @override
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<ProductSaleMonth>? get saleMonths => throw _privateConstructorUsedError;
  List<Sticker>? get stickers => throw _privateConstructorUsedError;
  Availability? get availability => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<MainCharacter>? get mainCharacters => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  String? get fSalePrice => throw _privateConstructorUsedError;
  dynamic get oldPrice => throw _privateConstructorUsedError;
  dynamic get fOldPrice => throw _privateConstructorUsedError;
  int? get loanPrice => throw _privateConstructorUsedError;
  String? get fLoanPrice => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  int? get reviewsAverage => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  ProductBrand? get brand => throw _privateConstructorUsedError;
  String? get lowPrice => throw _privateConstructorUsedError;

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
      {int? id,
      String? name,
      String? image,
      List<ProductSaleMonth>? saleMonths,
      List<Sticker>? stickers,
      Availability? availability,
      dynamic discount,
      String? code,
      List<MainCharacter>? mainCharacters,
      int? salePrice,
      String? fSalePrice,
      dynamic oldPrice,
      dynamic fOldPrice,
      int? loanPrice,
      String? fLoanPrice,
      String? axiomMonthlyPrice,
      int? reviewsCount,
      int? reviewsAverage,
      int? allCount,
      String? categoryId,
      ProductBrand? brand,
      String? lowPrice});

  $ProductBrandCopyWith<$Res>? get brand;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? saleMonths = freezed,
    Object? stickers = freezed,
    Object? availability = freezed,
    Object? discount = freezed,
    Object? code = freezed,
    Object? mainCharacters = freezed,
    Object? salePrice = freezed,
    Object? fSalePrice = freezed,
    Object? oldPrice = freezed,
    Object? fOldPrice = freezed,
    Object? loanPrice = freezed,
    Object? fLoanPrice = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? categoryId = freezed,
    Object? brand = freezed,
    Object? lowPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<ProductSaleMonth>?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCharacters: freezed == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fSalePrice: freezed == fSalePrice
          ? _value.fSalePrice
          : fSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fOldPrice: freezed == fOldPrice
          ? _value.fOldPrice
          : fOldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loanPrice: freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fLoanPrice: freezed == fLoanPrice
          ? _value.fLoanPrice
          : fLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductBrand?,
      lowPrice: freezed == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductBrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $ProductBrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
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
  $Res call(
      {int? id,
      String? name,
      String? image,
      List<ProductSaleMonth>? saleMonths,
      List<Sticker>? stickers,
      Availability? availability,
      dynamic discount,
      String? code,
      List<MainCharacter>? mainCharacters,
      int? salePrice,
      String? fSalePrice,
      dynamic oldPrice,
      dynamic fOldPrice,
      int? loanPrice,
      String? fLoanPrice,
      String? axiomMonthlyPrice,
      int? reviewsCount,
      int? reviewsAverage,
      int? allCount,
      String? categoryId,
      ProductBrand? brand,
      String? lowPrice});

  @override
  $ProductBrandCopyWith<$Res>? get brand;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? saleMonths = freezed,
    Object? stickers = freezed,
    Object? availability = freezed,
    Object? discount = freezed,
    Object? code = freezed,
    Object? mainCharacters = freezed,
    Object? salePrice = freezed,
    Object? fSalePrice = freezed,
    Object? oldPrice = freezed,
    Object? fOldPrice = freezed,
    Object? loanPrice = freezed,
    Object? fLoanPrice = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? categoryId = freezed,
    Object? brand = freezed,
    Object? lowPrice = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      saleMonths: freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<ProductSaleMonth>?,
      stickers: freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCharacters: freezed == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fSalePrice: freezed == fSalePrice
          ? _value.fSalePrice
          : fSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fOldPrice: freezed == fOldPrice
          ? _value.fOldPrice
          : fOldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loanPrice: freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fLoanPrice: freezed == fLoanPrice
          ? _value.fLoanPrice
          : fLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductBrand?,
      lowPrice: freezed == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {this.id,
      this.name,
      this.image,
      final List<ProductSaleMonth>? saleMonths,
      final List<Sticker>? stickers,
      this.availability,
      this.discount,
      this.code,
      final List<MainCharacter>? mainCharacters,
      this.salePrice,
      this.fSalePrice,
      this.oldPrice,
      this.fOldPrice,
      this.loanPrice,
      this.fLoanPrice,
      this.axiomMonthlyPrice,
      this.reviewsCount,
      this.reviewsAverage,
      this.allCount,
      this.categoryId,
      this.brand,
      this.lowPrice})
      : _saleMonths = saleMonths,
        _stickers = stickers,
        _mainCharacters = mainCharacters;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  final List<ProductSaleMonth>? _saleMonths;
  @override
  List<ProductSaleMonth>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Sticker>? _stickers;
  @override
  List<Sticker>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Availability? availability;
  @override
  final dynamic discount;
  @override
  final String? code;
  final List<MainCharacter>? _mainCharacters;
  @override
  List<MainCharacter>? get mainCharacters {
    final value = _mainCharacters;
    if (value == null) return null;
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? salePrice;
  @override
  final String? fSalePrice;
  @override
  final dynamic oldPrice;
  @override
  final dynamic fOldPrice;
  @override
  final int? loanPrice;
  @override
  final String? fLoanPrice;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? reviewsCount;
  @override
  final int? reviewsAverage;
  @override
  final int? allCount;
  @override
  final String? categoryId;
  @override
  final ProductBrand? brand;
  @override
  final String? lowPrice;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, image: $image, saleMonths: $saleMonths, stickers: $stickers, availability: $availability, discount: $discount, code: $code, mainCharacters: $mainCharacters, salePrice: $salePrice, fSalePrice: $fSalePrice, oldPrice: $oldPrice, fOldPrice: $fOldPrice, loanPrice: $loanPrice, fLoanPrice: $fLoanPrice, axiomMonthlyPrice: $axiomMonthlyPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, categoryId: $categoryId, brand: $brand, lowPrice: $lowPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._mainCharacters, _mainCharacters) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.fSalePrice, fSalePrice) ||
                other.fSalePrice == fSalePrice) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            const DeepCollectionEquality().equals(other.fOldPrice, fOldPrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            (identical(other.fLoanPrice, fLoanPrice) ||
                other.fLoanPrice == fLoanPrice) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.lowPrice, lowPrice) ||
                other.lowPrice == lowPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        image,
        const DeepCollectionEquality().hash(_saleMonths),
        const DeepCollectionEquality().hash(_stickers),
        availability,
        const DeepCollectionEquality().hash(discount),
        code,
        const DeepCollectionEquality().hash(_mainCharacters),
        salePrice,
        fSalePrice,
        const DeepCollectionEquality().hash(oldPrice),
        const DeepCollectionEquality().hash(fOldPrice),
        loanPrice,
        fLoanPrice,
        axiomMonthlyPrice,
        reviewsCount,
        reviewsAverage,
        allCount,
        categoryId,
        brand,
        lowPrice
      ]);

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
  factory _Product(
      {final int? id,
      final String? name,
      final String? image,
      final List<ProductSaleMonth>? saleMonths,
      final List<Sticker>? stickers,
      final Availability? availability,
      final dynamic discount,
      final String? code,
      final List<MainCharacter>? mainCharacters,
      final int? salePrice,
      final String? fSalePrice,
      final dynamic oldPrice,
      final dynamic fOldPrice,
      final int? loanPrice,
      final String? fLoanPrice,
      final String? axiomMonthlyPrice,
      final int? reviewsCount,
      final int? reviewsAverage,
      final int? allCount,
      final String? categoryId,
      final ProductBrand? brand,
      final String? lowPrice}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  List<ProductSaleMonth>? get saleMonths;
  @override
  List<Sticker>? get stickers;
  @override
  Availability? get availability;
  @override
  dynamic get discount;
  @override
  String? get code;
  @override
  List<MainCharacter>? get mainCharacters;
  @override
  int? get salePrice;
  @override
  String? get fSalePrice;
  @override
  dynamic get oldPrice;
  @override
  dynamic get fOldPrice;
  @override
  int? get loanPrice;
  @override
  String? get fLoanPrice;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get reviewsCount;
  @override
  int? get reviewsAverage;
  @override
  int? get allCount;
  @override
  String? get categoryId;
  @override
  ProductBrand? get brand;
  @override
  String? get lowPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductBrand _$ProductBrandFromJson(Map<String, dynamic> json) {
  return _ProductBrand.fromJson(json);
}

/// @nodoc
mixin _$ProductBrand {
  int get id => throw _privateConstructorUsedError;
  Slug get slug => throw _privateConstructorUsedError;
  BrandName get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBrandCopyWith<ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandCopyWith<$Res> {
  factory $ProductBrandCopyWith(
          ProductBrand value, $Res Function(ProductBrand) then) =
      _$ProductBrandCopyWithImpl<$Res, ProductBrand>;
  @useResult
  $Res call({int id, Slug slug, BrandName name});
}

/// @nodoc
class _$ProductBrandCopyWithImpl<$Res, $Val extends ProductBrand>
    implements $ProductBrandCopyWith<$Res> {
  _$ProductBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as Slug,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BrandName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBrandImplCopyWith<$Res>
    implements $ProductBrandCopyWith<$Res> {
  factory _$$ProductBrandImplCopyWith(
          _$ProductBrandImpl value, $Res Function(_$ProductBrandImpl) then) =
      __$$ProductBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Slug slug, BrandName name});
}

/// @nodoc
class __$$ProductBrandImplCopyWithImpl<$Res>
    extends _$ProductBrandCopyWithImpl<$Res, _$ProductBrandImpl>
    implements _$$ProductBrandImplCopyWith<$Res> {
  __$$ProductBrandImplCopyWithImpl(
      _$ProductBrandImpl _value, $Res Function(_$ProductBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? name = null,
  }) {
    return _then(_$ProductBrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as Slug,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BrandName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBrandImpl implements _ProductBrand {
  _$ProductBrandImpl(
      {required this.id, required this.slug, required this.name});

  factory _$ProductBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBrandImplFromJson(json);

  @override
  final int id;
  @override
  final Slug slug;
  @override
  final BrandName name;

  @override
  String toString() {
    return 'ProductBrand(id: $id, slug: $slug, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBrandImplCopyWith<_$ProductBrandImpl> get copyWith =>
      __$$ProductBrandImplCopyWithImpl<_$ProductBrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBrandImplToJson(
      this,
    );
  }
}

abstract class _ProductBrand implements ProductBrand {
  factory _ProductBrand(
      {required final int id,
      required final Slug slug,
      required final BrandName name}) = _$ProductBrandImpl;

  factory _ProductBrand.fromJson(Map<String, dynamic> json) =
      _$ProductBrandImpl.fromJson;

  @override
  int get id;
  @override
  Slug get slug;
  @override
  BrandName get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductBrandImplCopyWith<_$ProductBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCharacter _$MainCharacterFromJson(Map<String, dynamic> json) {
  return _MainCharacter.fromJson(json);
}

/// @nodoc
mixin _$MainCharacter {
  MainCharacterName get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

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
  $Res call({MainCharacterName name, String value, int order});
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
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MainCharacterName,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({MainCharacterName name, String value, int order});
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
    Object? order = null,
  }) {
    return _then(_$MainCharacterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MainCharacterName,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainCharacterImpl implements _MainCharacter {
  _$MainCharacterImpl(
      {required this.name, required this.value, required this.order});

  factory _$MainCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCharacterImplFromJson(json);

  @override
  final MainCharacterName name;
  @override
  final String value;
  @override
  final int order;

  @override
  String toString() {
    return 'MainCharacter(name: $name, value: $value, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, order);

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
  factory _MainCharacter(
      {required final MainCharacterName name,
      required final String value,
      required final int order}) = _$MainCharacterImpl;

  factory _MainCharacter.fromJson(Map<String, dynamic> json) =
      _$MainCharacterImpl.fromJson;

  @override
  MainCharacterName get name;
  @override
  String get value;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$MainCharacterImplCopyWith<_$MainCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSaleMonth _$ProductSaleMonthFromJson(Map<String, dynamic> json) {
  return _ProductSaleMonth.fromJson(json);
}

/// @nodoc
mixin _$ProductSaleMonth {
  int get id => throw _privateConstructorUsedError;
  Key get name => throw _privateConstructorUsedError;
  Key get key => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSaleMonthCopyWith<ProductSaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSaleMonthCopyWith<$Res> {
  factory $ProductSaleMonthCopyWith(
          ProductSaleMonth value, $Res Function(ProductSaleMonth) then) =
      _$ProductSaleMonthCopyWithImpl<$Res, ProductSaleMonth>;
  @useResult
  $Res call({int id, Key name, Key key, String image});
}

/// @nodoc
class _$ProductSaleMonthCopyWithImpl<$Res, $Val extends ProductSaleMonth>
    implements $ProductSaleMonthCopyWith<$Res> {
  _$ProductSaleMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Key,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSaleMonthImplCopyWith<$Res>
    implements $ProductSaleMonthCopyWith<$Res> {
  factory _$$ProductSaleMonthImplCopyWith(_$ProductSaleMonthImpl value,
          $Res Function(_$ProductSaleMonthImpl) then) =
      __$$ProductSaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Key name, Key key, String image});
}

/// @nodoc
class __$$ProductSaleMonthImplCopyWithImpl<$Res>
    extends _$ProductSaleMonthCopyWithImpl<$Res, _$ProductSaleMonthImpl>
    implements _$$ProductSaleMonthImplCopyWith<$Res> {
  __$$ProductSaleMonthImplCopyWithImpl(_$ProductSaleMonthImpl _value,
      $Res Function(_$ProductSaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? image = null,
  }) {
    return _then(_$ProductSaleMonthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Key,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSaleMonthImpl implements _ProductSaleMonth {
  _$ProductSaleMonthImpl(
      {required this.id,
      required this.name,
      required this.key,
      required this.image});

  factory _$ProductSaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSaleMonthImplFromJson(json);

  @override
  final int id;
  @override
  final Key name;
  @override
  final Key key;
  @override
  final String image;

  @override
  String toString() {
    return 'ProductSaleMonth(id: $id, name: $name, key: $key, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, key, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSaleMonthImplCopyWith<_$ProductSaleMonthImpl> get copyWith =>
      __$$ProductSaleMonthImplCopyWithImpl<_$ProductSaleMonthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSaleMonthImplToJson(
      this,
    );
  }
}

abstract class _ProductSaleMonth implements ProductSaleMonth {
  factory _ProductSaleMonth(
      {required final int id,
      required final Key name,
      required final Key key,
      required final String image}) = _$ProductSaleMonthImpl;

  factory _ProductSaleMonth.fromJson(Map<String, dynamic> json) =
      _$ProductSaleMonthImpl.fromJson;

  @override
  int get id;
  @override
  Key get name;
  @override
  Key get key;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ProductSaleMonthImplCopyWith<_$ProductSaleMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  String get name => throw _privateConstructorUsedError;
  String get textColor => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

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
      String textColor,
      String backgroundColor,
      String key,
      bool isImage,
      String image});
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
    Object? textColor = null,
    Object? backgroundColor = null,
    Object? key = null,
    Object? isImage = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
      String textColor,
      String backgroundColor,
      String key,
      bool isImage,
      String image});
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
    Object? textColor = null,
    Object? backgroundColor = null,
    Object? key = null,
    Object? isImage = null,
    Object? image = null,
  }) {
    return _then(_$StickerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerImpl implements _Sticker {
  _$StickerImpl(
      {required this.name,
      required this.textColor,
      required this.backgroundColor,
      required this.key,
      required this.isImage,
      required this.image});

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  @override
  final String name;
  @override
  final String textColor;
  @override
  final String backgroundColor;
  @override
  final String key;
  @override
  final bool isImage;
  @override
  final String image;

  @override
  String toString() {
    return 'Sticker(name: $name, textColor: $textColor, backgroundColor: $backgroundColor, key: $key, isImage: $isImage, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, textColor, backgroundColor, key, isImage, image);

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
  factory _Sticker(
      {required final String name,
      required final String textColor,
      required final String backgroundColor,
      required final String key,
      required final bool isImage,
      required final String image}) = _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  @override
  String get name;
  @override
  String get textColor;
  @override
  String get backgroundColor;
  @override
  String get key;
  @override
  bool get isImage;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSaleMonth _$DataSaleMonthFromJson(Map<String, dynamic> json) {
  return _DataSaleMonth.fromJson(json);
}

/// @nodoc
mixin _$DataSaleMonth {
  int get id => throw _privateConstructorUsedError;
  Key get key => throw _privateConstructorUsedError;
  Key get name => throw _privateConstructorUsedError;
  String get appTitle => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSaleMonthCopyWith<DataSaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSaleMonthCopyWith<$Res> {
  factory $DataSaleMonthCopyWith(
          DataSaleMonth value, $Res Function(DataSaleMonth) then) =
      _$DataSaleMonthCopyWithImpl<$Res, DataSaleMonth>;
  @useResult
  $Res call({int id, Key key, Key name, String appTitle, int count});
}

/// @nodoc
class _$DataSaleMonthCopyWithImpl<$Res, $Val extends DataSaleMonth>
    implements $DataSaleMonthCopyWith<$Res> {
  _$DataSaleMonthCopyWithImpl(this._value, this._then);

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
    Object? appTitle = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Key,
      appTitle: null == appTitle
          ? _value.appTitle
          : appTitle // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSaleMonthImplCopyWith<$Res>
    implements $DataSaleMonthCopyWith<$Res> {
  factory _$$DataSaleMonthImplCopyWith(
          _$DataSaleMonthImpl value, $Res Function(_$DataSaleMonthImpl) then) =
      __$$DataSaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Key key, Key name, String appTitle, int count});
}

/// @nodoc
class __$$DataSaleMonthImplCopyWithImpl<$Res>
    extends _$DataSaleMonthCopyWithImpl<$Res, _$DataSaleMonthImpl>
    implements _$$DataSaleMonthImplCopyWith<$Res> {
  __$$DataSaleMonthImplCopyWithImpl(
      _$DataSaleMonthImpl _value, $Res Function(_$DataSaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? appTitle = null,
    Object? count = null,
  }) {
    return _then(_$DataSaleMonthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Key,
      appTitle: null == appTitle
          ? _value.appTitle
          : appTitle // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSaleMonthImpl implements _DataSaleMonth {
  _$DataSaleMonthImpl(
      {required this.id,
      required this.key,
      required this.name,
      required this.appTitle,
      required this.count});

  factory _$DataSaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSaleMonthImplFromJson(json);

  @override
  final int id;
  @override
  final Key key;
  @override
  final Key name;
  @override
  final String appTitle;
  @override
  final int count;

  @override
  String toString() {
    return 'DataSaleMonth(id: $id, key: $key, name: $name, appTitle: $appTitle, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appTitle, appTitle) ||
                other.appTitle == appTitle) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, appTitle, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSaleMonthImplCopyWith<_$DataSaleMonthImpl> get copyWith =>
      __$$DataSaleMonthImplCopyWithImpl<_$DataSaleMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSaleMonthImplToJson(
      this,
    );
  }
}

abstract class _DataSaleMonth implements DataSaleMonth {
  factory _DataSaleMonth(
      {required final int id,
      required final Key key,
      required final Key name,
      required final String appTitle,
      required final int count}) = _$DataSaleMonthImpl;

  factory _DataSaleMonth.fromJson(Map<String, dynamic> json) =
      _$DataSaleMonthImpl.fromJson;

  @override
  int get id;
  @override
  Key get key;
  @override
  Key get name;
  @override
  String get appTitle;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$DataSaleMonthImplCopyWith<_$DataSaleMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
