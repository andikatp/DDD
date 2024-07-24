import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LocationReq provinceData,
    required CityReq cityData,
    required int price,
    required Option<Either<String, Unit>> locationFailureOrSuccess,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        provinceData: const LocationReq(query: [], results: []),
        cityData: const CityReq(results: []),
        locationFailureOrSuccess: none(),
        price: 0,
      );
}
