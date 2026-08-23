int? parseIntFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;
    return int.tryParse(trimmed) ?? double.tryParse(trimmed)?.toInt();
  }
  return null;
}

double? parseDoubleFromJson(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is num) return value.toDouble();
  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;
    return double.tryParse(trimmed);
  }
  return null;
}

num? parseNumFromJson(dynamic value) {
  if (value == null) return null;
  if (value is num) return value;
  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;
    return num.tryParse(trimmed);
  }
  return null;
}
