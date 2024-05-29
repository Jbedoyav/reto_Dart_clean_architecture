import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';

abstract class MovieRepository {
  Future<PaginationMovies> getMoviesNowPlaying();
}
