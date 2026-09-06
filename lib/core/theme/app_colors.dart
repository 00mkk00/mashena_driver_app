import 'dart:ui';

class AppColors {
  const AppColors._();

  // ── Brand ──────────────────────────────────────────────────────────────────
  static const Color primaryColor = Color(0xFF3422F2);
  static const Color primaryLight = Color(0xFF6C5EF5);
  static const Color primaryDark = Color(0xFF1E0FD4);
  static const Color primarySurface = Color(
    0xFFECEAFD,
  ); // light tint for badges

  // ── Neutrals ───────────────────────────────────────────────────────────────
  static const Color borderColor = Color(0xFFD1D1D1);
  static const Color borderColorDark = Color(0xFF2C2C2E);
  static const Color textGrey = Color(0xFF93969F);
  static const Color textGreyDark = Color(0xFFA5A5A5);
  static const Color textfieldHintGrey = Color(0xFFA5A5A5);

  // ── Scaffolds ──────────────────────────────────────────────────────────────
  static const Color lightScaffold = Color(0xFFF8F8FF);
  static const Color darkScaffold = Color(0xFF0F1115);

  // ── Surface / Card ─────────────────────────────────────────────────────────
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color surfaceVariantDark = Color(0xFF1C1C1E);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF1C1C1E);

  // ── On-surface text ────────────────────────────────────────────────────────
  static const Color onSurface = Color(0xFF212121);
  static const Color onSurfaceDark = Color(0xFFF2F2F7);
  static const Color onSurfaceVariant = Color(0xFF757575);
  static const Color onSurfaceVariantDark = Color(0xFFA0A0A5);

  // ── Divider ────────────────────────────────────────────────────────────────
  static const Color divider = Color(0xFFE0E0E0);
  static const Color dividerDark = Color(0xFF2C2C2E);

  // ── Status — Online ────────────────────────────────────────────────────────
  static const Color online = Color(0xFF00C853);
  static const Color onlineDark = Color(0xFF009624);
  static const Color onlineLight = Color(0xFF5EFC82);
  static const Color onlineSurface = Color(0xFFE8F5E9);

  // ── Status — Offline ───────────────────────────────────────────────────────
  static const Color offline = Color(0xFF757575);
  static const Color offlineSurface = Color(0xFFF5F5F5);

  // ── Status — Warning ───────────────────────────────────────────────────────
  static const Color warning = Color(0xFFFFB300);
  static const Color warningDark = Color(0xFFF57F17);
  static const Color warningSurface = Color(0xFFFFF8E1);

  // ── Status — Danger ────────────────────────────────────────────────────────
  static const Color danger = Color(0xFFE53935);
  static const Color dangerDark = Color(0xFFB71C1C);
  static const Color dangerSurface = Color(0xFFFFEBEE);

  // ── Status — Info ──────────────────────────────────────────────────────────
  static const Color info = Color(0xFF1565C0);
  static const Color infoDark = Color(0xFF0D47A1);
  static const Color infoSurface = Color(0xFFE3F2FD);

  // ── Status — Success ───────────────────────────────────────────────────────
  static const Color success = Color(0xFF2E7D32);
  static const Color successLight = Color(0xFF4CAF50);
  static const Color successSurface = Color(0xFFE8F5E9);

  // ── SOS ────────────────────────────────────────────────────────────────────
  static const Color sos = Color(0xFFD32F2F);
  static const Color sosSurface = Color(0xFFFFCDD2);

  // ── Earnings / Accent ──────────────────────────────────────────────────────
  static const Color earning = Color(0xFF00897B);
  static const Color earningSurface = Color(0xFFE0F2F1);

  // ── Map overlay ────────────────────────────────────────────────────────────
  static const Color mapMarker = Color(0xFF3422F2);
}
