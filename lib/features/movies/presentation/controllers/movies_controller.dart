import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/usecases/get_movies_now_playing_use_case.dart';
import 'package:reto_28_05_2024/core/utils/base_controller.dart';

class MoviesController extends ChangeNotifier {
  late PaginationMoviesModel _paginationMovies;
  BaseControllerStates _state = BaseControllerStates.initial;

  BaseControllerStates get state => _state;
  PaginationMoviesModel? get paginationMovies => _paginationMovies;

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
