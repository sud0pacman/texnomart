// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopBrandsImpl _$$TopBrandsImplFromJson(Map<String, dynamic> json) =>
    _$TopBrandsImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : TopBrandsDataList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopBrandsImplToJson(_$TopBrandsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$TopBrandsDataListImpl _$$TopBrandsDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$TopBrandsDataListImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TopBrandData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopBrandsDataListImplToJson(
        _$TopBrandsDataListImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e?.toJson()).toList(),
    };

_$TopBrandDataImpl _$$TopBrandDataImplFromJson(Map<String, dynamic> json) =>
    _$TopBrandDataImpl(
      json['name'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
      json['image_alt'] as String?,
      json['meta'] == null
          ? null
          : BrandMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopBrandDataImplToJson(_$TopBrandDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'image_alt': instance.imageAlt,
      'meta': instance.meta?.toJson(),
    };

_$BrandMetaImpl _$$BrandMetaImplFromJson(Map<String, dynamic> json) =>
    _$BrandMetaImpl(
      json['title'] as String?,
      json['description'] as String?,
      json['keywords'] as String?,
    );

Map<String, dynamic> _$$BrandMetaImplToJson(_$BrandMetaImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
    };
