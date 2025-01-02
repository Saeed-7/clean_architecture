import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:clean_architecture/shared/widgets/all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  String _url = '';

  @override
  void initState() {
    _url = Get.arguments;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: officialAppBar(title: AppTexts.article),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(_url)),
      ),
    );
  }
}
