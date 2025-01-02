import 'package:get/get.dart';
import 'bloc.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class SourceListBloc extends Bloc<BaseEvent, BaseState> {
  late ArticleRepository _articleRepository;

  SourceListBloc() : super(Loading()) {
    _articleRepository = Get.find<ArticleRepository>();
    on<FetchSources>((event, emit) => _onFetchSources(emit));
  }

  _onFetchSources(Emitter<BaseState> emit) async {
    emit(Loading());
    final result = await _articleRepository.getSources();
    if (isClosed) return;
    switch (result.status) {
      case ApiStatus.ok:
        emit(SourcesInitial(result.data!));
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
