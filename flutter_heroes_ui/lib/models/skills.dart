import 'package:flutter_heroes_ui/models/vocation.dart';

class Skill {
  final String id; // Unique skill ID
  final String name; // Skill name (e.g. "Silent Kill")
  final String description; // What the skill does
  final String imageUrl; // Asset or network image path
  final Vocation vocation; // Associated class (e.g. Sniper, Medic)

  Skill({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.vocation,
  });
}

final List<Skill> allSkills = [
  // sniper skills
  Skill(
    id: '1',
    name: 'Silent Kill',
    description: 'Eliminate enemies silently from long range.',
    imageUrl: 'assets/img/Skills/Sniper/Silent_kill_skill.png',
    vocation: Vocation.sniper,
  ),
  Skill(
    id: '2',
    name: 'Dead Eye',
    description: 'Instantly locks onto the target for precision.',
    imageUrl: 'assets/img/Skills/Sniper/dead_eye_skill.png',
    vocation: Vocation.sniper,
  ),
  Skill(
    id: '3',
    name: 'Camouflage',
    description: 'Temporarily become invisible to enemies.',
    imageUrl: 'assets/img/Skills/Sniper/camouflage_skill.png',
    vocation: Vocation.sniper,
  ),

  // assault skills
  Skill(
    id: '4',
    name: 'Rapid Fire',
    description: 'Doubles firing speed for a short time.',
    imageUrl: 'assets/img/Skills/Assualt/rapid_fire_skill.png',
    vocation: Vocation.assault,
  ),
  Skill(
    id: '5',
    name: 'Grenade Toss',
    description: 'Throws a powerful grenade.',
    imageUrl: 'assets/img/Skills/Assualt/grenade_toss_skill.png',
    vocation: Vocation.assault,
  ),
  Skill(
    id: '6',
    name: 'Sprint Charge',
    description: 'Rush forward knocking enemies back.',
    imageUrl: 'assets/img/Skills/Assualt/sprint_charge_skill.png',
    vocation: Vocation.assault,
  ),

  // medic skills
  Skill(
    id: '7',
    name: 'Quick Heal',
    description: 'Heals self or an ally instantly.',
    imageUrl: 'assets/img/Skills/Medic/quick_heal_skill.png',
    vocation: Vocation.medic,
  ),
  Skill(
    id: '8',
    name: 'Revive Pulse',
    description: 'Revives fallen teammates within range.',
    imageUrl: 'assets/img/Skills/Medic/revive_pulse_skill.png',
    vocation: Vocation.medic,
  ),
  Skill(
    id: '9',
    name: 'Nano Boost',
    description: 'Increases defense and healing rate.',
    imageUrl: 'assets/img/Skills/Medic/nano_boost_skill.png',
    vocation: Vocation.medic,
  ),

  // engineer skills
  Skill(
    id: '10',
    name: 'Deploy Turret',
    description: 'Sets up an auto-firing turret.',
    imageUrl: 'assets/img/Skills/Engineer/deploy_turret_skill.png',
    vocation: Vocation.engineer,
  ),
  Skill(
    id: '11',
    name: 'Repair Drone',
    description: 'Repairs nearby structures or teammates.',
    imageUrl: 'assets/img/Skills/Engineer/repair_drone_skill.png',
    vocation: Vocation.engineer,
  ),
  Skill(
    id: '12',
    name: 'Mine Trap',
    description: 'Plants a mine that explodes on contact.',
    imageUrl: 'assets/img/Skills/Engineer/mine_trap_skill.png',
    vocation: Vocation.engineer,
  ),

  // support skills
  Skill(
    id: '13',
    name: 'Ammo Supply',
    description: 'assets/img/Skills/Support/ammo_supply_skill.png',
    imageUrl: 'ammo_supply.png',
    vocation: Vocation.support,
  ),
  Skill(
    id: '14',
    name: 'Shield Dome',
    description: 'Deploys a temporary protective shield.',
    imageUrl: 'assets/img/Skills/Support/shield_dome_skill.png',
    vocation: Vocation.support,
  ),
  Skill(
    id: '15',
    name: 'Combat Boost',
    description: 'Increases allies attack power.',
    imageUrl: 'assets/img/Skills/Support/combat_boost_skill.png',
    vocation: Vocation.support,
  ),

  // shield support skills(tank)
  Skill(
    id: '16',
    name: 'Wall Slam',
    description: 'Slam enemies into walls causing damage.',
    imageUrl: 'assets/img/Skills/Tank/wall_slam_skill.png',
    vocation: Vocation.tank,
  ),
  Skill(
    id: '17',
    name: 'Shield Wall',
    description: 'Creates an immovable wall for cover.',
    imageUrl: 'assets/img/Skills/Tank/shield_wall_skill.png',
    vocation: Vocation.tank,
  ),
  Skill(
    id: '18',
    name: 'Body Block',
    description: 'Absorbs damage for allies in front.',
    imageUrl: 'assets/img/Skills/Tank/body_block_skill.png',
    vocation: Vocation.tank,
  ),

  // recon skills
  Skill(
    id: '19',
    name: 'Tracker Ping',
    description: 'Reveals nearby enemies on the map.',
    imageUrl: 'assets/img/Skills/Recon/tracker_skill.png',
    vocation: Vocation.recon,
  ),
  Skill(
    id: '20',
    name: 'Thermal Vision',
    description: 'Highlights enemy heat signatures.',
    imageUrl: 'assets/img/Skills/Recon/thermal_vison_skill.png',
    vocation: Vocation.recon,
  ),
  Skill(
    id: '21',
    name: 'Motion Scan',
    description: 'Detects movement in the vicinity.',
    imageUrl: 'assets/img/Skills/Recon/motion_scan_skill.png',
    vocation: Vocation.recon,
  ),

  // demolition skills
  Skill(
    id: '22',
    name: 'C4 Blast',
    description: 'Detonates planted C4 charges.',
    imageUrl: 'assets/img/Skills/Demolition/c4_blast_skill.png',
    vocation: Vocation.demolition,
  ),
  Skill(
    id: '23',
    name: 'Rocket Barrage',
    description: 'Fires multiple explosive rockets.',
    imageUrl: 'assets/img/Skills/Demolition/rocket_barrage_skill.png',
    vocation: Vocation.demolition,
  ),
  Skill(
    id: '24',
    name: 'Timed Charge',
    description: 'Sets a timed explosive.',
    imageUrl: 'assets/img/Skills/Demolition/timed_charge_skill.png',
    vocation: Vocation.demolition,
  ),

  // scout skills
  Skill(
    id: '25',
    name: 'Wall Run',
    description: 'Run on walls for rapid movement.',
    imageUrl: 'assets/img/Skills/Scout/wall_run_skill.png',
    vocation: Vocation.scout,
  ),
  Skill(
    id: '26',
    name: 'Quick Step',
    description: 'Dash quickly in any direction.',
    imageUrl: 'assets/img/Skills/Scout/quick_step_skill.png',
    vocation: Vocation.scout,
  ),
  Skill(
    id: '27',
    name: 'Evade Dash',
    description: 'Evade attacks with a fast dash.',
    imageUrl: 'assets/img/Skills/Scout/evade_dash_skill.png',
    vocation: Vocation.scout,
  ),

  // hacker skills
  Skill(
    id: '28',
    name: 'System Jam',
    description: 'Jams enemy equipment temporarily.',
    imageUrl: 'assets/img/Skills/Hacker/system_jam_skill.png',
    vocation: Vocation.hacker,
  ),
  Skill(
    id: '29',
    name: 'Remote Hack',
    description: 'Takes control of enemy devices.',
    imageUrl: 'assets/img/Skills/Hacker/remote_hack_skill.png',
    vocation: Vocation.hacker,
  ),
  Skill(
    id: '30',
    name: 'EMP Blast',
    description: 'Disables electronics in a radius.',
    imageUrl: 'assets/img/Skills/Hacker/emp_blast_skill.png',
    vocation: Vocation.hacker,
  ),
];
