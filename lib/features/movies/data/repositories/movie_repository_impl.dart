import 'package:reto_28_05_2024/features/movies/data/datasources/remote/movie_api_client.dart';
import 'package:reto_28_05_2024/features/movies/data/models/pagination_movies_model.dart';
import 'package:reto_28_05_2024/features/movies/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final movieApiClient = MovieApiClient();

  @override
  Future<PaginationMoviesModel> getMoviesNow() async {
    final response = await movieApiClient.getMoviesApi('now_playing');
    return PaginationMoviesModel.fromJson(response);
  }

  @override
  Future<PaginationMoviesModel> getPopularMovies() async {
    final response = await movieApiClient.getMoviesApi('popular');
    return PaginationMoviesModel.fromJson(response);
  }
}
