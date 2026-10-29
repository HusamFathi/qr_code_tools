import '../../src/home/data/datasources/local/constants_data_source.dart';
import '../../src/home/data/repositories/home_repository_impl.dart';
import '../../src/home/domain/repositories/home_repository.dart';
import '../../src/home/presentation/blocs/home/home_bloc.dart';
import 'init_di.dart' show sl;

void homeDi() {
  //!blocs

  sl.registerFactory(() => HomeBloc(getHomeConstants: sl()));

  //! repository

  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(networkInfo: sl(), constantsDataSource: sl()),
  );

  //! Datasources

  sl.registerLazySingleton<HomeConstantsDataSourceImpl>(
    () => HomeConstantsDataSourceImpl(),
  );
  //mappers
}
