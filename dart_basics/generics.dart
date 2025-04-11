abstract class Animal {
  void sound();
}

class Dog extends Animal {
  final String name;
  Dog(this.name);
  @override
  void sound() => print('$name barks');
  @override
  bool operator ==(Object other) {
    return other is Dog && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => '$name';
}

class Cat extends Animal {
  final String name;
  Cat(this.name);
  @override
  void sound() => print('Cat meows');
  @override
  bool operator ==(Object other) {
    return other is Cat && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => '$name';
}

class AnimalCage<T extends Animal> {
  T animal;
  AnimalCage(this.animal);

  void releaseAnimal() {
    print('Releasing animal...');
    animal.sound();
  }

  String getAnimaltype() {
    return 'Animal: ${animal.runtimeType}';
  }
}

class Zoo<T extends Animal> {
  List<T> allAnimals = [];

  void addAnimal(T Animal) => allAnimals.add(Animal);

  void _printAnimalList() {
    if (allAnimals.isEmpty) {
      print('🐾 The zoo is empty.');
    } else {
      for (T dog in allAnimals) {
        print('${dog.runtimeType}=>$dog');
      }
    }
  }

  bool removeAnimal(T Animal) {
    print('Current Animals in the zoo:');
    _printAnimalList();

    print('\nRemoving Animal....');
    bool wasRemoved = allAnimals.remove(Animal);
    var res =
        wasRemoved
            ? 'Successfully removed: ${Animal};'
            : 'Could not find: ${Animal}';
    print(res);

    print('\nUpdated animals in the zoo:');
    _printAnimalList();
    return wasRemoved;
  }

  void soundAllAnimals() {
    for (T animals in allAnimals) {
      print('${animals.runtimeType}:');
      animals.sound();
    }
  }
}

void main() {
  // var dogCage = AnimalCage(Dog());
  // dogCage.releaseAnimal();
  // print(dogCage.getAnimaltype());
  // var catCage = AnimalCage(Cat());
  // catCage.releaseAnimal();

  final dogZoo = Zoo<Dog>();
  dogZoo.addAnimal(Dog('chance'));
  dogZoo.addAnimal(Dog('jack'));
  dogZoo.soundAllAnimals();
  print('\n--------------------\n');
  dogZoo.removeAnimal(Dog('jack'));
}
