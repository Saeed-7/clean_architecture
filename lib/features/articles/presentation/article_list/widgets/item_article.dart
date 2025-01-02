import 'package:clean_architecture/navigation/router.dart';
import 'package:clean_architecture/shared/utils/app_date_utils.dart';
import 'package:clean_architecture/shared/widgets/images.dart';
import 'package:get/get.dart';
import '../bloc.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget articleItem(Article article) => GestureDetector(
  onTap: () => Get.toNamed(AppRouter.articlePage.name, arguments: article.url),
  child: SizedBox(
    width: AppDimens.width,
    child: Column(
      children: [
        SizedBox(
          width: AppDimens.width,
          height: AppDimens.width,
          child: cacheImage(article.urlToImage),
        ),
        _infoWidget(article),
      ],
    ),
  ),
);

_infoWidget(Article article) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: AppDimens.margin),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      regularText(article.author, color: AppColors.description),
      regularText(AppDateUtils.articleDate(article.publishedAt), color: AppColors.description),
      spacer(),
      normalTitle(article.title),
      normalText(article.description, color: AppColors.description),
    ],
  ),
);
