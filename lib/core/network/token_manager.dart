abstract class TokenManager {
  // ======================
  // Sync (🔥 مهم للـ Router)
  // ======================
  String? get accessToken;
  String? get refreshToken;

  // ======================
  // Async (Storage)
  // ======================
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
  });

  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();

  Future<void> clearTokens();
  Future<bool> hasToken();

  // ======================
  // Load from storage
  // ======================
  Future<void> loadTokens();
}