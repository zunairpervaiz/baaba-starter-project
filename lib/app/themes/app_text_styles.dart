import 'package:baaba_starter_project/app/themes/app_colors.dart';
import 'package:baaba_starter_project/app/themes/app_sizes.dart';
import 'package:flutter/cupertino.dart';

final class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle _baseTextStyle = TextStyle(
    fontWeight: AppFontWeight.roman400,
    fontFamily: AppFontFamily.avenir,
    color: AppColors.black,
  );

  static TextStyle get small12Regular => _baseTextStyle.copyWith(fontSize: AppSizes.size12, fontWeight: AppFontWeight.roman400);

  static TextStyle get small12Medium => _baseTextStyle.copyWith(fontSize: AppSizes.size12, fontWeight: AppFontWeight.medium500);

  static TextStyle get small12SemiBold => _baseTextStyle.copyWith(fontSize: AppSizes.size12, fontWeight: AppFontWeight.heavy700);

  static TextStyle get regular14Regular => _baseTextStyle.copyWith(fontSize: AppSizes.size14, fontWeight: AppFontWeight.roman400);

  static TextStyle get regular14Medium => _baseTextStyle.copyWith(fontSize: AppSizes.size14, fontWeight: AppFontWeight.medium500);

  static TextStyle get regular14SemiBold => _baseTextStyle.copyWith(fontSize: AppSizes.size14, fontWeight: AppFontWeight.heavy700);

  static TextStyle get medium16Regular => _baseTextStyle.copyWith(fontSize: AppSizes.size16, fontWeight: AppFontWeight.roman400);

  static TextStyle get medium16Medium => _baseTextStyle.copyWith(fontSize: AppSizes.size16, fontWeight: AppFontWeight.medium500);

  static TextStyle get medium16SemiBold => _baseTextStyle.copyWith(fontSize: AppSizes.size16, fontWeight: AppFontWeight.heavy700);

  static TextStyle get large20Regular => _baseTextStyle.copyWith(fontSize: AppSizes.size20, fontWeight: AppFontWeight.roman400);

  static TextStyle get large20Medium => _baseTextStyle.copyWith(fontSize: AppSizes.size20, fontWeight: AppFontWeight.medium500);

  static TextStyle get large20SemiBold => _baseTextStyle.copyWith(fontSize: AppSizes.size20, fontWeight: AppFontWeight.heavy700);

  static TextStyle get xLarge24Regular => _baseTextStyle.copyWith(fontSize: AppSizes.size24, fontWeight: AppFontWeight.roman400);

  static TextStyle get xLarge24Medium => _baseTextStyle.copyWith(fontSize: AppSizes.size24, fontWeight: AppFontWeight.medium500);

  static TextStyle get xLarge24SemiBold => _baseTextStyle.copyWith(fontSize: AppSizes.size24, fontWeight: AppFontWeight.heavy700);
}

final class AppFontWeight {
  const AppFontWeight._();

  static const FontWeight black900 = FontWeight.w900;
  static const FontWeight heavy700 = FontWeight.w700;
  static const FontWeight medium500 = FontWeight.w500;
  static const FontWeight roman400 = FontWeight.w400;
  static const FontWeight book300 = FontWeight.w300;
  static const FontWeight light200 = FontWeight.w200;
}

final class AppFontFamily {
  const AppFontFamily._();

  static const String avenir = 'assets/fonts/avenir';
}
