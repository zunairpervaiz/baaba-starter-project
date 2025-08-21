import 'package:baaba_api_services/api_services.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  ApiServices get apiServices => ApiServicesImplementation.instance();
}
