import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/models/vocation.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';
import 'package:flutter_heroes_ui/theme.dart';

class VocationCard extends StatelessWidget {
  const VocationCard({
    required this.selected,
    required this.onTap,
    required this.vocation,
    super.key,
  });
  final Vocation vocation;
  final void Function(Vocation) onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => onTap(vocation),
    child: Card(
      color: selected ? AppColors.secondaryColor : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              vocation.imageAsset,
              width: 80,
              colorBlendMode: BlendMode.color,
              color:
                  !selected ? Colors.black.withAlpha(250) : Colors.transparent,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledHeadline(vocation.label),
                  StyledText(vocation.description),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
