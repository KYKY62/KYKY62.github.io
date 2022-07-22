// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContact extends StatelessWidget {
  const MyContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri emailLaunch = Uri(
      scheme: 'mailto',
      path: 'rizkysrg62@gmail.com',
    );

    final UrlWhatsapp = Uri.parse(
      "https://wa.me/62895326494486/?text=Saya%20tertarik%20untuk%20bekerjasama%20dengan%20anda",
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
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
          Container(
            margin: const EdgeInsets.only(
              right: 150,
              left: 150,
              top: 120,
              bottom: 40,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    "assets/Logo.png",
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                ),
                Spacer(),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 40),
                Text("Work",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                SizedBox(width: 40),
                Text("About",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    launchUrl(
                      UrlWhatsapp,
                      mode: LaunchMode.externalNonBrowserApplication,
                    );
                  },
                  child: Text("Contact",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
