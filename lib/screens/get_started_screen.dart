import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glazel/constants/colors.dart';
import 'package:glazel/screens/home_screen.dart';
import 'package:glazel/widgets/background_container.dart';
import 'package:glazel/widgets/elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  @override
  State<GetStarted> createState() => _GetStartedState();
}
class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PopScope(
          canPop: false,
          onPopInvoked: (didPop){SystemNavigator.pop();},
          child: BackgroundContainer(
            image: 'assets/images/barman.jpg',
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The One-Stop to find amazing drink mixes for any occasion.',
                  style: GoogleFonts.ephesis(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: MyColors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                MyElevatedButton(
                  height: 60,
                  width: 210,
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  text: 'Get Started',
                  icon: Icons.keyboard_arrow_right,
                ),
              ],
            ),
          ),
        )
    );
  }
}
