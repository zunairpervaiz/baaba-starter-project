import 'package:baaba_starter_project/domain/services/shared_preferences_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SharedPreferenceService)
final class SharedPreferenceServiceImpl implements SharedPreferenceService {
  const SharedPreferenceServiceImpl(this._sharedPreferences, this._secureStorage);
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> clearAll() async {
    await Future.wait([
      _sharedPreferences.clear(),
      _sharedPreferences.reload(),
      _secureStorage.deleteAll(aOptions: const AndroidOptions(encryptedSharedPreferences: true)),
    ]);
  }

  @override
  Future<String?> getAccessToken() async => _secureStorage.read(key: _Keys.accessToken);

  @override
  Future<String?> getRefreshToken() async => _secureStorage.read(key: _Keys.refreshToken);

  @override
  Future<void> setAccessToken(String accessToken) async {
    try {
      await _secureStorage.write(key: _Keys.accessToken, value: accessToken);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    try {
      await _secureStorage.write(key: _Keys.refreshToken, value: refreshToken);
    } catch (e) {
      throw Exception(e);
    }
  }
}

final class _Keys {
  const _Keys();

  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
}
