import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_data.freezed.dart';
part 'province_data.g.dart';

@freezed
abstract class ProvinceData with _$ProvinceData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProvinceData({
    required final String provinceId,
    required final String province,
  }) = _ProvinceData;
  const ProvinceData._();

  factory ProvinceData.fromJson(Map<String, Object?> json) =>
      _$ProvinceDataFromJson(json);
}
