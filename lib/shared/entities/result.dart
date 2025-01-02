import 'package:clean_architecture/core/constants/enums/api_status.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class Result<T> {
  final T? data;
  final String? errorMessage;

  final ApiStatus status;

  Result.success(this.data)
      : status = ApiStatus.ok,
        errorMessage = null;

  Result.failure({this.errorMessage = ''})
      : status = ApiStatus.error,
        data = null;

  Result.noNetwork()
      : status = ApiStatus.noNetwork,
        errorMessage = '',
        data = null;
}
