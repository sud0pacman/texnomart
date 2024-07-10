// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailResponseImpl _$$DetailResponseImplFromJson(Map<String, dynamic> json) =>
    _$DetailResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
      data: DetailResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailResponseImplToJson(
        _$DetailResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$DetailResponseDataImpl _$$DetailResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailResponseDataImpl(
      data: DataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailResponseDataImplToJson(
        _$DetailResponseDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      guarantee: json['guarantee'] as String,
      catalog: const CatalogConverter()
          .fromJson(json['catalog'] as Map<String, dynamic>),
      smallImages: json['smallImages'] as List<dynamic>,
      largeImages: json['largeImages'] as List<dynamic>,
      availability: $enumDecode(_$AvailabilityEnumMap, json['availability']),
      model: json['model'],
      brand: json['brand'] as String,
      salePrice: (json['salePrice'] as num).toInt(),
      loanPrice: (json['loanPrice'] as num).toInt(),
      oldPrice: json['oldPrice'],
      minimalLoanPrice: json['minimalLoanPrice'],
      code: json['code'] as String,
      saleMonths: json['saleMonths'] as List<dynamic>,
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      reviewsMiddleRating: json['reviewsMiddleRating'],
      seo: const CatalogConverter()
          .fromJson(json['seo'] as Map<String, dynamic>),
      stickers: json['stickers'] as List<dynamic>,
      mainCharacters: json['mainCharacters'] as List<dynamic>,
      offersByImage: json['offersByImage'] as List<dynamic>,
      offersByCharacter: json['offersByCharacter'] as List<dynamic>,
      breadcrumbs: json['breadcrumbs'] as List<dynamic>,
      description: json['description'] as String,
      overview: json['overview'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => DataCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableStores: (json['availableStores'] as List<dynamic>)
          .map((e) => AvailableStore.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: json['files'] as List<dynamic>,
      accessories: (json['accessories'] as List<dynamic>)
          .map((e) => Accessory.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotion0012Price: (json['promotion0012Price'] as num).toInt(),
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guarantee': instance.guarantee,
      'catalog': const CatalogConverter().toJson(instance.catalog),
      'smallImages': instance.smallImages,
      'largeImages': instance.largeImages,
      'availability': _$AvailabilityEnumMap[instance.availability]!,
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
      'seo': const CatalogConverter().toJson(instance.seo),
      'stickers': instance.stickers,
      'mainCharacters': instance.mainCharacters,
      'offersByImage': instance.offersByImage,
      'offersByCharacter': instance.offersByCharacter,
      'breadcrumbs': instance.breadcrumbs,
      'description': instance.description,
      'overview': instance.overview,
      'characters': instance.characters,
      'availableStores': instance.availableStores,
      'files': instance.files,
      'accessories': instance.accessories,
      'promotion0012Price': instance.promotion0012Price,
    };

const _$AvailabilityEnumMap = {
  Availability.OPEN_TO_CART: 'OPEN_TO_CART',
  Availability.WITH_MANAGER: 'WITH_MANAGER',
};

_$AccessoryImpl _$$AccessoryImplFromJson(Map<String, dynamic> json) =>
    _$AccessoryImpl(
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccessoryImplToJson(_$AccessoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      availability: $enumDecode(_$AvailabilityEnumMap, json['availability']),
      axiomMonthlyPrice: json['axiomMonthlyPrice'],
      salePrice: (json['salePrice'] as num).toInt(),
      allCount: (json['allCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': _$AvailabilityEnumMap[instance.availability]!,
      'axiomMonthlyPrice': instance.axiomMonthlyPrice,
      'salePrice': instance.salePrice,
      'allCount': instance.allCount,
    };

_$AvailableStoreImpl _$$AvailableStoreImplFromJson(Map<String, dynamic> json) =>
    _$AvailableStoreImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      phone: $enumDecode(_$PhoneEnumMap, json['phone']),
      address: json['address'] as String,
      description: json['description'] as String?,
      workTime: json['workTime'] as String,
    );

Map<String, dynamic> _$$AvailableStoreImplToJson(
        _$AvailableStoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'long': instance.long,
      'phone': _$PhoneEnumMap[instance.phone]!,
      'address': instance.address,
      'description': instance.description,
      'workTime': instance.workTime,
    };

const _$PhoneEnumMap = {
  Phone.THE_998555036006: 'THE_998555036006',
  Phone.THE_998555046006: 'THE_998555046006',
};

_$DataCharacterImpl _$$DataCharacterImplFromJson(Map<String, dynamic> json) =>
    _$DataCharacterImpl(
      name: json['name'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => CharacterCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataCharacterImplToJson(_$DataCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters,
    };

_$CharacterCharacterImpl _$$CharacterCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterCharacterImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$CharacterCharacterImplToJson(
        _$CharacterCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
