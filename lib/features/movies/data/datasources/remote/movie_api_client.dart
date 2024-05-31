import 'package:dio/dio.dart';
import 'package:reto_28_05_2024/core/exceptions/custom_exception.dart';
import 'package:reto_28_05_2024/core/utils/base_api.dart';

class MovieApiClient extends BaseApi {
  BaseApi baseApi = BaseApi();

  Future<Map<String, dynamic>> getMoviesApi(String params) async {
    try {
      final response = await baseApi.get(
          'https://api.themoviedb.org/3/movie/$params?api_key=870e936f35b26f8eef70dbc59f3d934f');
      return response.data;
    } on DioException catch (e) {
      throw CustomException(
          messageUser: 'Error de conexión',
          internalErrorCode: '1',
          internalErrorMessage: 'Error de conexión',
          stackTrace: e.stackTrace,
          data: e.response?.data,
          httpErrorCode: e.response?.statusCode);
    }
  }
}
