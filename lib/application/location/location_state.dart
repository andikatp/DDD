import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LocationReq provinceData,
    required CityReq cityData,
    required int price,
  }) = _LocationState;

  factory LocationState.initial() => const LocationState(
        provinceData: LocationReq(query: IList.empty(), results: IList.empty()),
        cityData: CityReq(results: IList.empty()),
        price: 0,
      );
}
