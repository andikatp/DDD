import 'package:ddd_raja/application/location/location_state.dart';
import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/interface/location_interface.dart';
import 'package:ddd_raja/insfratucture/location/location_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_controller.g.dart';

@Riverpod(dependencies: [])
class LocationController extends _$LocationController {
  late LocationInterface _interface;

  @override
  LocationState build() {
    _interface = ref.watch(locationRepositoryProvider);
    return LocationState.initial();
  }

  Future<void> getLocationProvinceEvent() async {
    state = state.copyWith(locationFailureOrSuccess: none());
    final data = await _interface.getAllLocationFromRajaOngkir();
    data.fold(
      (l) => state = state.copyWith(locationFailureOrSuccess: some(Left(l))),
      (r) => state = state.copyWith(
          provinceData: r, locationFailureOrSuccess: some(const Right(unit)),),
    );
  }

  Future<void> getLocationCityEvent(String id) async {
    state = state.copyWith(cityData: const CityReq(results: []));
    final data = await _interface.getCity(id);
    data.fold(
      (l) => state = state.copyWith(locationFailureOrSuccess: some(Left(l))),
      (r) => state = state.copyWith(
        cityData: r,
        locationFailureOrSuccess: some(const Right(unit)),
      ),
    );
  }

  Future<void> getPriceEvent(String idFrom, String idTo) async {
    state = state.copyWith(price: 0);
    final data = await _interface.getPrice(idFrom, idTo);
    data.fold(
      (l) => state = state.copyWith(locationFailureOrSuccess: some(Left(l))),
      (r) => state = state.copyWith(
        price: r.value,
        locationFailureOrSuccess: some(const Right(unit)),
      ),
    );
  }
}
