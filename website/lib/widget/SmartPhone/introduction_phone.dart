import 'package:flutter/material.dart';

class IntroductionPhone extends StatelessWidget {
  const IntroductionPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: mediaQ.height * 0.8,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/profil.jpg',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rizky Akbar Siregar",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25),
                Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Developer Based",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "in Indonesia",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "I'm a flutter mobile app development.I'm a hard worker and on time according to the time specified by the client, of course prioritizing results and client satisfaction",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 60),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: const SizedBox(
                      width: 150,
                      height: 50,
                      child: Center(
                        child: Text(
                          "My Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
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
                    SizedBox(width: mediaQ.width * 0.25),
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
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "3",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffECB390),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                        SizedBox(width: mediaQ.width * 0.25),
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
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          )
        ],
      ),
    );
  }
}
