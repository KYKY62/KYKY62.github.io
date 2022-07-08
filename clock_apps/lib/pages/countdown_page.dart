import 'package:flutter/material.dart';

class MyCountdow extends StatelessWidget {
  const MyCountdow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1A1F38),
      body: Center(
        child: Text(
          "Coming Soon",
          style: TextStyle(
            color: Color(0xffFFE500),
            fontSize: 42,
          ),
        ),
      ),
    );
  }
}
