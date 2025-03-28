void main() {
  var student1 = Student('Kirubel', 21, 85.5, 'Active');
  var student2 = Student.freshman('Sara', 18);
  var student3 = Student.create('David', 22, 95.0);
  var student4 = Student.ungraded('Lily', 20, 'Inactive');

  print(student1.status);
  print(student2.status);
  print(student3.status);
  print(student4.grade);
}

class Student {
  final String name;
  final int age;
  final double grade;
  String? status;
  // Default constructor with initializer list and assertions
  Student(this.name, this.age, this.grade, this.status)
    : assert(age >= 0, 'Age cannot be negative'),
      assert(grade >= 0 && grade <= 100, 'Grade must be between 0 and 100');
  // Named constructor (Freshman)
  Student.freshman(String name, int age) : this(name, age, 0.0, 'Freshman');
  // Factory constructor with custom logic
  factory Student.create(String name, int age, double grade) {
    String? _status = (grade > 90) ? 'Honor' : null;
    return Student(name, age, grade, _status);
  }
  // Redirecting constructor
  Student.ungraded(String name, int age, String? status)
    : this(name, age, 0.0, status);
}
