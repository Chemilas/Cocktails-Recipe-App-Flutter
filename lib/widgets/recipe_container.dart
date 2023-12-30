import 'package:flutter/material.dart';
import 'package:glazel/constants/text.dart';

class RecipeContainer extends StatelessWidget {
  const RecipeContainer({super.key, required this.image, this.onTap, this.height, this.width, this.text});

  final ImageProvider<Object> image;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.bottomRight,
          height: height ?? 150,
          width: width ?? 500,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: image ,fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25),offset: Offset(0, 1),blurRadius: 1),
              BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25),offset: Offset(0, 2),blurRadius: 8),
              BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.1),offset: Offset(0, 0),blurRadius: 0,spreadRadius: 1),
            ],
          ),
          child: MyText(text: text,fontSize: 22,fontWeight: FontWeight.bold,textAlign: TextAlign.center,color: Colors.white,),
        ),
      ),
    );
  }
}
