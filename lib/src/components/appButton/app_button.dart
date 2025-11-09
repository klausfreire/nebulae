import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({super.key, required this.onPressed, required this.child, this.style});

  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: widget.onPressed,
                  style: widget.style?? ButtonStyle(
                    elevation: WidgetStateProperty.all(3),
                    backgroundColor: WidgetStateProperty.all(Color(0xff583BD0)),
                    fixedSize: WidgetStateProperty.all(Size(120, 40)),
                    shape: WidgetStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)))
                  ),
                  child: widget.child
                );
  }
}