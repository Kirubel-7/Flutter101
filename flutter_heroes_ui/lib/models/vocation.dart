// import 'package:flutter_heroes_ui/models/skills.dart';

enum Vocation {
  sniper(
    label: 'Sniper',
    description: 'Long-range specialist trained for silent takedowns',
    imageAsset: 'assets/img/vocations2/sniper.png',
  ),
  assault(
    label: 'Assault',
    description: 'Frontline fighter, balanced in offense and defense',
    imageAsset:
        'assets/img/vocations2/assualt .png', // naming error on assets img => assualt .png "a space before the extension."
  ),
  medic(
    label: 'Medic',
    description: 'Heals allies and revives fallen squad members',
    imageAsset: 'assets/img/vocations2/medic.png',
  ),
  engineer(
    label: 'Engineer',
    description: 'Handles explosives, drones, and mechanical traps',
    imageAsset: 'assets/img/vocations2/engineer.png',
  ),
  support(
    label: 'Support',
    description: 'Provides ammo, shields, and backup to teammates',
    imageAsset: 'assets/img/vocations2/support.png',
  ),
  recon(
    label: 'Recon',
    description: 'Scout and track enemies using sensors and stealth',
    imageAsset: 'assets/img/vocations2/recon.png',
  ),
  tank(
    label: 'Tank',
    description: 'High defense, soaks damage to protect the team',
    imageAsset: 'assets/img/vocations2/tank.png',
  ),
  demolition(
    label: 'Demolition',
    description: 'Explosive expert for high-damage destruction',
    imageAsset: 'assets/img/vocations2/demolition.png',
  ),
  scout(
    label: 'Scout',
    description: 'Quick, agile, and effective at fast movement and recon',
    imageAsset: 'assets/img/vocations2/scout.png',
  ),
  hacker(
    label: 'Hacker',
    description: 'Disrupts enemy equipment, disables traps and UAVs',
    imageAsset: 'assets/img/vocations2/hacker.png',
  );

  final String label;
  final String description;
  final String imageAsset;
  const Vocation({
    required this.label,
    required this.description,
    required this.imageAsset,
  });
}

// void main() {
//   //final Vocation v;
//   //String x = Vocation.sniper.imageAsset;
//   //print(v.label);

//   //print(x.indexOf('tra'));
// }

// assets/img/Skills/Sniper
