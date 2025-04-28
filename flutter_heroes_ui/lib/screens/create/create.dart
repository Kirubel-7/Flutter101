import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/models/character.dart';
import 'package:flutter_heroes_ui/models/faction.dart';
import 'package:flutter_heroes_ui/models/vocation.dart';
import 'package:flutter_heroes_ui/screens/create/faction_card.dart';
import 'package:flutter_heroes_ui/screens/create/vocation_card.dart';
import 'package:flutter_heroes_ui/screens/home/home.dart';
import 'package:flutter_heroes_ui/shared/styled_button.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';
import 'package:flutter_heroes_ui/shared/styled_text_field.dart';
import 'package:flutter_heroes_ui/theme.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  //handling selectedFaction
  Faction selectedFaction = Faction.allegiance;
  void updateFaction(Faction faction) {
    setState(() {
      selectedFaction = faction;
    });
  }

  //handling selectedVocation
  Vocation selectedVocation = Vocation.assault;
  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  void submitHandler() {
    if (_codeController.text.trim().isEmpty &&
        _nameController.text.trim().isEmpty) {
      print('Nick name and Name must not be empty');
      return;
    }
    if (_nameController.text.trim().isEmpty) {
      print('Name must not be empty');
      return;
    }
    if (_codeController.text.trim().isEmpty) {
      print('Nick name must not be empty');
      return;
    }
    // print(_nameController.text);
    // print(_codeController.text);
    characters.add(
      Character(
        id: uuid.v4(),
        name: _nameController.text.trim(),
        codename: _codeController.text.trim(),
        faction: selectedFaction,
        origin: selectedFaction.origin,
        vocation: selectedVocation,
        avatarUrl: 'assets/img/Operators/Kreuger.png',
      ),
    );

    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Home()));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const StyledTitle('Characters Creation')),
    body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(child: StyledHeadline('Welcome, new player.')),
            const Center(
              child: StyledText('Create a name & codename for your character'),
            ),
            //input field for char and code name
            const SizedBox(height: 30),
            StyledTextField(
              'Character name',
              Icons.person_2,
              controller: _nameController,
            ),
            const SizedBox(height: 20),
            StyledTextField(
              'Code name',
              Icons.chat,
              controller: _codeController,
            ),
            const SizedBox(height: 20),

            //select faction
            const Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(child: StyledHeadline('Choose a faction.')),
            const Center(child: StyledText('This determines your orgin')),
            const SizedBox(height: 30),

            //faction card
            ...Faction.values.map(
              (faction) => FactionCard(
                onTap: updateFaction,
                selected: selectedFaction == faction,
                faction: faction,
              ),
            ),

            //select vocation title
            const Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(child: StyledHeadline('Choose a vocation.')),
            const Center(
              child: StyledText('This determines your available skills.'),
            ),
            const SizedBox(height: 30),

            //vocation card
            ...Vocation.values.map(
              (vocation) => VocationCard(
                selected: selectedVocation == vocation,
                onTap: updateVocation,
                vocation: vocation,
              ),
            ),
            // const VocationCard(vocation: Vocation.sniper),
            // const VocationCard(vocation: Vocation.assault),
            // const VocationCard(vocation: Vocation.support),
            // const VocationCard(vocation: Vocation.medic),
            // const VocationCard(vocation: Vocation.scout),
            // const VocationCard(vocation: Vocation.tank),
            // const VocationCard(vocation: Vocation.demolition),
            // const VocationCard(vocation: Vocation.engineer),
            // const VocationCard(vocation: Vocation.hacker),
            // const VocationCard(vocation: Vocation.recon),
            Center(
              child: StyledButton(
                onPressed: submitHandler,
                child: const StyledHeadline('Create Character'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
