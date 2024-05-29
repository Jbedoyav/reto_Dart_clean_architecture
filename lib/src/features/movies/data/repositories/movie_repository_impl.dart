import 'package:reto_28_05_2024/src/features/movies/data/datasources/remote/movie_api_client.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApiClient _movieApiClient;

  MovieRepositoryImpl(this._movieApiClient);

  @override
  Future<PaginationMovies> getMoviesNowPlaying() async {
    final response = await _movieApiClient.getMoviesNowPlayingApi();
    return response;
  }
}
