import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/features/harry_potter/data/datasources/harry_potter_remote_data_source.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart';

import '../../../../../fixtures/fixture_reader.dart';
import '../../../../../fixtures/mock_characters.dart';

class MockHttpClient extends Mock implements Client {}

void main() {
  late MockHttpClient mockClient;
  late HarryPotterRemoteDataSourceImpl remoteDataSource;

  setUp(() {
    mockClient = MockHttpClient();
    remoteDataSource = HarryPotterRemoteDataSourceImpl(
      client: mockClient,
    );
  });

  group("getAllCharacter", () {
    final uri = Uri.parse("https://hp-api.onrender.com/api/characters");
    final responseString = fixtureReader("response.json");
    const header = {'Content-Type': 'application/json'};
    test("should return CharacterList when the response is 200 (success)",
        () async {
      // arrange
      when(mockClient.get(uri, headers: header)).thenAnswer(
          (_) async => Response(responseString, 200));
      // act
      final result = await remoteDataSource.getAllCharacter();
      // assert
      verify(mockClient.get(uri));
      expect(result, tJsonToCharacterModel);
    });
  });
}
