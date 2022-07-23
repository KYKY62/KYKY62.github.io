import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPortofolioPhone extends StatelessWidget {
  const MyPortofolioPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Column(
        children: [
          const Text(
            "My Portofolio",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "These are my Portofolio. You can check it by yourself some of my work has been live, you can download too with Google PlayStore",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              height: 1.8,
            ),
          ),
          const SizedBox(height: 50),
          // todo Porto 2
          GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse(
                  "https://play.google.com/store/apps/details?id=com.app.coffe_shop",
                ),
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            child: Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: const Color(0xffBACDFC),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(48),
                ),
                child: Image.asset(
                  'assets/porto2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => launchUrl(
              Uri.parse(
                "https://play.google.com/store/apps/details?id=com.app.scan_barcode",
              ),
              mode: LaunchMode.externalNonBrowserApplication,
            ),
            child: Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: const Color(0xffBACDFC),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(48),
                ),
                child: Image.asset(
                  'assets/porto1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // todo Porto 3
          Container(
            padding: const EdgeInsets.all(30),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: const Color(0xffBACDFC),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(48),
              ),
              child: Image.asset(
                'assets/porto3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 150,
            height: 50,
            child: Material(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(48),
              child: InkWell(
                borderRadius: BorderRadius.circular(48),
                onTap: () {},
                child: const Center(
                  child: Text("See All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
