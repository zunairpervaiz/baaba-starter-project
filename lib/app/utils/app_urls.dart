import 'package:baaba_starter_project/app/config/app_config.dart';

abstract final class AppUrls {
  AppConfig appConfig = AppConfig();

  String get baseUrl => appConfig.baseUrl;
}
