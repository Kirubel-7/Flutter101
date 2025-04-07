class Example {
  int a;
  Example(this.a);
}

class SubExample extends Example {
  int b;
  SubExample(this.b) : super(b);
}

//Abstract classes

abstract class Animal {
  final int _legs;
  Animal(this._legs);
  int get TotalLegs;
  void sound();
}

class Dog extends Animal {
  Dog(super._legs);

  @override
  void sound() {
    print('ጃስ');
  }

  @override
  // TODO: implement TotalLegs
  int get TotalLegs => throw UnimplementedError();
}

void main() {
  Animal a1 = Dog(4);
  a1.sound();
  print(a1._legs);
}
