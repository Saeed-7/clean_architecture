import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

titleWidget(String title) => Text(title, style: _titleStyle());

bigTitle(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.center,
      style: _bigStyle(color: color, fontWeight: FontWeight.bold),
    );

normalTitle(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: _normalStyle(color: color, fontWeight: FontWeight.bold),
    );

largeText(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: _largeStyle(color: color),
    );

normalText(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: _normalStyle(color: color),
    );

regularText(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: _regularStyle(color: color),
    );

smallText(String title, {Color? color, TextAlign? textAlign}) => Text(
      title,
      textAlign: textAlign ?? TextAlign.start,
      style: _smallStyle(color: color),
    );

TextStyle _titleStyle() => const TextStyle(
      color: AppColors.white,
      fontSize: AppDimens.titleFont,
    );

TextStyle _bigStyle({Color? color, FontWeight? fontWeight}) => TextStyle(
      color: color ?? AppColors.text,
      fontSize: AppDimens.bigFont,
      fontWeight: fontWeight,
    );

TextStyle _largeStyle({Color? color, FontWeight? fontWeight}) => TextStyle(
      color: color ?? AppColors.text,
      fontSize: AppDimens.largeFont,
      fontWeight: fontWeight,
    );

TextStyle _normalStyle({Color? color, FontWeight? fontWeight}) => TextStyle(
      color: color ?? AppColors.text,
      fontSize: AppDimens.normalFont,
      fontWeight: fontWeight,
    );

TextStyle _regularStyle({Color? color}) => TextStyle(
      color: color ?? AppColors.text,
      fontSize: AppDimens.regularFont,
    );

TextStyle _smallStyle({Color? color}) => TextStyle(
      color: color ?? AppColors.text,
      fontSize: AppDimens.smallFont,
    );
