import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import 'src/features/harry_potter/data/datasources/harry_potter_remote_data_source.dart';
import 'src/features/harry_potter/data/repositories/harry_potter_repository_impl.dart';
import 'src/features/harry_potter/domain/repositories/harry_potter_repository.dart';
import 'src/features/harry_potter/domain/usecases/get_all_character.dart';
import 'src/features/harry_potter/presentation/bloc/character_bloc.dart';

final sl = GetIt.instance;

void init() {
  // bloc
  sl.registerFactory(
    () => CharacterBloc(
      getAllCharacter: sl(),
    ),
  );
  // use cases
  sl.registerLazySingleton(
    () => GetAllCharacter(
      sl(),
    ),
  );

  // repositories
  sl.registerLazySingleton<HarryPotterRepository>(
    () => HarryPotterRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );

  // data sources
  sl.registerLazySingleton<HarryPotterRemoteDataSource>(
    () => HarryPotterRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // core

  // external
  sl.registerLazySingleton(() => Client());
}
