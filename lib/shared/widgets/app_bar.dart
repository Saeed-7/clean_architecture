import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

PreferredSizeWidget officialAppBar({String? title}) => AppBar(
      title: titleWidget(title ?? ""),
      backgroundColor: AppColors.primary,
      iconTheme: const IconThemeData(color: AppColors.white),
    );
