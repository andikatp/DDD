// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityReqImpl _$$CityReqImplFromJson(Map<String, dynamic> json) =>
    _$CityReqImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsCities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CityReqImplToJson(_$CityReqImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultsCitiesImpl _$$ResultsCitiesImplFromJson(Map<String, dynamic> json) =>
    _$ResultsCitiesImpl(
      cityId: json['city_id'] as String,
      provinceId: json['province_id'] as String,
      province: json['province'] as String,
      type: json['type'] as String,
      cityName: json['city_name'] as String,
      postalCode: json['postal_code'] as String,
    );

Map<String, dynamic> _$$ResultsCitiesImplToJson(_$ResultsCitiesImpl instance) =>
    <String, dynamic>{
      'city_id': instance.cityId,
      'province_id': instance.provinceId,
      'province': instance.province,
      'type': instance.type,
      'city_name': instance.cityName,
      'postal_code': instance.postalCode,
    };
