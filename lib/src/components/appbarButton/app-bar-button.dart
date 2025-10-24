import 'package:flutter/material.dart';
import 'package:nebulae/src/components/genericAppText/generic-app-text.dart';

class AppBarButton extends StatefulWidget {
  const AppBarButton({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(overlayColor: WidgetStateProperty.all(Color(0xff172044))), //applied same color as appbar background to remove hober effect
      child: GenericappText(text: widget.text, color: Colors.white, fontSize: 22),
    );
  }
}