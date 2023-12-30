import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glazel/constants/text.dart';
import 'package:glazel/screens/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(const GetStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',scale: 4,),
            const MyText(text: 'Glaxel',fontSize: 20,letterSpacing: 2,)
          ],
        ),
      ),
    );
  }
}
