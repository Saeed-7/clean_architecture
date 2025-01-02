import 'package:clean_architecture/core/di/modules/repository_module.dart';
import 'package:clean_architecture/core/di/modules/service_module.dart';
import 'package:get/get.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class ServiceLocator {
  /// Notice:
  /// Make sure the work order is followed.
  /// 1. [ServiceModule] 2.[RepositoryModule]
  /// Because the next need their predecessors.
  static void init() {
    //Modules
    Get.put<ServiceModule>(ServiceModule(), permanent: true);
    Get.put<RepositoryModule>(RepositoryModule(), permanent: true);
  }
}
