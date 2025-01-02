// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ArticleService extends ArticleService {
  _$ArticleService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ArticleService;

  @override
  Future<Response<dynamic>> fetchSources({
    required String apiKey,
    String? category,
    String? language,
    String? country,
  }) {
    final Uri $url = Uri.parse('https://newsapi.org/v2/top-headlines/sources');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'category': category,
      'language': language,
      'country': country,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchTopHeadLines({
    required String apiKey,
    int page = 1,
    int pageSize = UrlConstants.pageSize,
    String? query,
    String? country,
    String? category,
    String? sources,
  }) {
    final Uri $url = Uri.parse('https://newsapi.org/v2/top-headlines');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'page': page,
      'pageSize': pageSize,
      'q': query,
      'country': country,
      'category': category,
      'sources': sources,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> fetchEverything({
    required String apiKey,
    int page = 1,
    int pageSize = UrlConstants.pageSize,
    required String query,
    String? sortBy,
    String? searchIn,
    String? from,
    String? to,
    String? language,
  }) {
    final Uri $url = Uri.parse('https://newsapi.org/v2/everything');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'page': page,
      'pageSize': pageSize,
      'q': query,
      'sortBy': sortBy,
      'searchIn': searchIn,
      'from': from,
      'to': to,
      'language': language,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
