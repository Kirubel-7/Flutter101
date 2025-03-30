void main() {
  var v1 = Vector(3, 4);
  var v2 = Vector(1, 2);
  var sum = v1 + v2; // addition
  var diff = v1 - v2; // subtraction
  var scaled = v1 * 2; // scalar multiplication
  var equality = v1 == Vector(3, 4); // equality check

  print('Vector Addition: (${sum})');
  print('Vector Subtraction: (${diff})');
  print('Vector Scalar Multiplication: (${scaled})');
  print('Vector Equality: ${equality}');
}

class Vector {
  final double x;
  final double y;
  Vector(this.x, this.y);
  Vector operator +(Vector other) {
    return Vector(this.x + other.x, this.y + other.y);
  }

  Vector operator -(Vector other) {
    return Vector(this.x - other.x, this.y - other.y);
  }

  Vector operator *(double scalar) {
    return Vector(this.x * scalar, this.y * scalar);
  }

  @override
  bool operator ==(Object other) {
    if (other is Vector) {
      return this.x == other.x && this.y == other.y;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(x, y);

  //   @override
  String toString() {
    return '$x, $y';
  }
}
