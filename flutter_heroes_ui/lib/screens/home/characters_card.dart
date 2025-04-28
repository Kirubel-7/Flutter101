import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/models/character.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';
import 'package:flutter_heroes_ui/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});
  final Character character;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(character.avatarUrl, width: 80),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledHeadline(character.codename),
              StyledText(character.vocation.label),
            ],
          ),
          const Expanded(child: SizedBox()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
          ),
        ],
      ),
    ),
  );
}
