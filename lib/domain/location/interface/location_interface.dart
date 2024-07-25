import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_interface.g.dart';

abstract class LocationInterface {
  Future<LocationReq> getAllLocationFromRajaOngkir();
  Future<CityReq> getCity(String id);
  Future<PriceReq> getPrice(String idFrom, String idTo);
}

@riverpod
LocationInterface locationInterface(LocationInterfaceRef ref) =>
    ref.watch(locationInterfaceProvider);
