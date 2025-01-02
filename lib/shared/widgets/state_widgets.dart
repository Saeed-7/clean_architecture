import 'package:clean_architecture/shared/widgets/buttons.dart';

import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget loadingWidget({Color? color}) => CircularProgressIndicator(color: color ?? AppColors.primary);

Widget failedWidget({String? errorMessage, required Function tryAgain}) => _generalWidget(
      message: (errorMessage == null || errorMessage.isEmpty) ? AppTexts.failedContent : errorMessage,
    );

Widget noNetworkWidget(Function tryAgain) => _generalWidget(message: AppTexts.noInternet);

Widget emptyContentWidget({String? message}) => _generalWidget(message: message);

Widget _generalWidget({String? message, Function? onTap}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.imgEmpty, width: AppDimens.normalImageSize),
        doubleSpacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppDimens.doubleMargin),
          child: normalText(message ?? AppTexts.emptyContent),
        ),
        onTap == null ? const SizedBox() : officialButton(title: AppTexts.appName, onTap: onTap),
      ],
    );
