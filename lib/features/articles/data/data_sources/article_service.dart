import 'package:chopper/chopper.dart';
import 'package:clean_architecture/core/constants/url_constants.dart';

part 'article_service.chopper.dart';

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

@ChopperApi(baseUrl: UrlConstants.baseUrl)
abstract class ArticleService extends ChopperService {
  static ArticleService create() {
    final client = ChopperClient(
      services: [
        _$ArticleService(),
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
    );
    return _$ArticleService(client);
  }

  @Get(path: UrlConstants.sources)
  Future<Response> fetchSources({
    @Query(UrlConstants.contentTypeHeaderKey) required String apiKey,
    @Query("category") String? category,
    @Query("language") String? language,
    @Query("country") String? country,
  });

  @Get(path: UrlConstants.topHeadlines)
  Future<Response> fetchTopHeadLines({
    @Query(UrlConstants.contentTypeHeaderKey) required String apiKey,
    @Query("page") int page = 1,
    @Query("pageSize") int pageSize = UrlConstants.pageSize,
    @Query("q") String? query,
    @Query("country") String? country,
    @Query("category") String? category,
    @Query("sources") String? sources,
  });

  @Get(path: UrlConstants.everything)
  Future<Response> fetchEverything({
    @Query(UrlConstants.contentTypeHeaderKey) required String apiKey,
    @Query("page") int page = 1,
    @Query("pageSize") int pageSize = UrlConstants.pageSize,
    @Query("q") required String query,
    @Query("sortBy") String? sortBy,
    @Query("searchIn") String? searchIn,
    @Query("from") String? from,
    @Query("to") String? to,
    @Query("language") String? language,
  });
}
