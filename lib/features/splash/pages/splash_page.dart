import 'dart:async';
import 'package:clean_architecture/navigation/router.dart';
import '../splash_presentation.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final int _duration = 3;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer(Duration(seconds: _duration), () {
      Get.offNamed(AppRouter.sourceListPage.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppDimens.init(MediaQuery.of(context));
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SizedBox(
        width: AppDimens.width,
        height: AppDimens.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: spacer()),
            appNameWidget(),
            Expanded(child: spacer()),
            loadingWidget(color: AppColors.white),
            spacer(height: AppDimens.appBarHeight),
            logoWidget(),
            authorWidget(),
            spacer(),
            appVersionWidget(),
            doubleSpacer(),
          ],
        ),
      ),
    );
  }
}
