void main() {
  var emp0 = Employee('E000', 'Sara Alemu', 'manager', 0.0);
  var emp1 = Employee.manager('E001', 'Kirubel Esayas');
  var emp2 = Employee.staff('E002', 'David Yohannes');
  var emp3 = Employee.hire('E003', 'Lily Getachew', 5);
  var emp4 = Employee.intern('E004', 'Abel Worku');

  emp0.displayDetails();
  emp1.displayDetails();
  emp2.displayDetails();
  emp3.displayDetails();
  emp4.displayDetails();
}

class Employee {
  final String id;
  final String name;
  double salary;
  final String postion;

  Employee(this.id, this.name, this.postion, [this.salary = 0.0])
    : assert(
        postion == 'manager' || postion == 'Staff',
        'Position must be either Manager or Staff.',
      );
  Employee.manager(String id, String name) : this(id, name, 'manager', 5000.0);
  Employee.staff(String id, String name) : this(id, name, 'Staff', 3000.0);
  factory Employee.hire(String id, String name, int years) {
    if (years >= 5) {
      var employee = Employee.manager(id, name);
      employee.salary = 7000.0;
      return employee;
    } else {
      var employee = Employee.staff(id, name);
      employee.salary = 3500.0;
      return employee;
    }
  }
  Employee.intern(String id, String name) : this(id, name, 'Staff', 1000.0);
  void displayDetails() {
    print('Employee: #$id - $name ($postion), Salary: \$${salary}');
  }
}
