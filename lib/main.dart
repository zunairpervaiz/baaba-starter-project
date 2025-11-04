import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:baaba_starter_project/app/utils/app_constants.dart';
import 'package:baaba_starter_project/initialize_app.dart';

void main() {
  const envString = String.fromEnvironment(AppConstants.flavor);
  final env = Env.values.firstWhere((e) => e.name == envString);

  initializeApp(env);
}
