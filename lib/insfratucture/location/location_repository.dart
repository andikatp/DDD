import 'package:ddd_raja/domain/core/exceptions.dart';
import 'package:ddd_raja/domain/core/failures.dart';
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
  Future<Either<Failure, LocationReq>> getAllLocationFromRajaOngkir() async {
    try {
      final response = await _dio.get<dynamic>(
        'https://api.rajaongkir.com/starter/province',
        options: Options(headers: {'key': ''}),
      );
      final result = (response.data as Map<String, dynamic>)['rajaongkir']
          as Map<String, dynamic>;
      final data = LocationReq.fromJson(result);
      return Right(data);
    } on DioException catch (e) {
      final exception = ServerException(message: e.message ?? 'Error');
      return Left(Failure.serverFailureFromException(exception));
    }
  }

  @override
  Future<Either<Failure, CityReq>> getCity(String id) async {
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
    } on DioException catch (e) {
      final exception = ServerException(message: e.message ?? 'Error');
      return Left(Failure.serverFailureFromException(exception));
    }
  }

  @override
  Future<Either<Failure, PriceReq>> getPrice(
    String idFrom,
    String idTo,
  ) async {
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
      final rajaOngkir = (response.data as Map<String, dynamic>)['rajaongkir'];
      final result =
          (rajaOngkir as Map<String, dynamic>)['results'] as List<dynamic>;
      final resultsReorder =
          result.map((e) => e as Map<String, dynamic>).toList();
      final costs = resultsReorder[0]['costs'] as List<dynamic>;
      final costsReorder = costs.map((e) => e as Map<String, dynamic>).toList();
      final cost = costsReorder[0]['cost'] as List<dynamic>;
      final costReorder = cost.map((e) => e as Map<String, dynamic>).toList();
      final data = PriceReq.fromJson(costReorder[0]);
      return Right(data);
    } on DioException catch (e) {
      final exception = ServerException(message: e.message ?? 'Error');
      return Left(Failure.serverFailureFromException(exception));
    }
  }
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return LocationRepository(dio);
}
