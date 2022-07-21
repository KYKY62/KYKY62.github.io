// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyContact extends StatelessWidget {
  const MyContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            "That's All About Me, Feel Free\nto Say Hi!",
            style: TextStyle(
              letterSpacing: 2,
              wordSpacing: 2,
              fontSize: 42,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            textAlign: TextAlign.center,
            "Just shoot your amazing idea to my email or catching up\nwith me. I'm available at workin time (8 a.m - 5 p.m). I'm very\nwelcome to everyone",
            style: TextStyle(
              height: 2,
              fontSize: 18,
              wordSpacing: 2,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 40),
          Material(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(80),
            child: InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap: () {},
              child: const SizedBox(
                width: 300,
                height: 70,
                child: Center(
                  child: Text(
                    "rizkysrg62@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
