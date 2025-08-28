import 'package:envied/envied.dart';

part 'app_config.g.dart';

@Envied(path: 'assets/env/.env.dev', name: "DebugEnv")
@Envied(path: 'assets/env/.env.prod', name: "ProductionEnv")
final class AppConfig {
  static const bool kDebugMode = true;
  factory AppConfig() => _instance;

  static final AppConfig _instance = switch (kDebugMode) {
    true => _DebugEnv(),
    false => _ProductionEnv(),
  };
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _instance.baseUrl;
}
