import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';

void main() {
  group('Pagination Movies Model', () {
    test('should create Pagination Movies model from JSON', () {
      final json = {
        'dates': {
          'maximum': '2022-05-01T00:00:00.000Z',
          'minimum': '2022-05-01T00:00:00.000Z',
        },
        'page': 1,
        'results': [
          {
            'id': 1,
            'title': 'The Matrix',
            'poster_path': '/matrix.jpg',
          }
        ],
        'total_pages': 1,
        'total_results': 1,
      };

      final movieFromJson = PaginationMoviesModel.fromJson(json);
      expect(movieFromJson.dates?['maximum'], '2022-05-01T00:00:00.000Z');
      expect(movieFromJson.dates?['minimum'], '2022-05-01T00:00:00.000Z');
      expect(movieFromJson.page, 1);
      expect(movieFromJson.movies?.length, 1);
      expect(movieFromJson.totalPages, 1);
      expect(movieFromJson.totalResults, 1);
    });
  });
}
