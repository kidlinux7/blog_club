import 'dart:async';

import 'package:blog_club/presentation/screens/GetStarted.dart';
import 'package:flutter/material.dart';
import '../theme/Theme.dart';

class Splash extends StatefulWidget {
  final ThemeColors customColors = ThemeColors();
  Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GetStarted()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // double deviceHeight = MediaQuery.of(context).size.height;
    // double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GetStarted()),
          );
        },
        child: Center(
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
            height: 100,
          ),
        ),
      ),
    );
  }
}
