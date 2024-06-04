import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/pagination_movies.dart';

void main() {
  group('PaginationMovies', () {
    test('Two instances with the same properties should be equal', () {
      final paginationMovie1 = PaginationMovies(
        page: 1,
        movies: [
          Movie(
            id: 1,
            title: 'The Matrix',
            posterPath: '/matrix.jpg',
          )
        ],
        totalPages: 1,
        totalResults: 1,
      );

      final paginationMovie2 = PaginationMovies(
        page: 1,
        movies: [
          Movie(
            id: 1,
            title: 'The Matrix',
            posterPath: '/matrix.jpg',
          )
        ],
        totalPages: 1,
        totalResults: 1,
      );
      expect(paginationMovie1, equals(paginationMovie2));
    });

    test('Two instances with different properties should be different', () {
      final paginationMovie1 = PaginationMovies(
        page: 1,
        movies: [
          Movie(
            id: 1,
            title: 'The Matrix',
            posterPath: '/matrix.jpg',
          )
        ],
        totalPages: 1,
        totalResults: 1,
      );

      final paginationMovie2 = PaginationMovies(
        page: 2,
        movies: [
          Movie(
            id: 1,
            title: 'The Matrix',
            posterPath: '/matrix.jpg',
          )
        ],
        totalPages: 1,
        totalResults: 1,
      );

      expect(paginationMovie1, isNot(equals(paginationMovie2)));
    });
  });
}
