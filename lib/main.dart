import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glazel/screens/splash_screen.dart';
import 'package:glazel/Controller/controller.dart';

void main() {
  runApp(const Glaxel());
  Get.put(Controller());
}

class Glaxel extends StatelessWidget {
  const Glaxel({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

