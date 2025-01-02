import 'package:clean_architecture/navigation/router.dart';
import 'package:get/get.dart';
import '../bloc.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget sourceItem(Source source) => GestureDetector(
      onTap: () => Get.toNamed(AppRouter.articleListPage.name, arguments: source),
      child: Card(
        elevation: AppDimens.elevation,
        color: AppColors.lightBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.corner)),
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.margin),
          child: Center(
            child: normalText(source.name, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
