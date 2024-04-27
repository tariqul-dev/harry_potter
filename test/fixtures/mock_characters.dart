import 'dart:convert';

import 'package:harry_potter/src/features/harry_potter/data/models/character_model.dart';
import 'package:harry_potter/src/features/harry_potter/data/models/wand_model.dart';
import 'package:harry_potter/src/features/harry_potter/domain/entities/character.dart';

import 'fixture_reader.dart';

const tCharacter = Character(
  id: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8",
  name: "Harry Potter",
  alternateNames: [
    "The Boy Who Lived",
    "The Chosen One",
    "Undesirable No. 1",
    "Potty"
  ],
  species: "human",
  gender: "male",
  house: "Gryffindor",
  dateOfBirth: "31-07-1980",
  yearOfBirth: 1980,
  wizard: true,
  ancestry: "half-blood",
  eyeColour: "green",
  hairColour: "black",
  wand: tWandModel,
  patronus: "stag",
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: "Daniel Radcliffe",
  alternateActors: [],
  alive: true,
  image: "https://ik.imagekit.io/hpapi/harry.jpg",
);

const tCharacterModel = CharacterModel(
  id: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8",
  name: "Harry Potter",
  alternateNames: [
    "The Boy Who Lived",
    "The Chosen One",
    "Undesirable No. 1",
    "Potty"
  ],
  species: "human",
  gender: "male",
  house: "Gryffindor",
  dateOfBirth: "31-07-1980",
  yearOfBirth: 1980,
  wizard: true,
  ancestry: "half-blood",
  eyeColour: "green",
  hairColour: "black",
  wand: tWandModel,
  patronus: "stag",
  hogwartsStudent: true,
  hogwartsStaff: false,
  actor: "Daniel Radcliffe",
  alternateActors: [],
  alive: true,
  image: "https://ik.imagekit.io/hpapi/harry.jpg",
);

const tWandModel = WandModel(
  wood: "holly",
  core: "phoenix tail feather",
  length: 11,
);

final List<CharacterModel> tCharacterModelList = [
  tCharacterModel,
  tCharacterModel
];
final List<Character> tCharacterList = tCharacterModelList;

final data = json.decode(fixtureReader("response.json"));
final List<CharacterModel> tJsonToCharacterModel =
    List.generate(data.length, (index) => CharacterModel.fromJson(data[index]));
