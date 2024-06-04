import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/features/movies/data/models/movie_model.dart';

void main() {
  group('Movie Model Tests', () {
    test('should create Movie model from JSON', () {
      final json = {
        'id': 1,
        'title': 'The Matrix',
        'poster_path': '/matrix.jpg',
      };

      final movieFromJson = MovieModel.fromJson(json);

      expect(movieFromJson.id, 1);
      expect(movieFromJson.title, 'The Matrix');
      expect(movieFromJson.posterPath, '/matrix.jpg');
    });
  });
}
