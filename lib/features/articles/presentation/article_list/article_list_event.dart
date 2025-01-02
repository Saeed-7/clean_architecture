import 'package:clean_architecture/shared/base/base_event.dart';
export 'package:clean_architecture/shared/base/base_event.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class FetchTopHeadLinesArticles extends BaseEvent {
  final int page;
  final String sourceId;

  const FetchTopHeadLinesArticles({
    required this.page,
    required this.sourceId,
  });
}

class SearchArticles extends BaseEvent {
  final String query;

  const SearchArticles(this.query);
}
