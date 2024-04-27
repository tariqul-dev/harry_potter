import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:harry_potter/src/core/usecases/usecase.dart';
import 'package:harry_potter/src/features/harry_potter/domain/entities/character.dart';
import 'package:harry_potter/src/features/harry_potter/domain/repositories/harry_potter_repository.dart';
import 'package:harry_potter/src/features/harry_potter/domain/usecases/get_all_character.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/mock_characters.dart';

class MockHarryPotterRepository extends Mock implements HarryPotterRepository{}

void main(){
  late MockHarryPotterRepository mockRepository;
  late GetAllCharacter useCase;

  setUp(() {
    mockRepository = MockHarryPotterRepository();
    useCase = GetAllCharacter(mockRepository);
  });
  group("getAllCharacter", () {
    test("should return all character", () async {
      // arrange
      when(mockRepository.getAllCharacter()).thenAnswer((_) async => right(tCharacterList));
      // act
      final result = await useCase(NoParams());
      // assert
      verify(mockRepository.getAllCharacter());
      expect(result, right(tCharacterList));
    });
  });
  

}

