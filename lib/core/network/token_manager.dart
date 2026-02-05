import '../storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  static final TokenManager _instance = TokenManager._internal();
  factory TokenManager() => _instance;
  TokenManager._internal();

  String? _accessToken;
  String? _refreshToken;

  // حفظ الـ token
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    await Prefs.setString('access_token', accessToken);
    if (refreshToken != null) {
      await Prefs.setString('refresh_token', refreshToken);
    }
  }

  // استرجاع الـ token
  Future<String?> getAccessToken() async {
    if (_accessToken != null) return _accessToken;

    final prefs = await SharedPreferences.getInstance();
    _accessToken = prefs.getString('access_token');
    return _accessToken;
  }

  Future<String?> getRefreshToken() async {
    if (_refreshToken != null) return _refreshToken;

    final prefs = await SharedPreferences.getInstance();
    _refreshToken = prefs.getString('refresh_token');
    return _refreshToken;
  }

  // حذف الـ tokens
  Future<void> clearTokens() async {
    _accessToken = null;
    _refreshToken = null;

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    await prefs.remove('refresh_token');
  }

  // التحقق من وجود token
  Future<bool> hasToken() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}
