import 'bloc.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class SourceListPage extends StatefulWidget {
  const SourceListPage({super.key});

  @override
  State<SourceListPage> createState() => _SourceListPageState();
}

class _SourceListPageState extends State<SourceListPage> {
  late SourceListBloc _sourceListBloc;

  @override
  void initState() {
    _sourceListBloc = SourceListBloc();
    super.initState();
  }

  _tryAgainFetching() => _sourceListBloc.add(FetchSources());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _sourceListBloc..add(FetchSources()),
      child: Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: officialAppBar(title: AppTexts.sources),
        body: BlocBuilder<SourceListBloc, BaseState>(
          builder: (context, state) {
            if (state is Loading) {
              return Center(child: loadingWidget());
            } else if (state is FailureState) {
              return Center(child: failedWidget(errorMessage: state.errorMessage, tryAgain: _tryAgainFetching));
            } else if (state is NoNetworkState) {
              return Center(child: noNetworkWidget(_tryAgainFetching));
            } else if (state is SourcesInitial && state.sourceList.isEmpty) {
              return Center(child: emptyContentWidget());
            } else if (state is SourcesInitial) {
              return sourceGridView(state.sourceList);
            } else {
              return Center(child: emptyContentWidget());
            }
          },
        ),
      ),
    );
  }
}
