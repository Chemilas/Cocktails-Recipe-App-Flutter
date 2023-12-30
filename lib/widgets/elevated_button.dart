import 'package:flutter/material.dart';
import 'package:glazel/constants/colors.dart';
import 'package:glazel/constants/text.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key, this.onPressed, this.text, this.fontSize, this.height, this.width, this.icon});

  final VoidCallback? onPressed;
  final String? text;
  final double? fontSize;
  final double? height;
  final double? width;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primary,
            foregroundColor: Colors.white
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyText(
                text: text!,
                fontSize: fontSize ?? 21,
                fontWeight: FontWeight.w600,
              ),
              Icon(icon,size: 27,)
            ],
          ),
        ),
      ),
    );
  }
}
