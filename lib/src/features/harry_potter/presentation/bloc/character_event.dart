part of 'character_bloc.dart';

sealed class CharacterEvent extends Equatable {
  const CharacterEvent();
}

final class GetCharacterListEvent extends CharacterEvent {
  @override
  List<Object?> get props => [];
}

final class GetCharacterByIdEvent extends CharacterEvent {
  final int index;

  const GetCharacterByIdEvent({required this.index});

  @override
  List<Object?> get props => [index];
}
