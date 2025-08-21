import 'package:baaba_starter_project/app/enums/env.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final class AppConfig {
  const AppConfig._();
  static Env get environment => switch (dotenv.get('ENV')) {
    'prod' => Env.prod,
    'dev' => Env.dev,
    _ => throw UnimplementedError(),
  };

  static String get baseUrl => dotenv.get('BASE_URL');
}
