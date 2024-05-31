import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/pagination_movies.dart';

void main() {
  group('PaginationMovies', () {
    test('Two instances with the same properties should be equal', () {
      final PaginationMovie1 = PaginationMovies(
        page: 1,
        dates: {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00.000Z',
        },
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

      final PaginationMovie2 = PaginationMovies(
        page: 1,
        dates: {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00.000Z',
        },
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
      expect(PaginationMovie1, equals(PaginationMovie2));
    });

    test('Two instances with different properties should be different', () {
      final PaginationMovie1 = PaginationMovies(
        page: 1,
        dates: {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00.000Z',
        },
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

      final PaginationMovie2 = PaginationMovies(
        page: 2,
        dates: {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00',
        },
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

      expect(PaginationMovie1, isNot(equals(PaginationMovie2)));
    });
  });
}
