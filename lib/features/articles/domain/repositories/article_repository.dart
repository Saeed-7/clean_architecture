import 'package:clean_architecture/features/articles/domain/entities/article.dart';
import 'package:clean_architecture/features/articles/domain/entities/source.dart';
import 'package:clean_architecture/shared/entities/result.dart';

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

abstract class ArticleRepository {
  Future<Result<List<Source>>> getSources();

  Future<Result<List<Article>>> getTopHeadLinesArticles(String sourceId);

  Future<Result<List<Article>>> searchArticles(String query);
}
