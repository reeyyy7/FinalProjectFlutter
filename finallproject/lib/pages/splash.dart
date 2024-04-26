import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finallproject/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: "assets/img/splash.png",
            splashIconSize: 350,
            nextScreen: LoginPage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
            backgroundColor: Colors.white));
  }
}
