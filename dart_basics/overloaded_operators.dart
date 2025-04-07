void main() {
  var v1 = Vector(3, 4);
  var v2 = Vector(1, 2);
  var sum = v1 + v2; // addition
  var diff = v1 - v2; // subtraction
  var scaled = v1 * 2; // scalar multiplication
  var equality = v1 == Vector(3, 4); // equality check
  var vector = Vector(7, 5);
  var scaled2 = vector * 2;
  var comparison = v1.compareTo(v2);
  print('Vector 1: ${v1}');
  print('Vector 2: ${v2}');
  print('Vector Addition: (${sum})');
  print('Vector Subtraction: (${diff})');
  print('Vector Scalar Multiplication: (${scaled})');
  print('Vector Equality: ${equality}');
  print('Vector Comparison: ${comparison}');
  print(scaled2);
  print('\n---------------\n');
}

class Vector implements Comparable<Vector> {
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
  int compareTo(Vector other) {
    if (this.x < other.x && this.y < other.y) return -1;
    if (this.x > other.x && this.y > other.y) return 1;
    return 0;
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

  @override
  String toString() {
    return '$x, $y';
  }
}
