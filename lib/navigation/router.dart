import 'package:clean_architecture/core/constants/path_constants.dart';
import 'package:clean_architecture/features/articles/presentation/article/article_page.dart';
import 'package:clean_architecture/features/articles/presentation/article_list/article_list_page.dart';
import 'package:clean_architecture/features/articles/presentation/source_list/source_list_page.dart';
import 'package:clean_architecture/features/splash/pages/splash_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class AppRouter {
  AppRouter._();

  static GetPage splash = GetPage(
    name: PathConstants.root,
    page: () => const SplashPage(),
  );

  static GetPage sourceListPage = GetPage(
    name: PathConstants.sources,
    page: () => const SourceListPage(),
  );

  static GetPage articleListPage = GetPage(
    name: PathConstants.articles,
    page: () => const ArticleListPage(),
    curve: Curves.slowMiddle,
  );

  static GetPage articlePage = GetPage(
    name: PathConstants.article,
    page: () => const ArticlePage(),
    curve: Curves.easeIn,
  );

  static final List<GetPage<dynamic>> routes = [
    splash,
    sourceListPage,
    articleListPage,
    articlePage,
  ];
}
