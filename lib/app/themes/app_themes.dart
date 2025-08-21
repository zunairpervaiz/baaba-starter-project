import 'package:baaba_starter_project/app/themes/app_colors.dart';
import 'package:baaba_starter_project/app/themes/app_sizes.dart';
import 'package:baaba_starter_project/app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

final class AppThemes {
  const AppThemes._();

  static final ThemeData _baseTheme = ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity);

  static final ThemeData _lightTheme = _baseTheme.copyWith(
    colorScheme: AppColors.lightColorScheme,
    scaffoldBackgroundColor: AppColors.black,
    buttonTheme: const ButtonThemeData(alignedDropdown: true),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(shape: defaultButtonShape, disabledBackgroundColor: AppColors.defaultDisabledButtonColor),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(padding: EdgeInsetsDirectional.zero, shape: defaultButtonShape),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.lightColorScheme.primary,
        shape: defaultButtonShape,
        side: defaultBorderSide,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightColorScheme.secondary,
      foregroundColor: AppColors.lightColorScheme.onSecondary,
      shape: CircleBorder(),
    ),
    cardTheme: CardThemeData(
      clipBehavior: Clip.hardEdge,
      margin: defaultHorizontalPadding,
      shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
    ),
    iconTheme: IconThemeData(applyTextScaling: true),
  );

  static final ThemeData lightTheme = _lightTheme.copyWith(textTheme: _textTheme);

  static final TextTheme _textTheme = TextTheme(
    displayLarge: AppTextStyles.large20Regular,
    displayMedium: AppTextStyles.medium16Regular,
    displaySmall: AppTextStyles.small12Regular,
    headlineLarge: AppTextStyles.large20Regular,
    headlineMedium: AppTextStyles.medium16Regular,
    headlineSmall: AppTextStyles.small12Regular,
    titleLarge: AppTextStyles.large20Regular,
    titleMedium: AppTextStyles.medium16Regular,
    titleSmall: AppTextStyles.small12Regular,
    bodyLarge: AppTextStyles.large20Regular,
    bodyMedium: AppTextStyles.medium16Regular,
    bodySmall: AppTextStyles.small12Regular,
    labelLarge: AppTextStyles.large20Regular,
    labelMedium: AppTextStyles.medium16Regular,
    labelSmall: AppTextStyles.small12Regular,
  );

  static const double defaultRadius = 12;
  static const double defaultNavbarHeight = 80;
  static double defaultAppbarHeight = AppBar().preferredSize.height;
  static final BorderRadius defaultBorderRadius = BorderRadius.circular(defaultRadius);
  static const EdgeInsetsGeometry defaultHorizontalPadding = EdgeInsetsDirectional.symmetric(horizontal: AppSizes.size16);
  static const List<BoxShadow> defaultBoxShadow = <BoxShadow>[BoxShadow(color: AppColors.black, offset: Offset(0, 5), blurRadius: 10)];
  static final OutlinedBorder defaultButtonShape = RoundedRectangleBorder(borderRadius: defaultBorderRadius);
  static final BorderSide defaultBorderSide = BorderSide(color: AppColors.lightColorScheme.primary);
}
