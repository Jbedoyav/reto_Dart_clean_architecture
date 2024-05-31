import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';
import 'package:equatable/equatable.dart';

class PaginationMovies with EquatableMixin {
  final Map<String, String>? dates;
  final int? page;
  final List<Movie>? movies;
  final int? totalPages;
  final int? totalResults;

  PaginationMovies({
    this.dates,
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  @override
  List<Object?> get props => [
        dates,
        page,
        movies,
        totalPages,
        totalResults,
      ];
}
