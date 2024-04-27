import 'dart:convert';

import 'package:http/http.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/character_model.dart';

abstract class HarryPotterRemoteDataSource {
  /// Calls the https://hp-api.onrender.com/api/characters endpoints
  ///
  /// Throws [ServerException] for all failure
  Future<List<CharacterModel>>? getAllCharacter();
}

class HarryPotterRemoteDataSourceImpl implements HarryPotterRemoteDataSource {
  final Client client;

  HarryPotterRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CharacterModel>>? getAllCharacter() async {
    final uri = Uri.parse("https://hp-api.onrender.com/api/characters");
    final response = await client.get(uri);

    if (response.statusCode != 200) {
      throw ServerException(message: response.reasonPhrase.toString());
    }
    final jsonData = json.decode(response.body);
    final characterList = List.generate(
        jsonData.length, (index) => CharacterModel.fromJson(jsonData[index]));

    return characterList;
  }
}
