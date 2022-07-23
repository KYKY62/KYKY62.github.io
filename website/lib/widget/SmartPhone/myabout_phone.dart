import 'package:flutter/material.dart';

class MyAboutPhone extends StatelessWidget {
  const MyAboutPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Four Think I Always Promise",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 70),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                  child: Text(
                "On Time Revision",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )),
              SizedBox(width: 30),
              Expanded(
                  child: Text(
                "Good Communication",
                textAlign: TextAlign.center,
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  textAlign: TextAlign.justify,
                  "All the revision will updated on the time.But with the best design\nquality that can make you satisfy",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  textAlign: TextAlign.justify,
                  "I'm native speaker of english. You dont have to worry about\nit, also stand by in chat platform during work time",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  "Clean Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  "Documention Easy to Read",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  textAlign: TextAlign.justify,
                  "I'm native speaker of english. You dont have to worry about\nit, also stand by in chat platform during work time",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  textAlign: TextAlign.justify,
                  "I'm native speaker of english. You dont have to worry about\nit, also stand by in chat platform during work time",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
