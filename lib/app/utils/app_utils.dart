import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

final class AppUtils {
  const AppUtils._();

  static void showCustomSnackbar(String message, {bool isError = false, Duration duration = const Duration(seconds: 3)}) {}

  static void closeApp() {
    if (defaultTargetPlatform case TargetPlatform.android) {
      SystemNavigator.pop();
    } else if (defaultTargetPlatform case TargetPlatform.iOS) {
      exit(0);
    }
  }
}
