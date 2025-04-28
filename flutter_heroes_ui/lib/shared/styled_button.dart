import 'package:flutter/material.dart';
import 'package:flutter_heroes_ui/theme.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.onPressed, required this.child, super.key});

  final Function() onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onPressed,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.dsecondaryColor, AppColors.dsecondaryAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: child,
    ),
  );
}
