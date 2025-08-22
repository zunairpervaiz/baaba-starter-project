import 'package:baaba_starter_project/app/app.dart';
import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:baaba_starter_project/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void initializeApp(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Future<void> initializeEnvironmentConfig() async {
  //   final filename = switch (env) {
  //     Env.dev => Assets.env.aEnvDev,
  //     Env.prod => Assets.env.aEnvProd,
  //   };
  //   await dotenv.load(fileName: filename);
  // }

  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]),
    // initializeEnvironmentConfig(),
  ]);

  configureDependencies();

  runApp(App());
}
