// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationReqImpl _$$LocationReqImplFromJson(Map<String, dynamic> json) =>
    _$LocationReqImpl(
      query: json['query'] as List<dynamic>,
      results: (json['results'] as List<dynamic>)
          .map((e) => ProvinceData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationReqImplToJson(_$LocationReqImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'results': instance.results,
    };
