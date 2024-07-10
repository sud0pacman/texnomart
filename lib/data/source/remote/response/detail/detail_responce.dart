import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_responce.g.dart';
part 'detail_responce.freezed.dart';

@freezed
class DetailResponse with _$DetailResponse {
  const factory DetailResponse({
    required bool success,
    required String message,
    required int code,
    required DetailResponseData data,
  }) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) => _$DetailResponseFromJson(json);
}

@freezed
class DetailResponseData with _$DetailResponseData {
  const factory DetailResponseData({
    required DataData data,
  }) = _DetailResponseData;

  factory DetailResponseData.fromJson(Map<String, dynamic> json) => _$DetailResponseDataFromJson(json);
}

@freezed
class DataData with _$DataData {
  const factory DataData({
    required int id,
    required String name,
    required String guarantee,
    @CatalogConverter() required Catalog catalog,
    required List<dynamic> smallImages,
    required List<dynamic> largeImages,
    required Availability availability,
    required dynamic model,
    required String brand,
    required int salePrice,
    required int loanPrice,
    required dynamic oldPrice,
    required dynamic minimalLoanPrice,
    required String code,
    required List<dynamic> saleMonths,
    required int reviewsCount,
    required dynamic reviewsMiddleRating,
    @CatalogConverter() required Catalog seo,
    required List<dynamic> stickers,
    required List<dynamic> mainCharacters,
    required List<dynamic> offersByImage,
    required List<dynamic> offersByCharacter,
    required List<dynamic> breadcrumbs,
    required String description,
    required String overview,
    required List<DataCharacter> characters,
    required List<AvailableStore> availableStores,
    required List<dynamic> files,
    required List<Accessory> accessories,
    required int promotion0012Price,
  }) = _DataData;

  factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}

@freezed
class Accessory with _$Accessory {
  const factory Accessory({
    required String name,
    required List<Product> products,
  }) = _Accessory;

  factory Accessory.fromJson(Map<String, dynamic> json) => _$AccessoryFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String image,
    required Availability availability,
    required dynamic axiomMonthlyPrice,
    required int salePrice,
    required int allCount,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class AvailableStore with _$AvailableStore {
  const factory AvailableStore({
    required int id,
    required String name,
    required String lat,
    required String long,
    required Phone phone,
    required String address,
    String? description,
    required String workTime,
  }) = _AvailableStore;

  factory AvailableStore.fromJson(Map<String, dynamic> json) => _$AvailableStoreFromJson(json);
}

@freezed
class DataCharacter with _$DataCharacter {
  const factory DataCharacter({
    required String name,
    required List<CharacterCharacter> characters,
  }) = _DataCharacter;

  factory DataCharacter.fromJson(Map<String, dynamic> json) => _$DataCharacterFromJson(json);
}

@freezed
class CharacterCharacter with _$CharacterCharacter {
  const factory CharacterCharacter({
    String? name,
    String? value,
  }) = _CharacterCharacter;

  factory CharacterCharacter.fromJson(Map<String, dynamic> json) => _$CharacterCharacterFromJson(json);
}

enum Availability {
  OPEN_TO_CART,
  WITH_MANAGER
}

enum Phone {
  THE_998555036006,
  THE_998555046006
}

class Catalog {
  Catalog();

  factory Catalog.fromJson(Map<String, dynamic> json) {
    // Customize this part according to how you want to deserialize your Catalog
    return Catalog();
  }

  Map<String, dynamic> toJson() {
    // Customize this part according to how you want to serialize your Catalog
    return {};
  }
}

class CatalogConverter implements JsonConverter<Catalog, Map<String, dynamic>> {
  const CatalogConverter();

  @override
  Catalog fromJson(Map<String, dynamic> json) {
    // Customize this part according to how you want to deserialize your Catalog
    return Catalog.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Catalog catalog) {
    // Customize this part according to how you want to serialize your Catalog
    return catalog.toJson();
  }
}
