import 'package:clean_architecture/core/constants/enums/sort_by.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class SortByHelper {
  SortByHelper._();

  static SortBy getEnum(String value) {
    switch (value) {
      case 'relevancy':
        return SortBy.relevancy;
      case 'popularity':
        return SortBy.popularity;
      case 'publishedAt':
      default:
        return SortBy.publishedAt;
    }
  }

  static String getString(SortBy input) {
    switch (input) {
      case SortBy.relevancy:
        return 'relevancy';
      case SortBy.popularity:
        return 'popularity';
      case SortBy.publishedAt:
        return 'publishedAt';
    }
  }
}
