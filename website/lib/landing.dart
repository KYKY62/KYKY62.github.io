import 'package:flutter/material.dart';
import 'package:website/widget/introduction.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        IntroductionWidget(),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffFCF8E8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Portofolio",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "These are my Portofolio. You can check it by yourself\nsome of my work has been live,\nyou can download too with Google PlayStore",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          height: 1.8,
                        ),
                      ),
                      SizedBox(height: 50),
                      // todo Portofolio 2
                      Container(
                        width: 500,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
