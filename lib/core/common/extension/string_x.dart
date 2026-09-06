extension StringX on String {
  String get trimmed => trim();
  bool get isBlank => trimmed.isEmpty;
  bool get isNotBlank => !isBlank;

  String capitalize() {
    if (isBlank) return this;
    final t = trimmed;
    return '${t[0].toUpperCase()}${t.substring(1)}';
  }

  String capitalizeWords() {
    if (isBlank) return this;
    return trimmed
        .split(RegExp(r'\s+'))
        .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
  }

  String get initials {
    final parts = trimmed
        .split(RegExp(r'\s+'))
        .where((e) => e.isNotEmpty)
        .toList();
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts.first[0].toUpperCase();
    return (parts[0][0] + parts[1][0]).toUpperCase();
  }

  bool get isNumeric => num.tryParse(trimmed) != null;
  bool get isInt => int.tryParse(trimmed) != null;

  /// Keep only digits (useful for phone numbers)
  String get digitsOnly => replaceAll(RegExp(r'\D'), '');

  /// Simple safe substring
  String safeSubstring(int start, [int? end]) {
    if (isEmpty) return this;
    final s = start.clamp(0, length);
    final e = (end ?? length).clamp(s, length);
    return substring(s, e);
  }

  /// Mask middle characters: "ammarzeineh" -> "am******eh"
  String mask({int showStart = 2, int showEnd = 2, String maskChar = '*'}) {
    final t = trimmed;
    if (t.length <= showStart + showEnd) return t;
    final middle = maskChar * (t.length - showStart - showEnd);
    return '${t.substring(0, showStart)}$middle${t.substring(t.length - showEnd)}';
  }

  /// Limit string to a specified number of words
  String limitWords(int maxWords) {
    if (isBlank) return this;
    final words = trimmed
        .split(RegExp(r'\s+'))
        .where((w) => w.isNotEmpty)
        .toList();
    if (words.length <= maxWords) return trimmed;
    return words.take(maxWords).join(' ');
  }
}
