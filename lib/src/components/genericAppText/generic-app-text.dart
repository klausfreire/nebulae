import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericappText extends StatefulWidget {
  const GenericappText({super.key, required this.text, this.style, this.color, this.fontSize});

  final String text;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;

  @override
  State<GenericappText> createState() => _GenericappTextState();
}

class _GenericappTextState extends State<GenericappText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text, style: widget.style?? GoogleFonts.spaceGrotesk(color: widget.color, fontSize: widget.fontSize,));
  }
}