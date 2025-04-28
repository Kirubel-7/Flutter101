mixin Stats {
  int _availablePoints = 10;
  int _health = 10;
  int _armor = 10;
  int _speed = 10;
  int _power = 10;

  //getters
  int get availablePoints => _availablePoints;
  int get level => (_health + _armor + _speed + _power) ~/ 4;
  Map<String, int> get statAsMap => {
    '_health': _health,
    '_armor': _armor,
    '_speed': _speed,
    '_power': _power,
  };

  List<Map<String, String>> get statFormattedAsList => [
    {'title': 'health', 'value': _health.toString()},
    {'title': 'armor', 'value': _armor.toString()},
    {'title': 'speed', 'value': _speed.toString()},
    {'title': 'power', 'value': _power.toString()},
  ];

  //methods
  void increaseStats(String stat) {
    if (_availablePoints <= 0) return;
    switch (stat.toLowerCase()) {
      case 'health':
        _health++;
        _availablePoints--;
        break;
      case 'armor':
        _armor++;
        _availablePoints--;
        break;
      case 'speed':
        _speed++;
        _availablePoints--;
        break;
      case 'power':
        _power++;
        _availablePoints--;
        break;
      default:
        throw ArgumentError('Invalid stat: $stat');
    }
  }

  void decreaseStats(String stat) {
    switch (stat.toLowerCase()) {
      case 'health':
        if (_health > 5) {
          _health--;
          _availablePoints++;
        }
        break;
      case 'armor':
        if (_armor > 5) {
          _armor--;
          _availablePoints++;
        }
        break;
      case 'speed':
        if (_speed > 5) {
          _speed--;
          _availablePoints++;
        }
        break;
      case 'power':
        if (_power > 5) {
          _power--;
          _availablePoints++;
        }
        break;
      default:
        throw ArgumentError('Invalid stat: $stat');
    }
  }
}
