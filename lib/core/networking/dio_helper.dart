import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  // private constructor, could not take object rom it
  DioHelper._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio?.options.receiveTimeout = timeOut;
      dio?.options.connectTimeout = timeOut;
      addInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseBody: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
}
