class NumberDivisionByZeroException implements Exception {
  String toString() {
    return 'Ouch! Division by zero!';
  }
}

class Fraction {
  int _numerator;
  int _denominator;
  Fraction(this._numerator, this._denominator) {
    if (_denominator == 0) throw NumberDivisionByZeroException();
  }

  int get numerator => _numerator;
  int get denominator => _denominator;
  set denominator(int den) {
    // if (den == 0) {
    //   _denominator = 1;
    // } else {
    //   _denominator = den;
    // }
    den == 0 ? _denominator = 1 : _denominator = den;
  }

  @override
  String toString() {
    return '$_numerator/$_denominator';
  }
}

void main() {
  try {
    final fraction = Fraction(1, 2);
    print(fraction);
    fraction._numerator = 0;
    print(fraction);
  } on NumberDivisionByZeroException catch (ex) {
    print(ex);
  }
}
