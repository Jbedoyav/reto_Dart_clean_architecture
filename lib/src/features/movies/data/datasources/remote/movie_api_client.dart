import 'package:dio/dio.dart';

class MovieApiClient {
  final Dio dio = Dio();
  Future<Map<String, dynamic>> getMoviesNowPlayingApi() async {
    final response = await dio.get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=870e936f35b26f8eef70dbc59f3d934f');
    return response.data;
  }
}
