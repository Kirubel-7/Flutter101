import 'package:flutter_heroes_ui/models/faction.dart';
import 'package:flutter_heroes_ui/models/skills.dart';
import 'package:flutter_heroes_ui/models/stats.dart';
import 'package:flutter_heroes_ui/models/vocation.dart';

class Character with Selectable, Stats {
  Character({
    required this.id,
    required this.name,
    required this.codename,
    required this.faction,
    required this.origin,
    required this.vocation,
    required this.avatarUrl,
    this.bio = '',
  });

  //fields
  final Set<Skill> skills = {};
  final String id;
  final String name;
  final String codename;
  final Vocation vocation;
  final String avatarUrl;
  final String
  origin; // e.g. "US Navy SEALs", "Germany", "United Kingdom", "Russia"
  final Faction
  faction; // e.g., "NATO=USA", "Allegiance=Germany", "Task Force 141=United Kingdom", "Spetsnaz=Russia", "Jackals=USA", "Shadow Company=Unknown"
  final String bio; // backstory or lore text

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

mixin Selectable {
  bool _isUnlocked = true;
  bool _isFavorite = false;
  int x = 7;

  get isUnlocked => _isUnlocked;
  get isFavorite => _isFavorite;

  void toggleIsFav() {
    _isFavorite = !_isFavorite;
  }

  void toggleIsUnl() {
    _isUnlocked = !_isUnlocked;
  }
}

//dummy character data

List<Character> characters = [
  Character(
    id: '001',
    name: 'Simon Riley',
    codename: 'Ghost',
    bio:
        'A mysterious and highly trained British special forces operator, known for his skull-patterned balaclava.',
    faction: Faction.nato,
    origin: Faction.nato.origin,
    vocation: Vocation.assault,
    avatarUrl: 'assets/img/Operators/Ghost.png',
  ),
  Character(
    id: '002',
    name: 'Markus Krueger',
    codename: 'Kreuger',
    bio:
        'A stealthy and ruthless operator from Germany, formerly part of a paramilitary unit.',
    faction: Faction.allegiance,
    origin: Faction.allegiance.origin,
    vocation: Vocation.sniper,
    avatarUrl: 'assets/img/Operators/Kreuger.png',
  ),
  Character(
    id: '003',
    name: 'Sergi Kozar',
    codename: 'Minotaur',
    bio:
        'Heavy assault specialist with unmatched strength and stamina, loyal to the Motherland.',
    faction: Faction.spetsnaz,
    origin: Faction.spetsnaz.origin,
    vocation: Vocation.tank,
    avatarUrl: 'assets/img/Operators/Minotaur.png',
  ),
  Character(
    id: '004',
    name: 'John Price',
    codename: 'Price',
    bio:
        'A legendary field commander and tactical mastermind, known for his leadership and cigar.',
    faction: Faction.taskForce141,
    origin: Faction.taskForce141.origin,
    vocation: Vocation.recon,
    avatarUrl: 'assets/img/Operators/Price.png',
  ),
  Character(
    id: '005',
    name: 'Rozlin Helms',
    codename: 'Roze',
    bio:
        'Elite infiltration and recon expert, Roze prefers the shadows over direct combat.',
    faction: Faction.jackals,
    origin: Faction.jackals.origin,
    vocation: Vocation.demolition,
    avatarUrl: 'assets/img/Operators/Roze.png',
  ),
  Character(
    id: '006',
    name: 'Velikan',
    codename: 'Unknown',
    bio: 'A brutal and enigmatic heavy armor operator shrouded in secrecy.',
    faction: Faction.shadowCompany,
    origin: Faction.shadowCompany.origin,
    vocation: Vocation.support,
    avatarUrl: 'assets/img/Operators/Velikan.png',
  ),
];

void main() {
  print(
    "Characters:${characters.asMap().entries.map((x) => "\n${x.key + 1}.${x.value.codename}:${x.value.vocation.label}:${x.value.faction.displayName}:${x.value.origin}").toList()}",
  );
}
