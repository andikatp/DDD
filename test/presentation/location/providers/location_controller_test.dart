import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:ddd_raja/insfratucture/location/location_repository.dart';
import 'package:ddd_raja/presentation/location/providers/location_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../insfratucture/core/container_provider.dart';

class MockLocationRepository extends Mock implements LocationRepository {}

void main() {
  late LocationRepository mockLocationRepository;
  late ProviderContainer container;

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    container = createContainer(
      overrides: [
        locationRepositoryProvider.overrideWithValue(mockLocationRepository),
      ],
    );
    mockLocationRepository = container.read(locationRepositoryProvider);
  });

  group(
    'all province',
    () {
      test(
        'should fetch all province from RajaOngkir',
        () async {
          // arrange
          final locationReq = LocationReq.empty();
          when(
            () => mockLocationRepository.getAllLocationFromRajaOngkir(
              cancelToken: any(named: 'cancelToken'),
            ),
          ).thenAnswer((_) async => locationReq);
          // act
          final result = await container.read(allLocationsProvider.future);
          // assert
          expect(result, equals(locationReq));
          verify(
            () => mockLocationRepository.getAllLocationFromRajaOngkir(
              cancelToken: any(named: 'cancelToken'),
            ),
          ).called(1);
        },
      );
    },
  );

  group(
    'all city',
    () {
      test(
        'should fetch all city from RajaOngkir',
        () async {
          // arrange
          final cityReq = CityReq.empty();
          when(
            () => mockLocationRepository.getCity(
              any(),
              cancelToken: any(named: 'cancelToken'),
            ),
          ).thenAnswer((_) async => cityReq);
          // act
          final result =
              await container.read(allCityFromProvinceProvider('123').future);
          // assert
          expect(result, equals(cityReq));
          verify(
            () => mockLocationRepository.getCity(
              '123',
              cancelToken: any(named: 'cancelToken'),
            ),
          ).called(1);
        },
      );
    },
  );

  group('price', () {
    test(
      'should fetch price between two cities from RajaOngkir',
      () async {
        // arrange
        final priceReq = PriceReq.empty();
        when(
          () => mockLocationRepository.getPrice(
            any(),
            any(),
            cancelToken: any(named: 'cancelToken'),
          ),
        ).thenAnswer((_) async => priceReq);
        // act
        final controller = container.read(priceFromTwoCitiesProvider.notifier);
        await controller
            .getPrice(const PriceParams(idFrom: '123', idTo: '123'));
        // assert
        final result = container.read(priceFromTwoCitiesProvider);
        expect(result, equals(priceReq));
        verify(
          () => mockLocationRepository.getPrice(
            '123',
            '123',
            cancelToken: any(named: 'cancelToken'),
          ),
        ).called(1);
      },
    );
  });
}
