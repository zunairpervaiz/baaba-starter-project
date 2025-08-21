import 'package:baaba_starter_project/app/extensions/build_context_ext.dart';
import 'package:baaba_starter_project/app/routes/pages.dart';
import 'package:baaba_starter_project/app/themes/app_themes.dart';
import 'package:baaba_starter_project/app/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.hideKeyboard,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        theme: AppThemes.lightTheme,
        themeMode: ThemeMode.light,
        initialRoute: Routes.splash,
        navigatorKey: navigatorKey,
        getPages: AppPages.pages,
      ),
    );
  }
}
