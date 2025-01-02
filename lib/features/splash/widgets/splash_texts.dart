import '../splash_presentation.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget appNameWidget() => bigTitle(AppTexts.appName, color: AppColors.white);

Widget appVersionWidget() => smallText(AppTexts.appVersion, color: AppColors.lightText);

Widget authorWidget() => SizedBox(
      width: AppDimens.normalImageSize,
      child: smallText(AppTexts.author, color: AppColors.accent, textAlign: TextAlign.end),
    );
