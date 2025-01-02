import 'package:flutter/foundation.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ErrorLogging {
  static logError(String parentClass, Object exception, StackTrace stackTrace) {
    if (!kReleaseMode) {
      debugPrint("============Error - $parentClass: \n$exception\n$stackTrace");
    }
  }
}
