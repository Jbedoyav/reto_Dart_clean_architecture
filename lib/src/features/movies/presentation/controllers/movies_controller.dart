import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/src/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/usecases/get_movies_now_playing_use_case.dart';
import 'package:reto_28_05_2024/src/global/controller/base_controller.dart';

class MoviesController extends ChangeNotifier {
  late PaginationMovies _paginationMovies;
  BaseControllerStates _state = BaseControllerStates.initial;

  BaseControllerStates get state => _state;
  PaginationMovies? get paginationMovies => _paginationMovies;

  final GetMoviesNowPlayingUseCase _getMoviesNowPlayingUseCase =
      GetMoviesNowPlayingUseCase(MovieRepositoryImpl());

  Future<void> getMoviesNowPlaying() async {
    _state = BaseControllerStates.loading;
    notifyListeners();

    _paginationMovies = await _getMoviesNowPlayingUseCase.call();
    _state = BaseControllerStates.success;
    notifyListeners();
  }
}
