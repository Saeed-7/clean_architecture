import 'package:clean_architecture/features/articles/data/data_sources/article_service.dart';
import 'package:clean_architecture/core/di/module.dart';
import 'package:get/get.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ServiceModule implements Module {
  ServiceModule() {
    init();
  }

  @override
  void init() {
    Get.put<ArticleService>(ArticleService.create());
  }
}
