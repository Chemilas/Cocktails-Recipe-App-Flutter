import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, this.text, this.letterSpacing, this.fontSize, this.fontWeight, this.textAlign, this.color});

  final String? text;
  final double? letterSpacing;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: GoogleFonts.quicksand(
        fontSize: fontSize ,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        color: color
      ),
      textAlign: textAlign,
      maxLines: 5,
    );
  }
}
