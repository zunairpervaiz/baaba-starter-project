import 'package:flutter/material.dart';
import 'package:get/get.dart';

final class AppDialogUtils {
  AppDialogUtils._();

  static void closeDialog() {
    if (Get.isDialogOpen ?? false) Get.back();
  }

  static Future<T?> showLoadingDialog<T>({
    String? message,
    TextStyle? messageTextStyle,
    Color? barrierColor,
    GlobalKey<NavigatorState>? navigatorKey,
    bool barrierDismissable = false,
    bool useSafeArea = true,
  }) {
    return Get.dialog<T>(
      PopScope(canPop: barrierDismissable, child: Container()),
      barrierDismissible: barrierDismissable,
      barrierColor: barrierColor,
      navigatorKey: navigatorKey,
      useSafeArea: useSafeArea,
    );
  }
}
