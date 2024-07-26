import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:ddd_raja/insfratucture/core/extension.dart';
import 'package:ddd_raja/insfratucture/location/location_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_controller.g.dart';
part 'location_controller.freezed.dart';

@Riverpod(dependencies: [])
Future<LocationReq> allLocations(AllLocationsRef ref) async {
  ref.logger();
  final link = ref.cacheFor();
  final token = ref.cancelToken();
  try {
    final repository = ref.read(locationRepositoryProvider);
    return await repository.getAllLocationFromRajaOngkir(cancelToken: token);
  } catch (e) {
    link.close();
    rethrow;
  }
}

@Riverpod(dependencies: [])
Future<CityReq> allCityFromProvince(
  AllCityFromProvinceRef ref,
  String id,
) async {
  ref.logger();
  final link = ref.cacheFor();
  final token = ref.cancelToken();

  try {
    final repository = ref.read(locationRepositoryProvider);
    return await repository.getCity(id, cancelToken: token);
  } catch (e) {
    link.close();
    rethrow;
  }
}

@Riverpod(dependencies: [])
class CityController extends _$CityController {
  @override
  Future<CityReq> build(String id) {
    return ref.watch(locationRepositoryProvider).getCity(id);
  }
}

@Riverpod(dependencies: [])
class PriceController extends _$PriceController {
  @override
  PriceReq build() {
    return const PriceReq(value: 0);
  }

  Future<void> getPrice(PriceParams params) async {
    state = await ref.watch(locationRepositoryProvider).getPrice(
          params.idFrom,
          params.idTo,
        );
  }
}

@freezed
class PriceParams with _$PriceParams {
  const factory PriceParams({required String idFrom, required String idTo}) =
      _PriceParams;
}
