void main() {
  var p1 = BankAccount('1234567890', 'Kirubel Esayas', 'savings');
  var p2 = BankAccount.savings('0987654321', 'Sara Alemu');
  var p3 = BankAccount.checking('5432167890', 'David Yohannes');
  var p4 = BankAccount.vipAccount('4567123890', 'Lily Getachew', 75000);
  var person1 = person('Kirubel', 23, 'Male', 1234, 175.5);
  print(person1.toString());
  person1.display();
  p1.displayDetails();
  p2.displayDetails();
  p3.displayDetails();
  p4.displayDetails();
}

class person {
  String _name;
  int _id;
  int _age;
  String _gender;
  double _height;
  person(this._name, this._age, this._gender, this._id, this._height);
  @override
  String toString() {
    return 'Name:$_name,ID:$_id,Age:$_age,Gender:$_gender';
  }

  void display([String bodyType = '']) {
    print('from chewa, $bodyType');
  }

  String get name => _name;
}

class BankAccount {
  final String accountNumber;
  final String ownerName;
  double balance;
  final String accountType;

  BankAccount(this.accountNumber, this.ownerName, this.accountType)
    : assert(
        accountType == 'savings' || accountType == 'checking',
        'Account Type must be either Savings or Checking.',
      ),
      balance = 0.0;

  BankAccount.savings(String accountNumber, String ownerName)
    : this(accountNumber, ownerName, 'savings');

  BankAccount.checking(String accountNumber, String ownerName)
    : this(accountNumber, ownerName, 'checking');

  factory BankAccount.vipAccount(
    String accountNumber,
    String ownerName,
    double balance,
  ) {
    if (balance >= 50000) {
      var account = BankAccount.checking(accountNumber, ownerName);
      account.balance = balance;
      return account;
    } else {
      var account = BankAccount.savings(accountNumber, ownerName);
      account.balance = balance;
      return account;
    }
  }

  void displayDetails() {
    print(
      'Account: #$accountNumber - $ownerName ($accountType), Balance: \$${balance}',
    );
  }
}

// class Test {
//   final int _secret;
//   final double _superSecret;
//   Test(int age, double wallet) : _secret = age, _superSecret = wallet;
// }
