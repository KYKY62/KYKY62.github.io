import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ClientReview extends StatelessWidget {
  const ClientReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
          padding: const EdgeInsets.all(40),
          width: double.infinity,
          height: 308,
          decoration: BoxDecoration(
            color: const Color(0xffABC9FF),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Iconsax.quote_up5,
                color: Colors.white,
                size: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Fast and efficient seller. He is very humble",
                      style: TextStyle(
                        wordSpacing: 2,
                        letterSpacing: 2,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "I would highly recommend\nwho need development your app",
                      style: TextStyle(
                        wordSpacing: 2,
                        letterSpacing: 2,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "mastercraft802",
                      style: TextStyle(
                        wordSpacing: 2,
                        letterSpacing: 2,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 800,
          child: Image.asset(
            "assets/man.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 500),
      ],
    );
  }
}
