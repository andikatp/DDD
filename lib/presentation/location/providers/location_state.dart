import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    LocationReq? locationReq,
    CityReq? cityReq,
    PriceReq? priceReq,
  }) = _LocationState;

  factory LocationState.initial() => const LocationState();
}
