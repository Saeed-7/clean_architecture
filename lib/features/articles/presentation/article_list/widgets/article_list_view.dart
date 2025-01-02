import 'item_article.dart';
import '../bloc.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget articleListView(List<Article> articleList, bool hasMore) => ListView.separated(
      itemCount: articleList.length + (hasMore ? 1 : 0),
      separatorBuilder: (context, index) => spacer(height: AppDimens.doubleMargin),
      itemBuilder: (context, index) =>
          (index == articleList.length) ? Center(child: loadingWidget()) : articleItem(articleList[index]),
    );
