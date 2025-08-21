import 'package:baaba_starter_project/domain/services/shared_preferences_services.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SharedPreferenceService)
final class SharedPreferenceServiceImpl implements SharedPreferenceService {
  const SharedPreferenceServiceImpl(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;

  @override
  Future<void> clearAll() async {
    await _sharedPreferences.clear();
    await _sharedPreferences.reload();
  }
}
