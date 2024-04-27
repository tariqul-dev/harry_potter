import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/character.dart';
import '../../domain/usecases/get_all_character.dart';

part 'character_event.dart';

part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetAllCharacter getAllCharacter;

  CharacterBloc({
    required this.getAllCharacter,
  }) : super(CharacterInitial()) {
    on<CharacterEvent>((event, emit) {});

    on<GetCharacterListEvent>((event, emit) async {
      emit(LoadingState());

      final response = await getAllCharacter(NoParams());

      await response?.fold(
        (failure) async {
          emit(FailureState(message: failure.message));
        },
        (success) async {
          // if (success.isEmpty) {
          //   emit(const EmptyState(message: "Empty"));
          //   return;
          // }
          emit(DataFetchedSuccessState(characterList: success));
        },
      );
    });
  }
}
