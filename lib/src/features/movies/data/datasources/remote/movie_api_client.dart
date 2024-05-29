import 'package:dio/dio.dart';
import 'package:reto_28_05_2024/src/features/movies/domain/models/pagination_movies.dart';

class MovieApiClient {
  final Dio dio = Dio();
  Future<PaginationMovies> getMoviesNowPlayingApi() async {
    final response = await dio.get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=870e936f35b26f8eef70dbc59f3d934f');
    return response.data;
  }
}
