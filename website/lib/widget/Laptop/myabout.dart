import 'package:flutter/material.dart';

class MyAbout extends StatelessWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Four Think I Always Promise",
              style: TextStyle(
                fontSize: 40,
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
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              )),
              // SizedBox(width: mediaQ.width * 0.348),
              Expanded(
                  child: Text(
                "Good Communication",
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 40,
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
              // SizedBox(width: mediaQ.width * 0.4),
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
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // SizedBox(width: mediaQ.width * 0.371),
              Expanded(
                child: Text(
                  "Documention Easy to Read",
                  style: TextStyle(
                    wordSpacing: 2,
                    fontSize: 40,
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
          )
        ],
      ),
    );
  }
}
