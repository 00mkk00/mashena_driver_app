import 'package:mashena_driver_app/core/network/token_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class TokenManagerImpl implements TokenManager {
  TokenManagerImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';

  String? _accessToken;
  String? _refreshToken;

  // ======================
  // Load (🔥 مهم للـ router)
  // ======================
  Future<void> loadTokens() async {
    _accessToken = _prefs.getString(_kAccess);
    _refreshToken = _prefs.getString(_kRefresh);
  }

  // ======================
  // Getters (sync)
  // ======================
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  // ======================
  // Save
  // ======================
  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    await _prefs.setString(_kAccess, accessToken);
    if (refreshToken != null) {
      await _prefs.setString(_kRefresh, refreshToken);
    }
  }

  // ======================
  // Old async methods (اختياري)
  // ======================
  @override
  Future<String?> getAccessToken() async {
    _accessToken ??= _prefs.getString(_kAccess);
    return _accessToken;
  }

  @override
  Future<String?> getRefreshToken() async {
    _refreshToken ??= _prefs.getString(_kRefresh);
    return _refreshToken;
  }

  // ======================
  // Clear
  // ======================
  @override
  Future<void> clearTokens() async {
    _accessToken = null;
    _refreshToken = null;
    await _prefs.remove(_kAccess);
    await _prefs.remove(_kRefresh);
  }

  @override
  Future<bool> hasToken() async {
    final t = await getAccessToken();
    return t != null && t.isNotEmpty;
  }
}