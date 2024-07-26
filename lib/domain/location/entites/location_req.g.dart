// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationReqImpl _$$LocationReqImplFromJson(Map<String, dynamic> json) =>
    _$LocationReqImpl(
      results: IList<ProvinceData>.fromJson(json['results'],
          (value) => ProvinceData.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$LocationReqImplToJson(_$LocationReqImpl instance) =>
    <String, dynamic>{
      'results': instance.results.toJson(
        (value) => value,
      ),
    };
