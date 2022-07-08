import 'dart:async';

import 'package:flutter/material.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({Key? key}) : super(key: key);

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState() {
    var duration = const Duration(seconds: 3);
    Timer(
      duration,
      (() => Navigator.pushNamedAndRemoveUntil(
          context, '/stopwatch', (route) => false)),
    );
    super.initState();
  }

  String logo = "assets/logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff898AA6),
      body: Center(
        child: Image.asset(
          logo,
          width: 250,
          height: 390,
        ),
      ),
    );
  }
}
