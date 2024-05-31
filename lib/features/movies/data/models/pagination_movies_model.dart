import 'package:reto_28_05_2024/features/movies/data/models/movie_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/pagination_movies.dart';

class PaginationMoviesModel extends PaginationMovies {
  PaginationMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
  });

  factory PaginationMoviesModel.fromJson(Map<String, dynamic> json) =>
      PaginationMoviesModel(
        page: json['page'],
        movies: List<MovieModel>.from(
          (json['results'] as List<dynamic>).map(
            (movie) => MovieModel.fromJson(movie),
          ),
        ),
        totalPages: json['total_pages'],
        totalResults: json['total_results'],
      );
}
