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
          context, '/main', (route) => false)),
    );
    super.initState();
  }

  String logo = "assets/Logo_apps.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 20, 38),
      body: Center(
        child: Image.asset(
          logo,
          width: 500,
          height: 500,
        ),
      ),
    );
  }
}
