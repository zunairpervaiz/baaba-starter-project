import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension BuildContextExt on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  void hideKeyboard() {
    final bottomInsets = MediaQuery.viewInsetsOf(this).bottom;
    if (bottomInsets > 0) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    }
  }

  void unfocus() {
    FocusScope.of(this).unfocus();
  }

  void showSnackbar(String message, {bool showCloseIcon = false}) {
    final scaffoldMessenger = ScaffoldMessenger.of(this)..clearSnackBars();
    final snackbar = SnackBar(content: Text(message), showCloseIcon: showCloseIcon, backgroundColor: colorScheme.secondary);
    scaffoldMessenger.showSnackBar(snackbar);
  }
}
