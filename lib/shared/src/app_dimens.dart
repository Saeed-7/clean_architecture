library;

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

class AppDimens {
  AppDimens._();

  static void init(var mediaQuery) {
    AppDimens.width = mediaQuery.size.width;
    AppDimens.height = mediaQuery.size.height;
    AppDimens.statusBarHeight = mediaQuery.padding.top;
  }

  static double width = 100;
  static double height = 100;
  static double statusBarHeight = 10;
  static double appBarDistance = appBarHeight + statusBarHeight;

  static const double appBarHeight = 60;
  static const double corner = 16;
  static const double doubleMargin = 32;
  static const double elevation = 4;
  static const double normalImageSize = 120;
  static const double largeImageSize = 200;
  static const double space = 8;
  static const double margin = 16;

  static const double bigFont = 36;
  static const double titleFont = 24;
  static const double largeFont = 16;
  static const double normalFont = 14;
  static const double regularFont = 12;
  static const double smallFont = 10;
}
