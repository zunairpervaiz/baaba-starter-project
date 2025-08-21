import 'package:flutter/material.dart';

final class AppColors {
  const AppColors._();

  static const black = Color(0x00000000);
  static var defaultDisabledButtonColor = Color(0x00ff00ff);

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffffffff),
    onPrimary: Color(0xffffffff),
    secondary: Color(0xffffffff),
    onSecondary: Color(0xffffffff),
    error: Color(0xffffffff),
    onError: Color(0xffffffff),
    surface: Color(0xffffffff),
    onSurface: Color(0xffffffff),
  );
}
