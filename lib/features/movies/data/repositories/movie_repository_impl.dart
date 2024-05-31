import 'package:reto_28_05_2024/features/movies/data/datasources/remote/movie_api_client.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final movieApiClient = MovieApiClient();

  @override
  Future<PaginationMoviesModel> getMoviesNowPlaying() async {
    final response = await movieApiClient.getMoviesNowPlayingApi();
    return PaginationMoviesModel.fromJson(response);
  }
}
