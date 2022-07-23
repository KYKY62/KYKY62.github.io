import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ClientReviewPhone extends StatelessWidget {
  const ClientReviewPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            height: 208,
            decoration: BoxDecoration(
              color: const Color(0xffABC9FF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  MdiIcons.formatQuoteOpen,
                  color: Colors.white,
                  size: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        constraints.minWidth <= 320
                            ? "Fast and efficient seller.\nHe is very humble I would\nhighly recommend who need\ndevelopment your app"
                            : "Fast and efficient seller. He is\nvery humble I would highly\nrecommend who need\ndevelopment your app",
                        style: const TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 60),
                      const Text(
                        "mastercraft802",
                        style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 2,
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
            top: constraints.minWidth <= 320 ? 125 : 75,
            left: constraints.minWidth <= 425 ? 175 : 225,
            child: Image.asset(
              "assets/man.png",
              width: constraints.minWidth <= 320 ? 140 : 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
