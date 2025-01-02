import 'package:clean_architecture/core/constants/enums/search_in.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class SearchInHelper {
  SearchInHelper._();

  static SearchIn getEnum(String value) {
    switch (value) {
      case 'title':
        return SearchIn.title;
      case 'description':
        return SearchIn.description;
      case 'content':
        return SearchIn.content;
      default:
        return SearchIn.all;
    }
  }

  static String getString(SearchIn input) {
    switch (input) {
      case SearchIn.all:
        return 'all';
      case SearchIn.title:
        return 'title';
      case SearchIn.description:
        return 'description';
      case SearchIn.content:
        return 'content';
    }
  }
}
