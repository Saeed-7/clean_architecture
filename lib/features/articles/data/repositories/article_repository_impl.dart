import 'package:clean_architecture/core/constants/helpers/article_category_helper.dart';
import 'package:clean_architecture/core/constants/helpers/language_helper.dart';
import 'package:clean_architecture/core/constants/url_constants.dart';
import 'package:clean_architecture/features/articles/data/models/source_model.dart';
import 'package:clean_architecture/features/articles/domain/entities/article.dart';
import 'package:clean_architecture/features/articles/domain/entities/source.dart';
import 'package:clean_architecture/features/articles/domain/mappers/country_mapper.dart';
import 'package:clean_architecture/features/articles/domain/repositories/article_repository.dart';
import 'package:clean_architecture/features/articles/data/models/article_model.dart';
import 'package:clean_architecture/features/articles/data/data_sources/article_service.dart';
import 'package:clean_architecture/shared/entities/result.dart';
import 'package:clean_architecture/shared/utils/api_helper.dart';

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleService _articleService;

  ArticleRepositoryImpl(this._articleService);

  @override
  Future<Result<List<Source>>> getSources() async {
    return await ApiHelper.handleApiRequest<List<Source>>(
          () => _articleService.fetchSources(apiKey: UrlConstants.newsApiKey),
          (body) {
        var sourceList = SourceModel.getList(body['sources']);
        return sourceList.map(_mapSourceModelToSource).toList();
      },
    );
  }

  @override
  Future<Result<List<Article>>> getTopHeadLinesArticles(String sourceId) async {
    return await ApiHelper.handleApiRequest<List<Article>>(
          () => _articleService.fetchTopHeadLines(apiKey: UrlConstants.newsApiKey, sources: sourceId),
          (body) {
        var articleList = ArticleModel.getList(body['articles']);
        return articleList.map(_mapArticleModelToArticle).toList();
      },
    );
  }

  @override
  Future<Result<List<Article>>> searchArticles(String query) async {
    return await ApiHelper.handleApiRequest<List<Article>>(
          () => _articleService.fetchEverything(apiKey: UrlConstants.newsApiKey, query: query),
          (body) {
        var articleList = ArticleModel.getList(body['articles']);
        return articleList.map(_mapArticleModelToArticle).toList();
      },
    );
  }

  Source _mapSourceModelToSource(SourceModel sourceModel) => Source(
    id: sourceModel.id,
    name: sourceModel.name,
    description: sourceModel.description,
    url: sourceModel.url,
    category: ArticleCategoryHelper.getEnum(sourceModel.category),
    language: LanguageHelper.getEnum(sourceModel.language),
    country: CountryMapper.mapCountry(sourceModel.country),
  );

  Article _mapArticleModelToArticle(ArticleModel articleModel) {
    final sourceObject = Source(
      id: articleModel.source.id,
      name: articleModel.source.name,
      description: articleModel.source.description,
      url: articleModel.source.url,
      category: ArticleCategoryHelper.getEnum(articleModel.source.category),
      language: LanguageHelper.getEnum(articleModel.source.language),
      country: CountryMapper.mapCountry(articleModel.source.country),
    );

    return Article(
      source: sourceObject,
      author: articleModel.author,
      title: articleModel.title,
      description: articleModel.description,
      url: articleModel.url,
      urlToImage: articleModel.urlToImage,
      publishedAt: articleModel.publishedAt,
      content: articleModel.content,
    );
  }
}
