extension NumX on num {
  bool get isZero => this == 0;
  bool get isPositive => this > 0;
  bool get isNegative => this < 0;

  num clampMin(num min) => this < min ? min : this;
  num clampMax(num max) => this > max ? max : this;

  bool inRange(num min, num max) => this >= min && this <= max;

  /// Round to N decimals (e.g. 12.345.roundTo(2) => 12.35)
  double roundTo(int decimals) {
    final factor = mathPow10(decimals);
    return (this * factor).round() / factor;
  }
}

double mathPow10(int decimals) {
  var result = 1.0;
  for (var i = 0; i < decimals; i++) {
    result *= 10.0;
  }
  return result;
}
