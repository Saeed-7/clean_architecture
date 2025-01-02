export 'package:clean_architecture/shared/base/base_state.dart';
import 'bloc.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticlesInitial extends BaseState {
  final bool hasMore;
  final List<Article> articleList;

  ArticlesInitial({required this.hasMore, required this.articleList});
}
