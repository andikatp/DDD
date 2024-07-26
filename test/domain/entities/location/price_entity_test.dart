import 'dart:convert';

import 'package:ddd_raja/domain/location/entites/price_req.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture/fixture_reader.dart';

void main() {
  late PriceReq tPrice;

  setUp(() => tPrice = PriceReq.empty());

  final tMap = jsonDecode(fixtureReader('price.json'));

  test(
    'should return a valid [PriceReq] from the json',
    () async {
      // arrange
      final rajaOngkir = (tMap as Map<String, dynamic>)['rajaongkir'];
      final resultApi =
          (rajaOngkir as Map<String, dynamic>)['results'] as List<dynamic>;
      final resultsReorder =
          resultApi.map((e) => e as Map<String, dynamic>).toList();
      final costs = resultsReorder[0]['costs'] as List<dynamic>;
      final costsReorder = costs.map((e) => e as Map<String, dynamic>).toList();
      final cost = costsReorder[0]['cost'] as List<dynamic>;
      final costReorder = cost.map((e) => e as Map<String, dynamic>).toList();
      // act
      final result = PriceReq.fromJson(costReorder[0]);
      // assert
      expect(result, tPrice);
    },
  );
}
