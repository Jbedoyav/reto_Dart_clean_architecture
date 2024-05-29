import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/app.dart';
import 'package:reto_28_05_2024/src/features/movies/data/datasources/remote/movie_api_client.dart';
import 'package:reto_28_05_2024/src/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/usecases/get_movies_now_playing_use_case.dart';

void main() {
  final api = MovieApiClient();
  final repo = MovieRepositoryImpl(api);
  final useCase = GetMoviesNowPlayingUseCase(repo);
  runApp(App(getMoviesNowPlayingUseCase: useCase));
}
