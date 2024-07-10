import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_category_prdoducts.freezed.dart';
part 'inner_category_prdoducts.g.dart';


@freezed
class InnerCategoryProducts with _$InnerCategoryProducts {
  factory InnerCategoryProducts({
    required bool success,
    required String message,
    required int code,
    required Data data,
  }) = _InnerCategoryProducts;

  factory InnerCategoryProducts.fromJson(Map<String, dynamic> json) =>
      _$InnerCategoryProductsFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    required List<Product> products,
    required List<int> categories,
    required List<BrandElement> filter,
    required Price price,
    required List<BrandElement> stickers,
    required List<BrandElement> brands,
    required List<DataSaleMonth> saleMonths,
    required int saleMonthsCount,
    required int brandsCount,
    required Pagination pagination,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BrandElement with _$BrandElement {
  factory BrandElement({
    required int id,
    required String name,
    required int count,
    List<Value>? values,
  }) = _BrandElement;

  factory BrandElement.fromJson(Map<String, dynamic> json) =>
      _$BrandElementFromJson(json);
}

@freezed
class Value with _$Value {
  factory Value({
    required int id,
    required String value,
    required int count,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    required int totalCount,
    required int currentPage,
    required int totalPage,
    required int pageSize,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Price with _$Price {
  factory Price({
    required int maxPrice,
    required int minPrice,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    int? id,
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
    String? lowPrice,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

enum Availability {
  @JsonValue('OPEN_TO_CART')
  openToCart,
  @JsonValue('WITH_MANAGER')
  withManager,
}

@freezed
class ProductBrand with _$ProductBrand {
  factory ProductBrand({
    required int id,
    required Slug slug,
    required BrandName name,
  }) = _ProductBrand;

  factory ProductBrand.fromJson(Map<String, dynamic> json) =>
      _$ProductBrandFromJson(json);
}

enum BrandName {
  @JsonValue('SAMSUNG')
  samsung,
}

enum Slug {
  @JsonValue('SAMSUNG')
  samsung,
}

@freezed
class MainCharacter with _$MainCharacter {
  factory MainCharacter({
    required MainCharacterName name,
    required String value,
    required int order,
  }) = _MainCharacter;

  factory MainCharacter.fromJson(Map<String, dynamic> json) =>
      _$MainCharacterFromJson(json);
}

enum MainCharacterName {
  @JsonValue('EMPTY')
  empty,
  @JsonValue('FLUFFY')
  fluffy,
  @JsonValue('INDIGO')
  indigo,
  @JsonValue('NAME')
  name,
  @JsonValue('PURPLE')
  purple,
  @JsonValue('ROM')
  rom,
  @JsonValue('STICKY')
  sticky,
  @JsonValue('TENTACLED')
  tentacled,
}

@freezed
class ProductSaleMonth with _$ProductSaleMonth {
  factory ProductSaleMonth({
    required int id,
    required Key name,
    required Key key,
    required String image,
  }) = _ProductSaleMonth;

  factory ProductSaleMonth.fromJson(Map<String, dynamic> json) =>
      _$ProductSaleMonthFromJson(json);
}

enum Key {
  @JsonValue('THE_0012')
  the0012,
}

@freezed
class Sticker with _$Sticker {
  factory Sticker({
    required String name,
    required String textColor,
    required String backgroundColor,
    required String key,
    required bool isImage,
    required String image,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);
}

@freezed
class DataSaleMonth with _$DataSaleMonth {
  factory DataSaleMonth({
    required int id,
    required Key key,
    required Key name,
    required String appTitle,
    required int count,
  }) = _DataSaleMonth;

  factory DataSaleMonth.fromJson(Map<String, dynamic> json) =>
      _$DataSaleMonthFromJson(json);
}
