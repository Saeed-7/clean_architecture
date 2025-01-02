import 'package:clean_architecture/core/constants/helpers/date_helper.dart';
import 'package:clean_architecture/core/logging/error_logging.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

class AppDateUtils {
  static String articleDate(String date) {
    try {
      DateTime dateTime = DateTime.parse(date);
      return '${DateHelper.weekName(dateTime.weekday)} '
          '${dateTime.day} '
          '${DateHelper.monthName(dateTime.month)} '
          '${dateTime.year}';
    } catch (exception, stackTrace) {
      ErrorLogging.logError('DateUtils', exception, stackTrace);
      return '';
    }
  }
}
