import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_req.freezed.dart';

part 'price_req.g.dart';

@freezed
class PriceReq with _$PriceReq {
  const factory PriceReq({
    required int value,
  }) = _PriceReq;

  factory PriceReq.fromJson(Map<String, Object?> json) =>
      _$PriceReqFromJson(json);
}
