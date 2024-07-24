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
  LocationRepository(this._dio);
  final Dio _dio;

  @override
  Future<Either<String, LocationReq>> getAllLocationFromRajaOngkir() async {
    try {
      final response = await _dio.get<dynamic>(
        'https://api.rajaongkir.com/starter/province',
        options: Options(headers: {'key': ''}),
      );
      final result = (response.data as Map<String, dynamic>)['rajaongkir']
          as Map<String, dynamic>;
      final data = LocationReq.fromJson(result);
      return Right(data);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, CityReq>> getCity(String id) async {
    try {
      final response = await _dio.get<dynamic>(
        'https://api.rajaongkir.com/starter/city',
        queryParameters: {'province': id},
        options: Options(headers: {'key': ''}),
      );
      final result = (response.data as Map<String, dynamic>)['rajaongkir']
          as Map<String, dynamic>;
      final data = CityReq.fromJson(result);
      return Right(data);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, PriceReq>> getPrice(String idFrom, String idTo) async {
    try {
      final response = await _dio.post<dynamic>(
        'https://api.rajaongkir.com/starter/cost',
        data: {
          'origin': idFrom,
          'destination': idTo,
          'weight': 1000,
          'courier': 'jne',
        },
        options: Options(headers: {'key': ''}),
      );
      final result = (((((response.data as Map<String, dynamic>)['rajaongkir']
                      as Map<String, dynamic>)['results']
                  as List<Map<String, dynamic>>)[0]['costs']
              as List<Map<String, dynamic>>)[0]['cost']
          as List<Map<String, dynamic>>)[0];
      final data = PriceReq.fromJson(result);
      return Right(data);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return LocationRepository(dio);
}
