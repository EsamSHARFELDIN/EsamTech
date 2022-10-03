import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:esam_sharf/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EsamTech',
      theme: ThemeData.light().copyWith(
        primaryColor: KprimaryColor,
        scaffoldBackgroundColor: KbgColor,
        canvasColor: KbgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: KbodyTextColor),
              bodyText2: const TextStyle(color: KbodyTextColor),
            ),
      ),
      home: AnimatedSplashScreen(
        splash: Container(
          width: 400,
          decoration: BoxDecoration(
            color: KsecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/welcome.jpg'),
                backgroundColor: KsecondaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              TyperAnimatedTextKit(
                isRepeatingAnimation: true,
                speed: Duration(milliseconds: 50),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                text: const [
                  "Esam SHARFELDIN",
                  "Freelancer Developer",
                ],
              ),
            ],
          ),
        ),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: KbgColor,
      ),
    );
  }
}
