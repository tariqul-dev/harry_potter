import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/character.dart';
import '../../domain/repositories/harry_potter_repository.dart';
import '../datasources/harry_potter_remote_data_source.dart';

class HarryPotterRepositoryImpl implements HarryPotterRepository {
  final HarryPotterRemoteDataSource remoteDataSource;

  HarryPotterRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Character>>>? getAllCharacter() async {
    try {
      final response = await remoteDataSource.getAllCharacter();

      if (response == null) {
        throw ServerException(message: "Something went wrong");
      }
      return right(response);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }
}
