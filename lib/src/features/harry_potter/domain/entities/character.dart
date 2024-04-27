import 'package:equatable/equatable.dart';

import 'wand.dart';

class Character extends Equatable {
  const Character({
    required this.id,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  final String? id;
  final String? name;
  final List<String>? alternateNames;
  final String? species;
  final String? gender;
  final String? house;
  final String? dateOfBirth;
  final num? yearOfBirth;
  final bool? wizard;
  final String? ancestry;
  final String? eyeColour;
  final String? hairColour;
  final Wand? wand;
  final String? patronus;
  final bool? hogwartsStudent;
  final bool? hogwartsStaff;
  final String? actor;
  final List<dynamic>? alternateActors;
  final bool? alive;
  final String? image;

  @override
  List<Object?> get props => [
    id,
    name,
    alternateNames,
    species,
    gender,
    house,
    dateOfBirth,
    yearOfBirth,
    wizard,
    ancestry,
    eyeColour,
    hairColour,
    wand,
    patronus,
    hogwartsStudent,
    hogwartsStaff,
    actor,
    alternateActors,
    alive,
    image,
  ];
}
