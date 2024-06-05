import 'package:dio/dio.dart';
import 'package:reto_28_05_2024/config/environments/config_env.dart';
import 'package:reto_28_05_2024/core/exceptions/custom_exception.dart';
import 'package:reto_28_05_2024/core/utils/base_api.dart';

class MovieApiClient extends BaseApi {
  BaseApi baseApi = BaseApi();

  Future<Map<String, dynamic>> getMoviesApi() async {
    try {
      final response = await baseApi.get(EnvInfo.brandService);
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
