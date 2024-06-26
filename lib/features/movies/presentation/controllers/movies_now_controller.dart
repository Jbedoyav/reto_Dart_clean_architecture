import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/usecases/get_movies_now_use_case.dart';
import 'package:reto_28_05_2024/core/utils/base_controller.dart';

class MoviesNowController extends ChangeNotifier {
  late PaginationMoviesModel _paginationMovies;
  BaseControllerStates _state = BaseControllerStates.initial;

  BaseControllerStates get state => _state;
  PaginationMoviesModel? get paginationMovies => _paginationMovies;

  final GetMoviesNowUseCase _getMoviesNowUseCase =
      GetMoviesNowUseCase(MovieRepositoryImpl());

  Future<void> getMoviesNowPlaying() async {
    _state = BaseControllerStates.loading;
    notifyListeners();

    _paginationMovies = await _getMoviesNowUseCase.call();
    _state = BaseControllerStates.success;
    notifyListeners();
  }
}
