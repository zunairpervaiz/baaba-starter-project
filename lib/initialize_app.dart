import 'package:baaba_starter_project/app/app.dart';
import 'package:baaba_starter_project/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]),
    // initializeEnvironmentConfig(),
  ]);

  configureDependencies();

  runApp(App());
}
