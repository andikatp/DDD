import 'package:ddd_raja/domain/location/entites/province_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'location_req.freezed.dart';
part 'location_req.g.dart';


@freezed
abstract class LocationReq with _$LocationReq {
  const factory LocationReq({
    required final List<dynamic> query,
    required final List<ProvinceData> results,
  }) = _LocationReq;

  factory LocationReq.fromJson(Map<String, Object?> json) =>
      _$LocationReqFromJson(json);
}
