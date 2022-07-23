// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContactPhone extends StatelessWidget {
  const MyContactPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri emailLaunch = Uri(
      scheme: 'mailto',
      path: 'rizkysrg62@gmail.com',
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "That's All About Me, Feel Freeto Say Hi!",
            style: TextStyle(
              letterSpacing: 2,
              wordSpacing: 2,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              textAlign: TextAlign.center,
              "Just shoot your amazing idea to my email or catching up with me. I'm available at workin time\n(8 a.m - 5 p.m). I'm very welcome to everyone",
              style: TextStyle(
                height: 2,
                wordSpacing: 2,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Material(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(80),
            child: InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap: () {
                launchUrl(emailLaunch);
              },
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
          ),
        ],
      ),
    );
  }
}
