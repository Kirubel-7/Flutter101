class UserProfile {
  String name = '';
  int age = 0;
  String bio = '';

  void setName(String newName) {
    name = newName;
  }

  void setAge(int newAge) {
    age = newAge;
  }

  void updateBio(String newBio) {
    bio = newBio;
  }

  void displayProfile() {
    print('Name: $name');
    print('Age: $age');
    print('Bio: $bio');
    print('--------------------');
  }
}

void main() {
  UserProfile()
    ..setName('Kirubel')
    ..setAge(23)
    ..updateBio('Gonna help people! With God everything is possible.')
    ..displayProfile();
}
