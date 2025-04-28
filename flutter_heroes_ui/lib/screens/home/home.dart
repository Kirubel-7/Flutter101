import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/models/character.dart';
import 'package:flutter_heroes_ui/screens/create/create.dart';
import 'package:flutter_heroes_ui/screens/home/characters_card.dart';
import 'package:flutter_heroes_ui/shared/styled_button.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const StyledTitle('Your Characters')),
    body: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: characters.length,
              itemBuilder: (_, index) => CharacterCard(characters[index]),
            ),
          ),
          StyledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => const Create()),
              );
            },
            child: const StyledText('Create New'),
          ),
        ],
      ),
    ),
  );
}
