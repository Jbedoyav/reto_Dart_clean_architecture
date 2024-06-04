import 'package:flutter_test/flutter_test.dart';
import 'package:reto_28_05_2024/features/movies/domain/entity/movie.dart';

void main() {
  group('Movies', () {
    test('Two instances with the same properties should be equal', () {
      final movie1 = Movie(
        id: 1,
        title: 'The Matrix',
        posterPath: '/matrix.jp',
      );

      final movie2 = Movie(
        id: 1,
        title: 'The Matrix',
        posterPath: '/matrix.jpg',
      );
      expect(movie1, equals(movie2));
    });

    test('Two instances with different properties should be different', () {
      final movie1 = Movie(
        id: 1,
        title: 'The Matrix',
        posterPath: '/matrix.jpg',
      );

      final movie2 = Movie(
        id: 2,
        title: 'The Matrix 4',
        posterPath: '/matrix.jpg',
      );

      expect(movie1, isNot(equals(movie2)));
    });
  });
}
