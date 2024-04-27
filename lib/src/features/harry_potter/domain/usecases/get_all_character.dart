import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/character.dart';
import '../repositories/harry_potter_repository.dart';

class GetAllCharacter implements UseCase<List<Character>, NoParams> {
  final HarryPotterRepository repository;

  GetAllCharacter(this.repository);

  @override
  Future<Either<Failure, List<Character>>?> call(NoParams params) async {
    return await repository.getAllCharacter();
  }
}
