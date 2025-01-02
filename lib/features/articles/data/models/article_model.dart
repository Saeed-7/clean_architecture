library;

import 'package:clean_architecture/features/articles/data/models/source_model.dart';

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticleModel {
  final SourceModel source;
  final String author, title, description, url, urlToImage, publishedAt, content;

  ArticleModel._({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  // Factory for JSON Parsing
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel._(
      source: SourceModel.fromJson(json['source'] ?? {}),
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }

  /// Get List of [ArticleModel] By JsonList
  static List<ArticleModel> getList(List jsonList) {
    List<ArticleModel> output = [];
    for (var element in jsonList) {
      output.add(ArticleModel.fromJson(element));
    }
    return output;
  }
}
