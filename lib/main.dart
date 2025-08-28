import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:baaba_starter_project/app/utils/app_constants.dart';
import 'package:baaba_starter_project/initialize_app.dart';

void main() {
  String envString = const String.fromEnvironment(AppConstants.flavor);
  Env env = Env.values.firstWhere((e) => e.name == envString);

  initializeApp(env);
}
