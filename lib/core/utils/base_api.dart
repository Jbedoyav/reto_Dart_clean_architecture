import 'package:dio/io.dart';
import 'package:reto_28_05_2024/core/utils/base_interceptors.dart';

class BaseApi extends DioForNative {
  BaseApi() {
    interceptors.add(BaseInterceptors());
  }
}
