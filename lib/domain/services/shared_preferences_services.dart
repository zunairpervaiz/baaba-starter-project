abstract interface class SharedPreferenceService {
  Future<void> clearAll();
  Future<void> getAccessToken();
  Future<void> getRefreshToken();
  Future<void> setAccessToken(String accessToken);
  Future<void> setRefreshToken(String refreshToken);
}
