import 'package:clean_architecture/core/constants/url_constants.dart';

import 'package:get/get.dart';

import 'bloc.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  ArticleListBloc? _articleListBloc;
  Source? _source;

  @override
  void initState() {
    _articleListBloc = ArticleListBloc();
    _argumentsHandler();
    super.initState();
  }

  _argumentsHandler() {
    final object = Get.arguments;
    if (object != null && object is Source) {
      _source = object;
    } else {
      Get.back();
    }
  }

  _tryAgainFetching() =>
      _articleListBloc!.add(FetchTopHeadLinesArticles(page: _getNextPageNumber(0), sourceId: _source!.id));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _articleListBloc!..add(FetchTopHeadLinesArticles(page: 1, sourceId: _source!.id)),
      child: Scaffold(
        appBar: officialAppBar(title: _source!.name.isEmpty ? AppTexts.articles : _source!.name),
        body: BlocBuilder<ArticleListBloc, BaseState>(
          builder: (context, state) {
            if (state is ListLoading) {
              return Center(child: loadingWidget());
            } else if (state is FailureState) {
              return Center(child: failedWidget(errorMessage: state.errorMessage, tryAgain: _tryAgainFetching));
            } else if (state is NoNetworkState) {
              return Center(child: noNetworkWidget(_tryAgainFetching));
            } else if (state is ArticlesInitial && state.articleList.isEmpty) {
              return Center(child: emptyContentWidget());
            } else if (state is ArticlesInitial) {
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) => _onNotification(
                  scrollNotification,
                  hasMore: state.hasMore,
                  listLength: state.articleList.length,
                ),
                child: articleListView(state.articleList, state.hasMore),
              );
            } else {
              return const Center(child: Text("No Data"));
            }
          },
        ),
      ),
    );
  }

  int _getNextPageNumber(int length) => length ~/ UrlConstants.pageSize + 1;

  bool _onNotification(
    scrollNotification, {
    bool hasMore = false,
    int listLength = 0,
  }) {
    if (scrollNotification.metrics.pixels == scrollNotification.metrics.maxScrollExtent && hasMore) {
      context.read<ArticleListBloc>().add(FetchTopHeadLinesArticles(
            page: _getNextPageNumber(listLength),
            sourceId: _source!.id,
          ));
    }
    return false;
  }
}
