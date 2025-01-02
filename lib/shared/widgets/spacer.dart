import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget spacer({
  double width = AppDimens.space,
  double height = AppDimens.space,
}) =>
    SizedBox(
      width: width,
      height: height,
    );

Widget halfSpacer() => const SizedBox(
      width: AppDimens.space / 2,
      height: AppDimens.space / 2,
    );

Widget doubleSpacer() => const SizedBox(
      width: AppDimens.space * 2,
      height: AppDimens.space * 2,
    );
