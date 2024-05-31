import 'package:reto_28_05_2024/core/utils/base_api.dart';

class MovieApiClient extends BaseApi {
  BaseApi baseApi = BaseApi();

  Future<Map<String, dynamic>> getMoviesNowPlayingApi() async {
    final response = await baseApi.get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=870e936f35b26f8eef70dbc59f3d934f');
    return response.data;
  }
}
