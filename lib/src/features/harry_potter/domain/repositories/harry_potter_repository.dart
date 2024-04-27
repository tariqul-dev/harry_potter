import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/character.dart';

abstract class HarryPotterRepository {
  Future<Either<Failure, List<Character>>>? getAllCharacter();
}
