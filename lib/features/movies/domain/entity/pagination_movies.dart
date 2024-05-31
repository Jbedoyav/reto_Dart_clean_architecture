import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';
import 'package:equatable/equatable.dart';

class PaginationMovies with EquatableMixin {
  final int? page;
  final List<Movie>? movies;
  final int? totalPages;
  final int? totalResults;

  PaginationMovies({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  @override
  List<Object?> get props => [
        page,
        movies,
        totalPages,
        totalResults,
      ];
}
