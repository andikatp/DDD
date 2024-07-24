import 'package:ddd_raja/domain/core/failures.dart';
import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:fpdart/fpdart.dart';

abstract class LocationInterface {
  Future<Either<Failure, LocationReq>> getAllLocationFromRajaOngkir();
  Future<Either<Failure, CityReq>> getCity(String id);
  Future<Either<Failure, PriceReq>> getPrice(String idFrom, String idTo);
}
