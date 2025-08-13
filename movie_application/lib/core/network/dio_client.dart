import 'package:dio/dio.dart';
import 'package:movie_application/core/config/api_config.dart';
import 'package:movie_application/core/error/exception.dart';

class DioClient {
  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 20),
        queryParameters: {'api_key': ApiConfig.tmdbApiKey},
        headers: <String, dynamic>{'Accept': 'application/json'},
      ),
    );
  }

  late final Dio _dio;

  Dio get dio => _dio;

  Never throwAsServerException(DioException error) {
    final int? status = error.response?.statusCode;
    final String message = error.response?.data is Map<String, dynamic>
        ? (error.response?.data['status message']?.toString() ??
              error.message ??
              'Unknown server error')
        : (error.message ?? 'Unknown error occurred');
    throw ServerException(message: message, statusCode: status);
  }
}
