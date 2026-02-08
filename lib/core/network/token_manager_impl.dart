import 'package:shared_preferences/shared_preferences.dart';
import 'token_manager.dart';

final class TokenManagerImpl implements TokenManager {
  TokenManagerImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';

  String? _accessToken;
  String? _refreshToken;

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
