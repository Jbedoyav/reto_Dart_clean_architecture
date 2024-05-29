import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/movie.dart';

void main() {
  group('Movie Model', () {
    late Movie movie;

    setUp(() {
      movie = Movie(
        id: 1,
        title: 'The Matrix',
        posterPath: '/matrix.jpg',
      );
    });

    test('should create Movie model', () {
      expect(movie.id, 1);
      expect(movie.title, 'The Matrix');
      expect(movie.posterPath, '/matrix.jpg');
    });

    test('should create Movie model from JSON', () {
      final json = {
        'id': 1,
        'title': 'The Matrix',
        'poster_path': '/matrix.jpg',
      };

      final movieFromJson = Movie.fromJson(json);

      expect(movieFromJson.id, 1);
      expect(movieFromJson.title, 'The Matrix');
      expect(movieFromJson.posterPath, '/matrix.jpg');
    });
  });
}
