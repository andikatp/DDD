import 'dart:convert';

import 'package:ddd_raja/domain/location/entites/location_req.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixture/fixture_reader.dart';

void main() {
  late LocationReq tLocationReq;

  setUp(() => tLocationReq = LocationReq.empty());

  final tMap = jsonDecode(fixtureReader('location.json'));

  test(
    'should return a valid [LocationReq] from the json',
    () async {
      // arrange
      final locationList =
          (tMap as Map<String, dynamic>)['rajaongkir'] as Map<String, dynamic>;
      // act
      final result = LocationReq.fromJson(locationList);
      // assert
      expect(result, tLocationReq);
    },
  );
}
