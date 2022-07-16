import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 150,
                  right: mediaQ.width * 0.07,
                  top: 20,
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
                child: Container(
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
        ],
      ),
    );
  }
}
