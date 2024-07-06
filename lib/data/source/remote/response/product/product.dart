import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';


@freezed
class Product with _$Product {
  const factory Product({
    required bool success,
    required String message,
    required int code,
    required ProductData data,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    required int id,
    required String name,
    required String guarantee,
    required Catalog catalog,
    required List<String> smallImages,
    required List<String> largeImages,
    required String availability,
    String? model,
    required String brand,
    required int salePrice,
    required int loanPrice,
    String? oldPrice,
    String? minimalLoanPrice,
    required String code,
    required List<SaleMonth> saleMonths,
    required int reviewsCount,
    String? reviewsMiddleRating,
    required Seo seo,
    required List<Sticker> stickers,
    required List<MainCharacter> mainCharacters,
    required List<OfferByImage> offersByImage,
    required List<OfferByCharacter> offersByCharacter,
    required List<Breadcrumb> breadcrumbs,
    required String description,
    required List<Character> characters,
    required List<AvailableStore> availableStores,
    required List<Accessory> accessories,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
}

@freezed
class Catalog with _$Catalog {
  const factory Catalog({
    required String name,
    required int minPrice,
    required int maxPrice,
  }) = _Catalog;

  factory Catalog.fromJson(Map<String, dynamic> json) => _$CatalogFromJson(json);
}

@freezed
class SaleMonth with _$SaleMonth {
  const factory SaleMonth({
    required int id,
    required String key,
    required String name,
    required String image,
  }) = _SaleMonth;

  factory SaleMonth.fromJson(Map<String, dynamic> json) => _$SaleMonthFromJson(json);
}

@freezed
class Seo with _$Seo {
  const factory Seo({
    required String title,
    required String description,
    required String keywords,
    required String image,
    required String scriptSeo,
  }) = _Seo;

  factory Seo.fromJson(Map<String, dynamic> json) => _$SeoFromJson(json);
}

@freezed
class Sticker with _$Sticker {
  const factory Sticker({
    required String name,
    required String backgroundColor,
    required String textColor,
    required bool isImage,
    required bool showInCard,
    String? image,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);
}

@freezed
class MainCharacter with _$MainCharacter {
  const factory MainCharacter({
    required String name,
    required String value,
  }) = _MainCharacter;

  factory MainCharacter.fromJson(Map<String, dynamic> json) => _$MainCharacterFromJson(json);
}

@freezed
class OfferByImage with _$OfferByImage {
  const factory OfferByImage() = _OfferByImage;

  factory OfferByImage.fromJson(Map<String, dynamic> json) => _$OfferByImageFromJson(json);
}

@freezed
class OfferByCharacter with _$OfferByCharacter {
  const factory OfferByCharacter() = _OfferByCharacter;

  factory OfferByCharacter.fromJson(Map<String, dynamic> json) => _$OfferByCharacterFromJson(json);
}

@freezed
class Breadcrumb with _$Breadcrumb {
  const factory Breadcrumb({
    required String name,
    String? slug,
    int? id,
    String? type,
  }) = _Breadcrumb;

  factory Breadcrumb.fromJson(Map<String, dynamic> json) => _$BreadcrumbFromJson(json);
}

@freezed
class Character with _$Character {
  const factory Character({
    required String name,
    required List<SubCharacter> characters,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}

@freezed
class SubCharacter with _$SubCharacter {
  const factory SubCharacter({
    required String name,
    required String value,
  }) = _SubCharacter;

  factory SubCharacter.fromJson(Map<String, dynamic> json) => _$SubCharacterFromJson(json);
}

@freezed
class AvailableStore with _$AvailableStore {
  const factory AvailableStore({
    required int id,
    required String name,
    required String lat,
    required String long,
    required String phone,
    required String address,
    required String description,
    required String workTime,
  }) = _AvailableStore;

  factory AvailableStore.fromJson(Map<String, dynamic> json) => _$AvailableStoreFromJson(json);
}

@freezed
class Accessory with _$Accessory {
  const factory Accessory() = _Accessory;

  factory Accessory.fromJson(Map<String, dynamic> json) => _$AccessoryFromJson(json);
}
