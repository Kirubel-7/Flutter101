import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/models/faction.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';
import 'package:flutter_heroes_ui/theme.dart';

class FactionCard extends StatelessWidget {
  const FactionCard({
    required this.onTap,
    required this.faction,
    required this.selected,
    super.key,
  });
  final Faction faction;
  final bool selected;
  final void Function(Faction) onTap;
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => onTap(faction),
    child: Container(
      width: 217,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //shape: BoxShape.rectangle,
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Card(
            color: selected ? AppColors.secondaryAccent : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StyledHeadline(faction.displayName),
            ),
          ),
        ],
      ),
    ),
  );
}
