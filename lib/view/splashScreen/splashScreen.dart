import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swiggy_app/utils/colors/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState()
  {
    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).pushReplacementNamed('/intro');
    },);
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Container(
          height: height*0.2,
          width: width*0.5,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/intro/swiggyLogo.png',
            ),
          ),
        ),
      ),
    );
  }
}