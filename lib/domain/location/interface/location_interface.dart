import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:fpdart/fpdart.dart';

abstract class LocationInterface {
  Future<Either<String, LocationReq>> getAllLocationFromRajaOngkir();
  Future<Either<String, CityReq>> getCity(String id);
  Future<Either<String, PriceReq>> getPrice(String idFrom, String idTo);
}
