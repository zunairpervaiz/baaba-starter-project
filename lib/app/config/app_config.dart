import 'package:envied/envied.dart';

part 'app_config.g.dart';

@Envied(path: 'assets/env/.env.dev', name: "DevEnv")
@Envied(path: 'assets/env/.env.prod', name: "ProductionEnv")
final class AppConfig {
  static const bool isDevMode = true;
  factory AppConfig() => _instance;

  static final AppConfig _instance = switch (isDevMode) {
    true => _DevEnv(),
    false => _ProductionEnv(),
  };
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _instance.baseUrl;
}
