import 'package:ddd_raja/domain/location/entites/province_data.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_req.freezed.dart';
part 'location_req.g.dart';


@freezed
abstract class LocationReq with _$LocationReq {
  const factory LocationReq({
    required final IList<dynamic> query,
    required final IList<ProvinceData> results,
  }) = _LocationReq;
  const LocationReq._();

  factory LocationReq.fromJson(Map<String, Object?> json) =>
      _$LocationReqFromJson(json);
}
