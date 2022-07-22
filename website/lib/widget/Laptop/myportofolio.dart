import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPortofolio extends StatelessWidget {
  const MyPortofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                "These are my Portofolio. You can check it by yourself\nsome of my work has been live,\nyou can download too with Google PlayStore",
                textAlign: TextAlign.justify,
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
                  width: 500,
                  height: 600,
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
            ],
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // todo Porto 1
              GestureDetector(
                onTap: () => launchUrl(
                  Uri.parse(
                    "https://play.google.com/store/apps/details?id=com.app.scan_barcode",
                  ),
                  mode: LaunchMode.externalNonBrowserApplication,
                ),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  width: 500,
                  height: 300,
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
              const SizedBox(height: 60),
              // todo Porto 3
              Container(
                padding: const EdgeInsets.all(30),
                width: 500,
                height: 300,
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
              const SizedBox(height: 80),
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
                            fontWeight: FontWeight.w200,
                          )),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
