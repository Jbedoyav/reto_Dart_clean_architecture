import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';

abstract class MovieRepository {
  Future<PaginationMoviesModel> getMoviesNowPlaying();
}
