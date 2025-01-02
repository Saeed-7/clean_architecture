import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget officialButton({
  required String title,
  required Function onTap,
  Color? backgroundColor,
  Color? fontColor,
}) =>
    GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.all(AppDimens.margin),
        padding: const EdgeInsets.all(AppDimens.margin),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(AppDimens.corner),
        ),
        child: regularText(title, color: fontColor ?? AppColors.lightText),
      ),
    );
