import 'dart:convert';

import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:ddd_raja/insfratucture/core/dio_injectable_module.dart';
import 'package:ddd_raja/insfratucture/location/location_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixture/fixture_reader.dart';
import 'core/container_provider.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late Dio mockDio;
  late ProviderContainer container;
  late LocationRepository repository;

  setUp(() {
    mockDio = MockDio();
    container = createContainer(
      overrides: [
        dioProvider.overrideWithValue(mockDio),
      ],
    );
    repository = container.read(locationRepositoryProvider);
  });

  group(
    'LocationRepository',
    () async {
      test(
        'should fetch all location from RajaOngkir ',
        () async {
          // arrange
          final responsePayload = jsonDecode(fixtureReader('location.json'));
          when(
            () => mockDio.get<dynamic>(
              'https://api.rajaongkir.com/starter/province',
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).thenAnswer(
            (_) async => Response(
              data: responsePayload,
              requestOptions: RequestOptions(),
            ),
          );
          // act
          final result = await repository.getAllLocationFromRajaOngkir();
          // assert
          expect(result, isA<LocationReq>());
          verify(
            () => mockDio.get<dynamic>(
              'https://api.rajaongkir.com/starter/province',
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).called(1);
        },
      );

      test(
        'should fetch all city from RajaOngkir',
        () async {
          // arrange
          final responsePayload = jsonDecode(fixtureReader('city.json'));
          when(
            () => mockDio.get<dynamic>(
              'https://api.rajaongkir.com/starter/city',
              queryParameters: {'province': '123'},
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).thenAnswer(
            (_) async => Response(
              data: responsePayload,
              requestOptions: RequestOptions(),
            ),
          );
          // act
          final result = await repository.getCity('123');
          // assert
          expect(result, isA<CityReq>());
          verify(
            () => mockDio.get<dynamic>(
              'https://api.rajaongkir.com/starter/city',
              queryParameters: {'province': '123'},
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).called(1);
        },
      );

      test(
        'should fetch price between two cities from RajaOngkir',
        () async {
          // arrange
          final responsePayload = jsonDecode(fixtureReader('price.json'));
          when(
            () => mockDio.post<dynamic>(
              'https://api.rajaongkir.com/starter/cost',
              data: any(named: 'data'),
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).thenAnswer(
            (_) async => Response(
              data: responsePayload,
              requestOptions: RequestOptions(),
            ),
          );
          // act
          final result = await repository.getPrice('123', '456');
          // assert
          expect(result, isA<PriceReq>());
          verify(
            () => mockDio.post<dynamic>(
              'https://api.rajaongkir.com/starter/cost',
              data: any(named: 'data'),
              options: any(named: 'options'),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).called(1);
        },
      );
    },
  );
}
