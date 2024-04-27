import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/features/harry_potter/data/models/wand_model.dart';
import 'package:harry_potter/src/features/harry_potter/domain/entities/wand.dart';

import '../../../../../fixtures/fixture_reader.dart';
import '../../../../../fixtures/mock_characters.dart';

void main() {
  group("wandModel", () {
    test("should be a subClass of Wand entity", () async {
      // assert
      expect(tWandModel, isA<Wand>());
    });

    test("should return a valid model when fromJson is call", () async {
      // arrange
      final jsonString = fixtureReader("wand.json");
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      // act
      final result = WandModel.fromJson(jsonMap);
      // assert
      expect(result, tWandModel);
    });
  });
}
