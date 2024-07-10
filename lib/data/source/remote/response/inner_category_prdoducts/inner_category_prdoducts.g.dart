// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_category_prdoducts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnerCategoryProductsImpl _$$InnerCategoryProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$InnerCategoryProductsImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InnerCategoryProductsImplToJson(
        _$InnerCategoryProductsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      filter: (json['filter'] as List<dynamic>)
          .map((e) => BrandElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      stickers: (json['stickers'] as List<dynamic>)
          .map((e) => BrandElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      brands: (json['brands'] as List<dynamic>)
          .map((e) => BrandElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      saleMonths: (json['saleMonths'] as List<dynamic>)
          .map((e) => DataSaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
      saleMonthsCount: (json['saleMonthsCount'] as num).toInt(),
      brandsCount: (json['brandsCount'] as num).toInt(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'categories': instance.categories,
      'filter': instance.filter,
      'price': instance.price,
      'stickers': instance.stickers,
      'brands': instance.brands,
      'saleMonths': instance.saleMonths,
      'saleMonthsCount': instance.saleMonthsCount,
      'brandsCount': instance.brandsCount,
      'pagination': instance.pagination,
    };

_$BrandElementImpl _$$BrandElementImplFromJson(Map<String, dynamic> json) =>
    _$BrandElementImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandElementImplToJson(_$BrandElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
      'values': instance.values,
    };

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) => _$ValueImpl(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'count': instance.count,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'totalPage': instance.totalPage,
      'pageSize': instance.pageSize,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      maxPrice: (json['maxPrice'] as num).toInt(),
      minPrice: (json['minPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'maxPrice': instance.maxPrice,
      'minPrice': instance.minPrice,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      saleMonths: (json['saleMonths'] as List<dynamic>?)
          ?.map((e) => ProductSaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
      stickers: (json['stickers'] as List<dynamic>?)
          ?.map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      availability:
          $enumDecodeNullable(_$AvailabilityEnumMap, json['availability']),
      discount: json['discount'],
      code: json['code'] as String?,
      mainCharacters: (json['mainCharacters'] as List<dynamic>?)
          ?.map((e) => MainCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      salePrice: (json['salePrice'] as num?)?.toInt(),
      fSalePrice: json['fSalePrice'] as String?,
      oldPrice: json['oldPrice'],
      fOldPrice: json['fOldPrice'],
      loanPrice: (json['loanPrice'] as num?)?.toInt(),
      fLoanPrice: json['fLoanPrice'] as String?,
      axiomMonthlyPrice: json['axiomMonthlyPrice'] as String?,
      reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
      reviewsAverage: (json['reviewsAverage'] as num?)?.toInt(),
      allCount: (json['allCount'] as num?)?.toInt(),
      categoryId: json['categoryId'] as String?,
      brand: json['brand'] == null
          ? null
          : ProductBrand.fromJson(json['brand'] as Map<String, dynamic>),
      lowPrice: json['lowPrice'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'saleMonths': instance.saleMonths,
      'stickers': instance.stickers,
      'availability': _$AvailabilityEnumMap[instance.availability],
      'discount': instance.discount,
      'code': instance.code,
      'mainCharacters': instance.mainCharacters,
      'salePrice': instance.salePrice,
      'fSalePrice': instance.fSalePrice,
      'oldPrice': instance.oldPrice,
      'fOldPrice': instance.fOldPrice,
      'loanPrice': instance.loanPrice,
      'fLoanPrice': instance.fLoanPrice,
      'axiomMonthlyPrice': instance.axiomMonthlyPrice,
      'reviewsCount': instance.reviewsCount,
      'reviewsAverage': instance.reviewsAverage,
      'allCount': instance.allCount,
      'categoryId': instance.categoryId,
      'brand': instance.brand,
      'lowPrice': instance.lowPrice,
    };

const _$AvailabilityEnumMap = {
  Availability.openToCart: 'OPEN_TO_CART',
  Availability.withManager: 'WITH_MANAGER',
};

_$ProductBrandImpl _$$ProductBrandImplFromJson(Map<String, dynamic> json) =>
    _$ProductBrandImpl(
      id: (json['id'] as num).toInt(),
      slug: $enumDecode(_$SlugEnumMap, json['slug']),
      name: $enumDecode(_$BrandNameEnumMap, json['name']),
    );

Map<String, dynamic> _$$ProductBrandImplToJson(_$ProductBrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': _$SlugEnumMap[instance.slug]!,
      'name': _$BrandNameEnumMap[instance.name]!,
    };

const _$SlugEnumMap = {
  Slug.samsung: 'SAMSUNG',
};

const _$BrandNameEnumMap = {
  BrandName.samsung: 'SAMSUNG',
};

_$MainCharacterImpl _$$MainCharacterImplFromJson(Map<String, dynamic> json) =>
    _$MainCharacterImpl(
      name: $enumDecode(_$MainCharacterNameEnumMap, json['name']),
      value: json['value'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$MainCharacterImplToJson(_$MainCharacterImpl instance) =>
    <String, dynamic>{
      'name': _$MainCharacterNameEnumMap[instance.name]!,
      'value': instance.value,
      'order': instance.order,
    };

const _$MainCharacterNameEnumMap = {
  MainCharacterName.empty: 'EMPTY',
  MainCharacterName.fluffy: 'FLUFFY',
  MainCharacterName.indigo: 'INDIGO',
  MainCharacterName.name: 'NAME',
  MainCharacterName.purple: 'PURPLE',
  MainCharacterName.rom: 'ROM',
  MainCharacterName.sticky: 'STICKY',
  MainCharacterName.tentacled: 'TENTACLED',
};

_$ProductSaleMonthImpl _$$ProductSaleMonthImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSaleMonthImpl(
      id: (json['id'] as num).toInt(),
      name: $enumDecode(_$KeyEnumMap, json['name']),
      key: $enumDecode(_$KeyEnumMap, json['key']),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ProductSaleMonthImplToJson(
        _$ProductSaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': _$KeyEnumMap[instance.name]!,
      'key': _$KeyEnumMap[instance.key]!,
      'image': instance.image,
    };

const _$KeyEnumMap = {
  Key.the0012: 'THE_0012',
};

_$StickerImpl _$$StickerImplFromJson(Map<String, dynamic> json) =>
    _$StickerImpl(
      name: json['name'] as String,
      textColor: json['textColor'] as String,
      backgroundColor: json['backgroundColor'] as String,
      key: json['key'] as String,
      isImage: json['isImage'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$StickerImplToJson(_$StickerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'textColor': instance.textColor,
      'backgroundColor': instance.backgroundColor,
      'key': instance.key,
      'isImage': instance.isImage,
      'image': instance.image,
    };

_$DataSaleMonthImpl _$$DataSaleMonthImplFromJson(Map<String, dynamic> json) =>
    _$DataSaleMonthImpl(
      id: (json['id'] as num).toInt(),
      key: $enumDecode(_$KeyEnumMap, json['key']),
      name: $enumDecode(_$KeyEnumMap, json['name']),
      appTitle: json['appTitle'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$DataSaleMonthImplToJson(_$DataSaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': _$KeyEnumMap[instance.key]!,
      'name': _$KeyEnumMap[instance.name]!,
      'appTitle': instance.appTitle,
      'count': instance.count,
    };
