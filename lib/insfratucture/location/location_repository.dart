import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:ddd_raja/domain/location/interface/location_interface.dart';
import 'package:ddd_raja/insfratucture/core/dio_injectable_module.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_repository.g.dart';

class LocationRepository extends LocationInterface {
  final Dio _dio;
  LocationRepository(this._dio);

  @override
  Future<Either<String, LocationReq>> getAllLocationFromRajaOngkir() async {
    try {
      final response = await _dio.get(
          'https://api.rajaongkir.com/starter/province',
          options:
              Options(headers: {"key": ""}));
      final result = response.data['rajaongkir'];
      final data = LocationReq.fromJson(result);
      return Right(data);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, CityReq>> getCity(String id) async {
    try {
      final response = await _dio.get('https://api.rajaongkir.com/starter/city',
          queryParameters: {"province": id},
          options:
              Options(headers: {"key": ""}));
      final result = response.data['rajaongkir'];
      final data = CityReq.fromJson(result);
      return Right(data);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PriceReq>> getPrice(String idFrom, String idTo) async {
    try {
      final response = await _dio.post(
          'https://api.rajaongkir.com/starter/cost',
          data: {
            "origin": idFrom,
            "destination": idTo,
            "weight": 1000,
            "courier": "jne"
          },
          options:
              Options(headers: {"key": ""}));
      final result =
          response.data['rajaongkir']['results'][0]['costs'][0]['cost'][0];
      print(result);
      final data = PriceReq.fromJson(result);
      return Right(data);
    } catch (e, s) {
      print(s);
      print(e);
      return Left(e.toString());
    }
  }
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return LocationRepository(dio);
}
