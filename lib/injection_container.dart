import 'package:get_it/get_it.dart';
import 'package:training_tasks/features/random_joke/domain/repositories/randome_joke_repository_domain.dart';

import 'features/albums/data/datasources/albums_data_source.dart';
import 'features/albums/data/repositories/albums_repository_data.dart';
import 'features/albums/domain/repositories/albums_repository_domain.dart';
import 'features/albums/domain/usecases/get_all_data_usecase.dart' as albums;
import 'features/albums/presentation/logic/cubit/albums_cubit.dart';
import 'features/articles/data/datasources/articles_data_source.dart';
import 'features/articles/data/repositories/articles_repository_data.dart';
import 'features/articles/domain/repositories/articles_repository_domain.dart';
import 'features/articles/domain/usecases/get_all_articles_data_usecase.dart';
import 'features/articles/presentation/logic/cubit/articles_cubit.dart';
import 'features/cars/data/datasources/cars_data_source.dart';
import 'features/cars/data/repositories/cars_repository.dart' as data;
import 'features/cars/domain/repositories/cars_repository.dart';
import 'features/cars/domain/usecases/get_cars_data_usecase.dart';
import 'features/cars/presentation/logic/cubit/cars_cubit.dart';
import 'features/football/data/datasources/football_data_source.dart';
import 'features/football/data/repositories/football_repository_data.dart';
import 'features/football/domain/repositories/football_repository_domain.dart';
import 'features/football/domain/usecases/get_football_data_usecase.dart';
import 'features/football/presentation/logic/cubit/football_main_cubit.dart';
import 'features/jewelery/data/datasources/jewelery_data_source.dart';
import 'features/jewelery/data/repositories/jewelery_repository_data.dart';
import 'features/jewelery/domain/repositories/jewelery_repository_domain.dart';
import 'features/jewelery/domain/usecases/get_all_data_usecase.dart'
    as jewelery;
import 'features/jewelery/presentation/logic/cubit/jewelery_cubit.dart';
import 'features/photo/data/datasources/photo_data_source.dart';
import 'features/photo/data/repositories/photo_repository_data.dart';
import 'features/photo/domain/repositories/photo_repository_domain.dart';
import 'features/photo/domain/usecases/get_photo_data_usecase.dart';
import 'features/photo/presentation/logic/cubit/photo_cubit.dart';
import 'features/random_joke/data/datasouces/random_joke_data_source.dart';
import 'features/random_joke/data/repositories/randome_joke_repository_data.dart';
import 'features/random_joke/domain/usecases/randome_joke_usecase.dart';
import 'features/random_joke/presentation/logic/cubit/joke_cubit.dart';
import 'features/smartphones/data/datasources/smartphones_data_source.dart';
import 'features/smartphones/data/repositories/smartphones_repository_data.dart';
import 'features/smartphones/domain/repositories/smartphones_repository.dart';
import 'features/smartphones/domain/usecases/get_smartphones_data_usecase.dart';
import 'features/smartphones/presentation/logic/cubit/smartphones_cubit.dart';
import 'features/users/data/datasources/users_data_sources.dart';
import 'features/users/data/repositories/user_repository_data.dart';
import 'features/users/domain/repositories/user_repository.dart';
import 'features/users/domain/usecases/get_data_usecase.dart';
import 'features/users/presentation/logic/cubit/users_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Jokes
// Bloc
  sl.registerFactory(() => JokeCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => GetAllJokesDataUsecase(randomeJokeRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<RandomeJokeRepositoryDomain>(
      () => RandomJokeRepositoryData(jokesDataSource: sl()));
// data sources
  sl.registerLazySingleton<JokesDataSource>(
    () => JokesDataSourceImpl(),
  );
  //! Features - Users
// Bloc
  sl.registerFactory(() => UsersCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(() => GetDataUsecase(repository: sl()));
// Repository
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryData(usersDataSource: sl()));
// data sources
  sl.registerLazySingleton<UsersDataSource>(
    () => UsersDataSourceImpl(),
  );
  //! Features - Cars
// Bloc
  sl.registerFactory(() => CarsCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(() => GetCarsDataUsecase(carsRepository: sl()));
// Repository
  sl.registerLazySingleton<CarsRepository>(
      () => data.CarsRepository(carsDataSource: sl()));
// data sources
  sl.registerLazySingleton<CarsDataSource>(
    () => CarsDataSourceImpl(),
  );

  //! Features - Articles
// Bloc
  sl.registerFactory(() => ArticlesCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => GetAllArticlesDataUsecase(articlesRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<ArticlesRepositoryDomain>(
      () => ArticlesRepositoryData(articlesDataSource: sl()));
  // data sources
  sl.registerLazySingleton<ArticlesDataSource>(
    () => ArticlesDataSourceImpl(),
  );
  //! Features - Albums
// Bloc
  sl.registerFactory(() => AlbumsCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => albums.GetAllDataUsecase(albumsRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<AlbumsRepositoryDomain>(
      () => AlbumsRepositoryData(albumsDataSource: sl()));
// data sources
  sl.registerLazySingleton<AlbumsDataSource>(
    () => AlbumsDataSourceImpl(),
  );
  //! Features - Photo
// Bloc
  sl.registerFactory(() => PhotoCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => GetPhotoDataUsecase(photoRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<PhotoRepositoryDomain>(
      () => PhotoRepositoryData(photoDataSource: sl()));
// data sources
  sl.registerLazySingleton<PhotoDataSource>(
    () => PhotoDataSourceImpl(),
  );

  //! Features - footbal
// Bloc
  sl.registerFactory(() => FootballMainCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => GetFootballDataUsecase(footballRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<FootballRepositoryDomain>(
      () => FootballRepositoryData(footballDataSource: sl()));

// data sources
  sl.registerLazySingleton<FootballDataSource>(
    () => FootballDataSourceImpl(),
  );

  //! Features - jewelery
// Bloc
  sl.registerFactory(() => JeweleryCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => jewelery.GetAllDataUsecase(jeweleryRepositoryDomain: sl()));
// Repository
  sl.registerLazySingleton<JeweleryRepositoryDomain>(
      () => JeweleryRepositoryData(jeweleryDataSource: sl()));
// data sources
  sl.registerLazySingleton<JeweleryDataSource>(
    () => JeweleryDataSourceImpl(),
  );

//! Features - Smartphones
// Bloc
  sl.registerFactory(() => SmartphonesCubit(getData: sl()));
// Usecases
  sl.registerLazySingleton(
      () => GetSmartphonesDataUsecase(smartphonesRepository: sl()));
// Repository
  sl.registerLazySingleton<SmartphonesRepository>(
      () => SmartphonesRepositoryData(smartphonesDataSource: sl()));
// data sources
  sl.registerLazySingleton<SmartphonesDataSource>(
    () => SmartphonesDataSourceImpl(),
  );
}
