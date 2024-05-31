import 'package:get_it/get_it.dart';
import 'package:reto_28_05_2024/core/utils/base_api.dart';
import 'package:reto_28_05_2024/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/features/movies/domain/repositories/movie_repository.dart';
import 'package:reto_28_05_2024/features/movies/domain/usecases/get_movies_now_use_case.dart';
import 'package:reto_28_05_2024/features/movies/presentation/controllers/movies_now_controller.dart';

final getIt = GetIt.instance;

void injectionContainer() {
  //Data layer injection container
  getIt.registerSingleton(BaseApi());
  getIt.registerFactory<MovieRepository>(() => MovieRepositoryImpl());

  //Domain layer injection container
  getIt.registerFactory<GetMoviesNowUseCase>(
      () => GetMoviesNowUseCase(MovieRepositoryImpl()));

  //Presentation layer injection container
  getIt.registerLazySingleton(() => MoviesNowController());
}
