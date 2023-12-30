import 'package:flutter/material.dart';
import 'package:glazel/constants/colors.dart';
import 'package:glazel/constants/text.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.text, this.fontWeight});

  final String text;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.primary,
      foregroundColor: Colors.white,
      title: MyText(text: text,fontSize: 16,fontWeight: fontWeight,),
    );
  }
}
