import 'package:clean_architecture/core/constants/url_constants.dart';
import 'package:get/get.dart';
import 'bloc.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ArticleListBloc extends Bloc<BaseEvent, BaseState> {
  late ArticleRepository _articleRepository;

  ArticleListBloc() : super(Loading()) {
    _articleRepository = Get.find<ArticleRepository>();
    on<FetchTopHeadLinesArticles>((event, emit) => _onFetchTopHeadLinesArticles(emit, event.sourceId));
    on<SearchArticles>((event, emit) => _onSearchArticles(emit, event));
  }

  _onFetchTopHeadLinesArticles(Emitter<BaseState> emit, String sourceId) async {
    emit(ListLoading());
    final result = await _articleRepository.getTopHeadLinesArticles(sourceId);
    if (isClosed) return;
    switch (result.status) {
      case ApiStatus.ok:
        emit(ArticlesInitial(articleList: result.data!, hasMore: result.data!.length == UrlConstants.pageSize));
        break;
      case ApiStatus.error:
        emit(FailureState(errorMessage: result.errorMessage));
        break;
      case ApiStatus.noNetwork:
        emit(NoNetworkState());
        break;
    }
  }

  _onSearchArticles(Emitter<BaseState> emit, SearchArticles event) async {
    emit(ListLoading());
    final result = await _articleRepository.searchArticles(event.query);
    if (isClosed) return;
    switch (result.status) {
      case ApiStatus.ok:
        emit(ArticlesInitial(articleList: result.data!, hasMore: result.data!.length == UrlConstants.pageSize));
        break;
      case ApiStatus.error:
        emit(FailureState(errorMessage: result.errorMessage));
        break;
      case ApiStatus.noNetwork:
        emit(NoNetworkState());
        break;
    }
  }
}
