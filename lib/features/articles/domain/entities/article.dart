library;

import 'package:clean_architecture/features/articles/domain/entities/source.dart';

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

class Article {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
}
