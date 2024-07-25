import 'dart:developer';

import 'package:ddd_raja/domain/core/exceptions.dart';
import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:ddd_raja/domain/location/interface/location_interface.dart';
import 'package:ddd_raja/insfratucture/core/dio_injectable_module.dart';
import 'package:ddd_raja/insfratucture/core/extension.dart';
import 'package:ddd_raja/insfratucture/core/logger_factory.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_repository.g.dart';

class LocationRepository extends LocationInterface {
  LocationRepository(this._dio);
  final Dio _dio;

  static final _log = LoggerFactory.logger('StreetLampRemoteRepositoryMock');

  @override
  Future<LocationReq> getAllLocationFromRajaOngkir({
    CancelToken? cancelToken,
  }) async {
    try {
      _log.i('Fetching all locations from RajaOngkir');

      final response = await _dio.get<dynamic>(
        'https://api.rajaongkir.com/starter/province',
        options: Options(headers: {'key': ''}),
        cancelToken: cancelToken,
      );
      final result = (response.data as Map<String, dynamic>)['rajaongkir']
          as Map<String, dynamic>;
      return LocationReq.fromJson(result);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        log(
          'Request to fetch all locations was canceled',
          name: 'LocationRepository.getAllLocationFromRajaOngkir',
        );
      }
      throw ServerException(message: e.message ?? 'Error');
    }
  }

  @override
  Future<CityReq> getCity(
    String id, {
    CancelToken? cancelToken,
  }) async {
    try {
      log(
        'Fetching city with id: $id from RajaOngkir',
        name: 'LocationRepository.getCity',
      );
      final response = await _dio.get<dynamic>(
        'https://api.rajaongkir.com/starter/city',
        queryParameters: {'province': id},
        options: Options(headers: {'key': ''}),
        cancelToken: cancelToken,
      );
      final result = (response.data as Map<String, dynamic>)['rajaongkir']
          as Map<String, dynamic>;
      return CityReq.fromJson(result);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        log(
          'Request to fetch city with id: $id was canceled',
          name: 'LocationRepository.getCity',
        );
      }
      throw ServerException(message: e.message ?? 'Error');
    }
  }

  @override
  Future<PriceReq> getPrice(
    String idFrom,
    String idTo, {
    CancelToken? cancelToken,
  }) async {
    try {
      log(
        'Fetching price from $idFrom to $idTo from RajaOngkir',
        name: 'LocationRepository.getPrice',
      );
      final response = await _dio.post<dynamic>(
        'https://api.rajaongkir.com/starter/cost',
        data: {
          'origin': idFrom,
          'destination': idTo,
          'weight': 1000,
          'courier': 'jne',
        },
        options: Options(headers: {'key': ''}),
        cancelToken: cancelToken,
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
      return PriceReq.fromJson(costReorder[0]);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        log(
          'Request to fetch price from $idFrom to $idTo was canceled',
          name: 'LocationRepository.getPrice',
        );
      }
      throw ServerException(message: e.message ?? 'Error');
    }
  }
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return LocationRepository(dio);
}

final allLocationsProvider = FutureProvider.autoDispose<LocationReq>(
  (ref) async {
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
  },
  dependencies: [locationRepositoryProvider],
);

// final cityProvider =
//     FutureProvider.autoDispose.family<Either<Failure, CityReq>, String>(
//   (ref, id) async {
//     ref.logger();
//     final link = ref.cacheFor();
//     final token = ref.cancelToken();

//     try {
//       final repository = ref.read(locationRepositoryProvider);
//       return await repository.getCity(id, cancelToken: token);
//     } catch (e) {
//       link.close();
//       rethrow;
//     }
//   },
//   dependencies: [locationRepositoryProvider],
// );

// final priceProvider = FutureProvider.autoDispose
//     .family<Either<Failure, PriceReq>, Map<String, String>>(
//   (ref, params) async {
//     ref.logger();
//     final link = ref.cacheFor();
//     final token = ref.cancelToken();

//     try {
//       final repository = ref.read(locationRepositoryProvider);
//       return await repository.getPrice(
//         params['idFrom']!,
//         params['idTo']!,
//         cancelToken: token,
//       );
//     } catch (e) {
//       link.close();
//       rethrow;
//     }
//   },
//   dependencies: [locationRepositoryProvider],
// );
