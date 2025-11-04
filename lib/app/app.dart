import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:baaba_starter_project/app/extensions/build_context_ext.dart';
import 'package:baaba_starter_project/app/routes/pages.dart';
import 'package:baaba_starter_project/app/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App(this.env, {super.key});
  final Env env;

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.hideKeyboard,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        themeMode: ThemeMode.light,
        initialRoute: Routes.splash,
        navigatorKey: navigatorKey,
        getPages: AppPages.pages,
        builder: (context, child) {
          final app = env == Env.prod
              ? child!
              : Banner(
                  message: env.name.toUpperCase(),
                  location: BannerLocation.topEnd,
                  color: Colors.red,
                  textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  child: child,
                );
          return app;
        },
      ),
    );
  }
}
