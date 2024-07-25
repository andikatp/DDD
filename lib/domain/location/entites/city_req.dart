import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_req.freezed.dart';
part 'city_req.g.dart';

@freezed
class CityReq with _$CityReq {
  const factory CityReq({
    required final IList<ResultsCities> results,
  }) = _CityReq;
  const CityReq._();

  factory CityReq.fromJson(Map<String, Object?> json) =>
      _$CityReqFromJson(json);
}

@freezed
class ResultsCities with _$ResultsCities {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ResultsCities({
    required final String cityId,
    required final String provinceId,
    required final String province,
    required final String type,
    required final String cityName,
    required final String postalCode,
  }) = _ResultsCities;

  factory ResultsCities.fromJson(Map<String, Object?> json) =>
      _$ResultsCitiesFromJson(json);
}
