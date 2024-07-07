// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      data: ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      guarantee: json['guarantee'] as String,
      catalog: Catalog.fromJson(json['catalog'] as Map<String, dynamic>),
      smallImages: (json['smallImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      largeImages: (json['largeImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      availability: json['availability'] as String,
      model: json['model'] as String?,
      brand: json['brand'] as String,
      salePrice: (json['salePrice'] as num).toInt(),
      loanPrice: (json['loanPrice'] as num).toInt(),
      oldPrice: json['oldPrice'] as String?,
      minimalLoanPrice: json['minimalLoanPrice'] as String?,
      code: json['code'] as String,
      saleMonths: (json['saleMonths'] as List<dynamic>)
          .map((e) => SaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      reviewsMiddleRating: json['reviewsMiddleRating'] as String?,
      seo: Seo.fromJson(json['seo'] as Map<String, dynamic>),
      stickers: (json['stickers'] as List<dynamic>)
          .map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainCharacters: (json['mainCharacters'] as List<dynamic>)
          .map((e) => MainCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      offersByImage: (json['offersByImage'] as List<dynamic>)
          .map((e) => OfferByImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      offersByCharacter: (json['offersByCharacter'] as List<dynamic>)
          .map((e) => OfferByCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      breadcrumbs: (json['breadcrumbs'] as List<dynamic>)
          .map((e) => Breadcrumb.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableStores: (json['availableStores'] as List<dynamic>)
          .map((e) => AvailableStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      accessories: (json['accessories'] as List<dynamic>)
          .map((e) => Accessory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guarantee': instance.guarantee,
      'catalog': instance.catalog,
      'smallImages': instance.smallImages,
      'largeImages': instance.largeImages,
      'availability': instance.availability,
      'model': instance.model,
      'brand': instance.brand,
      'salePrice': instance.salePrice,
      'loanPrice': instance.loanPrice,
      'oldPrice': instance.oldPrice,
      'minimalLoanPrice': instance.minimalLoanPrice,
      'code': instance.code,
      'saleMonths': instance.saleMonths,
      'reviewsCount': instance.reviewsCount,
      'reviewsMiddleRating': instance.reviewsMiddleRating,
      'seo': instance.seo,
      'stickers': instance.stickers,
      'mainCharacters': instance.mainCharacters,
      'offersByImage': instance.offersByImage,
      'offersByCharacter': instance.offersByCharacter,
      'breadcrumbs': instance.breadcrumbs,
      'description': instance.description,
      'characters': instance.characters,
      'availableStores': instance.availableStores,
      'accessories': instance.accessories,
    };

_$CatalogImpl _$$CatalogImplFromJson(Map<String, dynamic> json) =>
    _$CatalogImpl(
      name: json['name'] as String,
      minPrice: (json['minPrice'] as num).toInt(),
      maxPrice: (json['maxPrice'] as num).toInt(),
    );

Map<String, dynamic> _$$CatalogImplToJson(_$CatalogImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
    };

_$SaleMonthImpl _$$SaleMonthImplFromJson(Map<String, dynamic> json) =>
    _$SaleMonthImpl(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$SaleMonthImplToJson(_$SaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };

_$SeoImpl _$$SeoImplFromJson(Map<String, dynamic> json) => _$SeoImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      keywords: json['keywords'] as String,
      image: json['image'] as String,
      scriptSeo: json['scriptSeo'] as String,
    );

Map<String, dynamic> _$$SeoImplToJson(_$SeoImpl instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
      'image': instance.image,
      'scriptSeo': instance.scriptSeo,
    };

_$StickerImpl _$$StickerImplFromJson(Map<String, dynamic> json) =>
    _$StickerImpl(
      name: json['name'] as String,
      backgroundColor: json['backgroundColor'] as String,
      textColor: json['textColor'] as String,
      isImage: json['isImage'] as bool,
      showInCard: json['showInCard'] as bool,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$StickerImplToJson(_$StickerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'isImage': instance.isImage,
      'showInCard': instance.showInCard,
      'image': instance.image,
    };

_$MainCharacterImpl _$$MainCharacterImplFromJson(Map<String, dynamic> json) =>
    _$MainCharacterImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$MainCharacterImplToJson(_$MainCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$OfferByImageImpl _$$OfferByImageImplFromJson(Map<String, dynamic> json) =>
    _$OfferByImageImpl();

Map<String, dynamic> _$$OfferByImageImplToJson(_$OfferByImageImpl instance) =>
    <String, dynamic>{};

_$OfferByCharacterImpl _$$OfferByCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$OfferByCharacterImpl();

Map<String, dynamic> _$$OfferByCharacterImplToJson(
        _$OfferByCharacterImpl instance) =>
    <String, dynamic>{};

_$BreadcrumbImpl _$$BreadcrumbImplFromJson(Map<String, dynamic> json) =>
    _$BreadcrumbImpl(
      name: json['name'] as String,
      slug: json['slug'] as String?,
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$BreadcrumbImplToJson(_$BreadcrumbImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'id': instance.id,
      'type': instance.type,
    };

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      name: json['name'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => SubCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters,
    };

_$SubCharacterImpl _$$SubCharacterImplFromJson(Map<String, dynamic> json) =>
    _$SubCharacterImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$SubCharacterImplToJson(_$SubCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$AvailableStoreImpl _$$AvailableStoreImplFromJson(Map<String, dynamic> json) =>
    _$AvailableStoreImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      workTime: json['workTime'] as String,
    );

Map<String, dynamic> _$$AvailableStoreImplToJson(
        _$AvailableStoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'long': instance.long,
      'phone': instance.phone,
      'address': instance.address,
      'description': instance.description,
      'workTime': instance.workTime,
    };

_$AccessoryImpl _$$AccessoryImplFromJson(Map<String, dynamic> json) =>
    _$AccessoryImpl();

Map<String, dynamic> _$$AccessoryImplToJson(_$AccessoryImpl instance) =>
    <String, dynamic>{};
