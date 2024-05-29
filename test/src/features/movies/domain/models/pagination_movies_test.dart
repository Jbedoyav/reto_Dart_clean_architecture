import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/movie.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';

void main() {
  group('Pagination Movies Model', () {
    late PaginationMovies paginationMovies;

    setUp(() {
      paginationMovies = PaginationMovies(
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
    });

    test('should create Pagination Movies model', () {
      print(paginationMovies.movies[0].title);
      expect(paginationMovies.page, 1);
      expect(paginationMovies.dates['maximum'], '2022-05-01T00:00:00.000Z');
      expect(paginationMovies.dates['minimum'], '2022-05-01T00:00:00.000Z');
      expect(paginationMovies.movies.length, 1);
      expect(paginationMovies.totalPages, 1);
      expect(paginationMovies.totalResults, 1);
    });

    test('should create Pagination Movies model from JSON', () {
      final json = {
        'page': 1,
        'dates': {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00.000Z',
        },
        'movies': [
          {
            'id': 1,
            'title': 'The Matrix',
            'poster_path': '/matrix.jpg',
          }
        ],
        'total_pages': 1,
        'total_results': 1,
      };

      final movieFromJson = PaginationMovies.fromJson(json);
      expect(movieFromJson.page, 1);
      expect(movieFromJson.dates['maximum'], '2022-05-01T00:00:00.000Z');
      expect(movieFromJson.dates['minimum'], '2022-05-01T00:00:00.000Z');
      expect(movieFromJson.movies.length, 1);
      expect(movieFromJson.totalPages, 1);
      expect(movieFromJson.totalResults, 1);
    });
  });
}
