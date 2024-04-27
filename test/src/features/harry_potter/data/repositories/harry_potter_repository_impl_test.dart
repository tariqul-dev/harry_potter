import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/core/errors/exceptions.dart';
import 'package:harry_potter/src/core/errors/failures.dart';
import 'package:harry_potter/src/core/network/network_info.dart';
import 'package:harry_potter/src/features/harry_potter/data/datasources/harry_potter_remote_data_source.dart';
import 'package:harry_potter/src/features/harry_potter/data/repositories/harry_potter_repository_impl.dart';
import 'package:mockito/mockito.dart';

import '../../../../../fixtures/mock_characters.dart';

class MockHarryPotterRemoteDataSource extends Mock
    implements HarryPotterRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late MockHarryPotterRemoteDataSource mockRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;
  late HarryPotterRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockHarryPotterRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();

    repository = HarryPotterRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
    );
  });

  group("getAllCharacter", () {
    test("should check if device is online", () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      await repository.getAllCharacter();
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    group("device is online", () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test("should return remote data when remote data source calls successful",
          () async {
        // arrange
        when(mockRemoteDataSource.getAllCharacter())
            .thenAnswer((_) async => tCharacterModelList);
        // act
        final result = await repository.getAllCharacter();
        // assert
        verify(mockRemoteDataSource.getAllCharacter());
        expect(result, right(tCharacterList));
      });

      test(
          "should return server failure when remote data source call is unsuccessful",
          () async {
        // arrange
        when(mockRemoteDataSource.getAllCharacter())
            .thenThrow(ServerException(message: "Failed"));
        // act
        final result = await repository.getAllCharacter();
        // assert
        verify(mockRemoteDataSource.getAllCharacter());
        expect(result, left(const ServerFailure(message: "Failed")));
      });
    });
  });
}
