import '../../domain/entities/character.dart';
import 'wand_model.dart';

class CharacterModel extends Character {
  const CharacterModel({
    required super.id,
    required super.name,
    required super.alternateNames,
    required super.species,
    required super.gender,
    required super.house,
    required super.dateOfBirth,
    required super.yearOfBirth,
    required super.wizard,
    required super.ancestry,
    required super.eyeColour,
    required super.hairColour,
    required super.wand,
    required super.patronus,
    required super.hogwartsStudent,
    required super.hogwartsStaff,
    required super.actor,
    required super.alternateActors,
    required super.alive,
    required super.image,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      alternateNames: json['alternate_names'] != null
          ? json['alternate_names'].cast<String>()
          : [],
      species: json['species'],
      gender: json['gender'],
      house: json['house'],
      dateOfBirth: json['dateOfBirth'],
      yearOfBirth: json['yearOfBirth'],
      wizard: json['wizard'],
      ancestry: json['ancestry'],
      eyeColour: json['eyeColour'],
      hairColour: json['hairColour'],
      wand: WandModel.fromJson(json['wand']),
      patronus: json['patronus'],
      hogwartsStudent: json['hogwartsStudent'],
      hogwartsStaff: json['hogwartsStaff'],
      actor: json['actor'],
      alternateActors: json['alternate_actors'],
      alive: json['alive'],
      image: json['image'],
    );
  }

  CharacterModel copyWith({
    String? id,
    String? name,
    List<String>? alternateNames,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    num? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    WandModel? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternateActors,
    bool? alive,
    String? image,
  }) =>
      CharacterModel(
        id: id ?? this.id,
        name: name ?? this.name,
        alternateNames: alternateNames ?? this.alternateNames,
        species: species ?? this.species,
        gender: gender ?? this.gender,
        house: house ?? this.house,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        yearOfBirth: yearOfBirth ?? this.yearOfBirth,
        wizard: wizard ?? this.wizard,
        ancestry: ancestry ?? this.ancestry,
        eyeColour: eyeColour ?? this.eyeColour,
        hairColour: hairColour ?? this.hairColour,
        wand: wand ?? this.wand,
        patronus: patronus ?? this.patronus,
        hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
        hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
        actor: actor ?? this.actor,
        alternateActors: alternateActors ?? this.alternateActors,
        alive: alive ?? this.alive,
        image: image ?? this.image,
      );
}
