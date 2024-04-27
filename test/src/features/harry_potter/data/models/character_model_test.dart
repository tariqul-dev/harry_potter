import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/features/harry_potter/data/models/character_model.dart';
import 'package:harry_potter/src/features/harry_potter/domain/entities/character.dart';

import '../../../../../fixtures/fixture_reader.dart';
import '../../../../../fixtures/mock_characters.dart';

void main() {

  group("CharacterModel", () {

    test("should be subClass of character entity", () {
      // assert
      expect(tCharacter, isA<Character>());
    });

    test("should return valid model when fromJson call", () async {
      // arrange
      final jsonString = fixtureReader("character.json");
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      // act
      final result = CharacterModel.fromJson(jsonMap);
      // assert
      expect(result, tCharacter);
    });
  });


}