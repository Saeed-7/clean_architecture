import 'package:clean_architecture/core/constants/env_constants.dart';
import 'package:clean_architecture/core/constants/url_constants.dart';
import 'package:clean_architecture/core/logging/error_logging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class EnvUtils {
  static Future init() async {
    try {
      await dotenv.load(fileName: EnvConstants.fileName);
      UrlConstants.newsApiKey = dotenv.env[EnvConstants.newsApiKey] ?? '';
    } catch (exception, stackTrace) {
      ErrorLogging.logError("EnvUtils", exception, stackTrace);
    }
  }
}
