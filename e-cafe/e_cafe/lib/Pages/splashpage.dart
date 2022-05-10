import 'dart:async';

import 'package:e_cafe/Pages/homepage.dart';
import 'package:e_cafe/utils/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    var duration = Duration(seconds: 3);
    Timer(
        duration,
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => HomePage(),
            ),
            (route) => false));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 250,
          height: 390,
        ),
      ),
    );
  }
}
