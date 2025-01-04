import 'package:chopper/chopper.dart';
import 'package:clean_architecture/core/logging/error_logging.dart';
import 'package:clean_architecture/core/utils/network_utils.dart';
import 'package:clean_architecture/shared/entities/result.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ApiHelper {
  static Future<Result<T>> handleApiRequest<T>(
    Future<Response> Function() apiCall,
    T Function(dynamic) parseResponse,
  ) async {
    bool hasNet = await hasNetwork();
    if (!hasNet) {
      return Result.noNetwork();
    } else {
      try {
        final response = await apiCall();
        if (response.isSuccessful) {
          final parsedData = parseResponse(response.body);
          return Result.success(parsedData);
        } else {
          var errorMap = response.error as Map;
          return Result.failure(errorMessage: errorMap['message']);
        }
      } catch (error, stackTrace) {
        ErrorLogging.logError('ApiHelper---> ${apiCall.toString()}', error, stackTrace);
        return Result.failure();
      }
    }
  }
}
