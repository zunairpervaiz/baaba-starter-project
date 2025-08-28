import 'package:baaba_starter_project/app/app.dart';
import 'package:baaba_starter_project/app/config/app_config.dart';
import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:baaba_starter_project/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void initializeApp(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]),
  ]);
  AppConfig.init(env);

  configureDependencies();

  runApp(App(env));
}
