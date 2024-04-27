part of 'character_bloc.dart';

sealed class CharacterState extends Equatable {
  const CharacterState();
}

final class CharacterInitial extends CharacterState {
  @override
  List<Object> get props => [];
}

class LoadingState extends CharacterState {
  @override
  List<Object?> get props => [];
}

class FailureState extends CharacterState {
  final String message;

  const FailureState({required this.message});

  @override
  List<Object?> get props => [message];
}

class EmptyState extends CharacterState {
  final String message;

  const EmptyState({required this.message});

  @override
  List<Object?> get props => [message];
}

class DataFetchedSuccessState extends CharacterState {
  final List<Character> characterList;

  const DataFetchedSuccessState({required this.characterList});

  @override
  List<Object?> get props => [characterList];
}
