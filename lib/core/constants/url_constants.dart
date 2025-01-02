library;

/// Created by Saeed Fekri on 12/28/2024.
///
/// @email: en.saeedfekri@gmail.com

class UrlConstants {
  static const String contentTypeHeaderKey = "apiKey";
  static String newsApiKey = "";

  static const String baseUrl = "https://newsapi.org/v2/";
  static const int pageSize = 20;

  static const String sortByRelevancy = "relevancy";
  static const String sortByPopularity = "popularity";
  static const String sortByPublishedAt = "publishedAt";

  static const String topHeadlines = "top-headlines";
  static const String everything = "everything";
  static const String sources = "$topHeadlines/sources";
}
