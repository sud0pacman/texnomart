import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_response.freezed.dart';
part 'brands_response.g.dart';

@freezed
class TopBrands with _$TopBrands {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrands(
    bool? success,
    String? message,
    int? code,
    TopBrandsDataList? data,
  ) = _TopBrands;

  factory TopBrands.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsFromJson(json);
}


@freezed
class TopBrandsDataList with _$TopBrandsDataList {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrandsDataList(
      List<TopBrandData?>? data
  ) = _TopBrandsDataList;

  factory TopBrandsDataList.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsDataListFromJson(json);
}

@freezed
class TopBrandData with _$TopBrandData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrandData(
    String? name,
    String? slug,
    String? image,
    String? imageAlt,
    BrandMeta? meta,
  ) = _TopBrandData;

  factory TopBrandData.fromJson(Map<String, dynamic> json) =>
      _$TopBrandDataFromJson(json);
}

@freezed
class BrandMeta with _$BrandMeta {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory BrandMeta(
    String? title,
    String? description,
    String? keywords,
  ) = _BrandMeta;

  factory BrandMeta.fromJson(Map<String, dynamic> json) =>
      _$BrandMetaFromJson(json);
}