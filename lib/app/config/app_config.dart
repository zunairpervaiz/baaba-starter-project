import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:envied/envied.dart';

part 'app_config.g.dart';

@Envied(path: 'assets/env/.env.dev', name: "DevEnv")
@Envied(path: 'assets/env/.env.prod', name: "ProductionEnv")
final class AppConfig {
  static AppConfig? _instance;
  factory AppConfig() {
    if (_instance == null) {
      throw StateError("AppConfig must be initialized with AppConfig.init()");
    }
    return _instance!;
  }

  static void init(Env env) {
    _instance = switch (env) {
      Env.dev => _DevEnv(),
      Env.prod => _ProductionEnv(),
    };
  }

  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _instance?.baseUrl ?? "URL_NOT_FOUND";
}
