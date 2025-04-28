import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/shared/styled_text.dart';
import 'package:flutter_heroes_ui/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledTextField extends StatelessWidget {
  StyledTextField(this.text, this.icon, {required this.controller, super.key});
  final String text;
  final IconData icon;
  final textController = TextEditingController();
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    style: GoogleFonts.kanit(textStyle: Theme.of(context).textTheme.bodyMedium),
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      label: StyledText(text),
    ),
    cursorColor: AppColors.textColor,
  );
}
