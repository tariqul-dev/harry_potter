import 'package:flutter/material.dart';

import '../../../domain/entities/character.dart';
import 'widgets/cover_photo_widget.dart';
import 'widgets/info_table_widget.dart';
import 'widgets/list_of_string_widget.dart';

class Details extends StatelessWidget {
  static const routeName = "/details";

  const Details({
    required this.character,
    super.key,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name ?? ""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoverPhotoWidget(image: character.image),
            const SizedBox(
              height: 10,
            ),
            InfoTableWidget(title: "Name", value: character.name),
            InfoTableWidget(title: "Actor", value: character.actor),
            ListOfStringWidget(
                title: "Alternate names", value: character.alternateNames!),
            InfoTableWidget(title: "Species", value: character.species),
            InfoTableWidget(title: "Sender", value: character.gender),
            InfoTableWidget(title: "House", value: character.house),
            InfoTableWidget(
                title: "Date of birth", value: character.dateOfBirth),
            InfoTableWidget(
                title: "Year of birth",
                value: character.yearOfBirth.toString()),
            InfoTableWidget(
                title: "Wizard", value: character.wizard.toString()),
            InfoTableWidget(title: "Ancestry", value: character.ancestry),
            InfoTableWidget(title: "Eye colour", value: character.eyeColour),
            InfoTableWidget(title: "Hair colour", value: character.hairColour),
            InfoTableWidget(title: "Wand wood", value: character.wand!.wood),
            InfoTableWidget(title: "Wand core", value: character.wand!.core),
            InfoTableWidget(
                title: "Wand length", value: character.wand!.length.toString()),
            InfoTableWidget(title: "Patronus", value: character.patronus),
            InfoTableWidget(
                title: "Hogwarts student",
                value: character.hogwartsStudent.toString()),
            InfoTableWidget(
                title: "Hogwarts staff",
                value: character.hogwartsStaff.toString()),
            InfoTableWidget(title: "Alive", value: character.alive.toString()),
          ],
        ),
      ),
    );
  }
}
