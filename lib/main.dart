import 'package:clean_architecture/core/di/service_locator.dart';
import 'package:clean_architecture/core/utils/env_utils.dart';
import 'package:clean_architecture/navigation/router.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() async {
  await EnvUtils.init();
  ServiceLocator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRouter.splash.name,
      getPages: AppRouter.routes,
    );
  }
}
