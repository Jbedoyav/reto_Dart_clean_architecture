import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/core/utils/base_controller.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:reto_28_05_2024/features/movies/domain/usecases/get_popular_movies_use_case.dart';

class MoviesPopularController extends ChangeNotifier {
  late PaginationMoviesModel _paginationMovies;
  BaseControllerStates _state = BaseControllerStates.initial;

  BaseControllerStates get state => _state;
  PaginationMoviesModel? get paginationMovies => _paginationMovies;

  final GetPopularMoviesUseCase _getPopularMoviesUseCase =
      GetPopularMoviesUseCase(MovieRepositoryImpl());

  Future<void> getPopularMovies() async {
    _state = BaseControllerStates.loading;
    notifyListeners();

    _paginationMovies = await _getPopularMoviesUseCase.call();
    _state = BaseControllerStates.success;
    notifyListeners();
  }
}
