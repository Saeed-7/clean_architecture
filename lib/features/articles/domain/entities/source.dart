import 'package:clean_architecture/core/constants/enums/article_category.dart';
import 'package:clean_architecture/core/constants/enums/language.dart';
import 'package:clean_architecture/features/articles/domain/entities/country.dart';

/// Created by Saeed Fekri on 12/29/2024.
///
/// @email: en.saeedfekri@gmail.com

class Source {
  final String id, name, description, url;
  final ArticleCategory category;
  final Language language;
  Country? country;

  Source({
    this.id = '',
    this.name = '',
    this.description = '',
    this.url = '',
    this.category = ArticleCategory.general,
    this.language = Language.en,
    this.country,
  });
}
