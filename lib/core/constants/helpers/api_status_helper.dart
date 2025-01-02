import 'package:clean_architecture/core/constants/enums/api_status.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ApiStatusHelper {
  ApiStatusHelper._();

  static ApiStatus getEnum(String value) {
    switch (value) {
      case 'ok':
        return ApiStatus.ok;
      case 'error':
        return ApiStatus.error;
      case 'noNetwork':
        return ApiStatus.noNetwork;
      default:
        return ApiStatus.error;
    }
  }

  static String getString(ApiStatus input) {
    switch (input) {
      case ApiStatus.ok:
        return 'ok';
      case ApiStatus.error:
        return 'error';
      case ApiStatus.noNetwork:
        return 'noNetwork';
    }
  }
}
