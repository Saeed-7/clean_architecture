import 'package:clean_architecture/core/constants/enums/article_category.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticleCategoryHelper {
  ArticleCategoryHelper._();

  static ArticleCategory getEnum(String value) {
    switch (value) {
      case 'business':
        return ArticleCategory.business;
      case 'entertainment':
        return ArticleCategory.entertainment;
      case 'health':
        return ArticleCategory.health;
      case 'science':
        return ArticleCategory.science;
      case 'sports':
        return ArticleCategory.sports;
      case 'technology':
        return ArticleCategory.technology;
      case 'general':
      default:
        return ArticleCategory.general;
    }
  }

  static String getString(ArticleCategory input) {
    switch (input) {
      case ArticleCategory.business:
        return 'business';
      case ArticleCategory.entertainment:
        return 'entertainment';
      case ArticleCategory.health:
        return 'health';
      case ArticleCategory.science:
        return 'science';
      case ArticleCategory.sports:
        return 'sports';
      case ArticleCategory.technology:
        return 'technology';
      case ArticleCategory.general:
        return 'general';
    }
  }
}
