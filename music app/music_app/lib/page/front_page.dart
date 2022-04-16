// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/theme.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            width: double.infinity,
            height: 483,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Backgroundcolor2,
            ),
            child: Image.asset('assets/music.png'),
          ),
          SizedBox(height: 54),
          Positioned(
            right: 62,
            left: 62,
            bottom: 25,
            child: Column(
              children: [
                Text(
                  "Find The Perfect",
                  style: PrimarytextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Music Teacher",
                  style: PurpletextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget desc() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Learn by the lorem ipsum dolor sit amet, consectetur adispicing. ",
            style: BlacktextStyle.copyWith(
              fontSize: 17,
              fontWeight: regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget button() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/home-page');
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 50,
                right: 30,
                left: 30,
              ),
              width: 137,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffCDDCF6),
                    spreadRadius: 1,
                    blurRadius: 80,
                    offset: Offset(0, 30),
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffCDDCF6),
                    Color(0xffFFFFFF),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/home-page');
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 50,
                right: 30,
                left: 30,
              ),
              width: 137,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff4624C2),
                    spreadRadius: 1,
                    blurRadius: 80,
                    offset: Offset(0, 30),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff7F5BFF),
                    Color(0xff4624C2),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 17,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
        backgroundColor: BackgroundColor1,
        body: ListView(
          children: [
            Column(
              children: [
                content(),
                desc(),
                button(),
                SizedBox(height: 40),
              ],
            ),
          ],
        ));
  }
}
