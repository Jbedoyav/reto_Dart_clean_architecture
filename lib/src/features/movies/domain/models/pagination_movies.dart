import 'package:reto_28_05_2024/src/features/movies/domain/models/movie.dart';

class PaginationMovies {
  final Map<String, String> dates;
  final int page;
  final List<Movie> movies;
  final int totalPages;
  final int totalResults;

  PaginationMovies({
    required this.dates,
    required this.page,
    required this.movies,
    required this.totalPages,
    required this.totalResults,
  });

  factory PaginationMovies.fromJson(Map<String, dynamic> json) =>
      PaginationMovies(
        dates: json['dates'],
        page: json['page'],
        movies: List<Movie>.from(json['results'].map((e) => Movie.fromJson(e))),
        totalPages: json['total_pages'],
        totalResults: json['total_results'],
      );
}
