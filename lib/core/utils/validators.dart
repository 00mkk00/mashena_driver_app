final class Validators {
  const Validators._();

  // =========================
  // BASIC
  // =========================

  static bool isNotEmpty(String? value) {
    if (value == null) return false;
    return value.trim().isNotEmpty;
  }

  static bool minLength(String? value, int min) {
    if (value == null) return false;
    return value.trim().length >= min;
  }

  static bool maxLength(String? value, int max) {
    if (value == null) return false;
    return value.trim().length <= max;
  }

  static bool exactLength(String? value, int length) {
    if (value == null) return false;
    return value.trim().length == length;
  }

  // =========================
  // EMAIL
  // =========================

  static bool isEmail(String? value) {
    if (!isNotEmpty(value)) return false;
    final email = value!.trim();
    return RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@'
      r'[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*$',
    ).hasMatch(email);
  }

  // =========================
  // PASSWORD
  // =========================

  static bool hasUpperCase(String value) => RegExp(r'[A-Z]').hasMatch(value);

  static bool hasLowerCase(String value) => RegExp(r'[a-z]').hasMatch(value);

  static bool hasNumber(String value) => RegExp(r'\d').hasMatch(value);

  static bool hasSpecialChar(String value) =>
      RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);

  static bool isStrongPassword(String? value, {int minLength = 8}) {
    if (!isNotEmpty(value)) return false;
    final v = value!;
    return v.length >= minLength &&
        hasUpperCase(v) &&
        hasLowerCase(v) &&
        hasNumber(v) &&
        hasSpecialChar(v);
  }

  static bool passwordsMatch(String? p1, String? p2) {
    if (p1 == null || p2 == null) return false;
    return p1 == p2;
  }

  // =========================
  // PHONE
  // =========================

  /// Supports international numbers (+963..., +1..., etc.)
  static bool isPhoneNumber(String? value) {
    if (!isNotEmpty(value)) return false;
    return RegExp(r'^\+?[0-9]{7,15}$').hasMatch(value!.trim());
  }

  // =========================
  // NUMBERS
  // =========================

  static bool isNumeric(String? value) {
    if (!isNotEmpty(value)) return false;
    return num.tryParse(value!) != null;
  }

  static bool isInt(String? value) {
    if (!isNotEmpty(value)) return false;
    return int.tryParse(value!) != null;
  }

  static bool isPositiveNumber(String? value) {
    if (!isNumeric(value)) return false;
    return num.parse(value!) > 0;
  }

  static bool isInRange(num value, num min, num max) {
    return value >= min && value <= max;
  }

  // =========================
  // URL
  // =========================

  static bool isUrl(String? value) {
    if (!isNotEmpty(value)) return false;
    final uri = Uri.tryParse(value!.trim());
    return uri != null && uri.hasAbsolutePath;
  }

  // =========================
  // DATE & TIME
  // =========================

  static bool isValidDate(String? value) {
    if (!isNotEmpty(value)) return false;
    return DateTime.tryParse(value!) != null;
  }

  static bool isFutureDate(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  static bool isPastDate(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  static bool isAdult(DateTime birthDate, {int adultAge = 18}) {
    final today = DateTime.now();
    final age = today.year - birthDate.year;
    return age >= adultAge;
  }

  // =========================
  // USERNAME
  // =========================

  static bool isUsername(String? value) {
    if (!isNotEmpty(value)) return false;
    return RegExp(r'^[a-zA-Z0-9_]{3,20}$').hasMatch(value!.trim());
  }

  // =========================
  // OTP / CODE
  // =========================

  static bool isOtp(String? value, {int length = 6}) {
    if (!isNotEmpty(value)) return false;
    return RegExp('^\\d{$length}\$').hasMatch(value!.trim());
  }

  // =========================
  // NATIONAL ID / CUSTOM
  // =========================

  static bool isNationalId(String? value, {int min = 6, int max = 14}) {
    if (!isNotEmpty(value)) return false;
    final v = value!.trim();
    return RegExp(r'^\d+$').hasMatch(v) && v.length >= min && v.length <= max;
  }

  // =========================
  // FORM FIELD HELPERS (Flutter)
  // =========================

  /// Returns error message or null (for TextFormField.validator)
  static String? requiredField(
    String? value, {
    String message = 'هذا الحقل مطلوب',
  }) {
    return isNotEmpty(value) ? null : message;
  }

  static String? emailField(String? value) {
    if (!isNotEmpty(value)) return 'البريد الإلكتروني مطلوب';
    if (!isEmail(value)) return 'بريد إلكتروني غير صالح';
    return null;
  }

  static String? passwordField(String? value) {
    if (!isNotEmpty(value)) return 'كلمة المرور مطلوبة';
    if (!isStrongPassword(value)) {
      return 'كلمة المرور ضعيفة (حرف كبير، صغير، رقم، رمز)';
    }
    return null;
  }

  static String? phoneField(String? value) {
    if (!isNotEmpty(value)) return 'رقم الهاتف مطلوب';
    if (!isPhoneNumber(value)) return 'رقم هاتف غير صالح';
    return null;
  }

  static String? requiredStringField(
    String? value, {
    String message = 'هذا الحقل مطلوب',
  }) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }
    return null;
  }
}
