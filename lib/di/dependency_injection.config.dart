// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:baaba_api_services/api_services.dart' as _i26;
import 'package:baaba_starter_project/app/services/connectivity_service.dart'
    as _i469;
import 'package:baaba_starter_project/data/remote/network_provider.dart'
    as _i233;
import 'package:baaba_starter_project/data/remote/network_provider_impl.dart'
    as _i1022;
import 'package:baaba_starter_project/data/services/api_service.dart' as _i315;
import 'package:baaba_starter_project/di/app_module.dart' as _i796;
import 'package:baaba_starter_project/domain/services/shared_preferences_services.dart'
    as _i937;
import 'package:baaba_starter_project/domain/services/shared_preferences_services_impl.dart'
    as _i726;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.singletonAsync<_i469.ConnectivityService>(
      () => _i469.ConnectivityService().init(),
      preResolve: true,
      dispose: (i) => i.dispose(),
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i26.ApiServices>(() => appModule.apiServices);
    gh.singleton<_i937.SharedPreferenceService>(
      () => _i726.SharedPreferenceServiceImpl(
        gh<_i460.SharedPreferences>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.singleton<_i315.ApiService>(
      () => _i315.ApiService(gh<_i26.ApiServices>()),
    );
    gh.singleton<_i233.NetworkProvider>(
      () => _i1022.NetworkProviderImpl(gh<_i315.ApiService>()),
    );
    return this;
  }
}

class _$AppModule extends _i796.AppModule {}
