import 'dart:convert';

import 'package:ddd_raja/domain/location/entites/city_req.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture/fixture_reader.dart';

void main() {
  late CityReq tCity;

  setUp(() => tCity = CityReq.empty());

  final tMap = jsonDecode(fixtureReader('city.json'));

  test(
    'should return a valid [CityReq] from the json',
    () async {
      // arrange
      final cityList =
          (tMap as Map<String, dynamic>)['rajaongkir'] as Map<String, dynamic>;
      // act
      final result = CityReq.fromJson(cityList);
      // print(result);

      // assert
      expect(result, equals(tCity));
    },
  );
}
