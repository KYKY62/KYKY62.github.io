import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:website/widget/Laptop/myportofolio.dart';

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 150,
                  right: mediaQ.width * 0.07,
                  top: 20,
                  bottom: 120,
                ),
                width: mediaQ.width * 0.4,
                height: mediaQ.height * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(mediaQ.width * 0.1),
                    bottomRight: Radius.circular(mediaQ.width * 0.1),
                  ),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/profil.jpg',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Home"),
                          ),
                          const SizedBox(width: 75),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Work"),
                          ),
                          const SizedBox(width: 75),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("About"),
                          ),
                          const SizedBox(width: 75),
                          GestureDetector(
                            onTap: () {},
                            child: const Text("Contact"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 75),
                    const Text(
                      "Rizky Akbar Siregar",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Developer Based",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "in Indonesia",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "I'm a flutter mobile app development.I'm a hard worker and on time according to the time specified by the client, of course prioritizing results and client satisfaction",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        height: 1.8,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "My Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/Logo.png',
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 250, bottom: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffECB390),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Years",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Experience",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: mediaQ.width * 0.13),
                const Text(
                  "3",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffECB390),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Satisfied",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Client",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: mediaQ.width * 0.13),
                const Text(
                  "3",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffECB390),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Completed",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Project",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: mediaQ.width * 0.13),
                const Text(
                  "8",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffECB390),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Live",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Project",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 55)
              ],
            ),
          )
        ],
      ),
    );
  }
}
