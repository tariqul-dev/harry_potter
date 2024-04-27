import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/character.dart';
import '../../bloc/character_bloc.dart';
import '../details/details.dart';
import 'widgets/character_card_widget.dart';

class Home extends StatelessWidget {
  static const String routeName = "/";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration.zero,
      () {
        context.read<CharacterBloc>().add(GetCharacterListEvent());
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
      ),
      body: Center(
        child: BlocBuilder<CharacterBloc, CharacterState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            }

            if (state is FailureState) {
              return Text(state.message);
            }

            if (state is DataFetchedSuccessState) {
              return CharacterListCardWidget(
                characterList: state.characterList,
              );
            }

            return const Text("Empty");
          },
        ),
      ),
    );
  }
}

class CharacterListCardWidget extends StatelessWidget {
  final List<Character> characterList;

  const CharacterListCardWidget({
    required this.characterList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characterList.length,
      itemBuilder: (context, index) {
        final Character character = characterList[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              Details.routeName,
              arguments: character,
            );
          },
          child: CharacterCardBodyWidget(character: character),
        );
      },
    );
  }
}
