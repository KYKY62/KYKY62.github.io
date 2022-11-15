import 'package:coffe_shop/pages/responsive/desc_widget_responsive.dart';
import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class DesktopDesk extends StatelessWidget {
  const DesktopDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget sizeCup() {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose Your Drink Size",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE8630A),
                  ),
                  child: const Center(
                    child: Text(
                      "S",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE8630A),
                  ),
                  child: const Center(
                    child: Text(
                      "M",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE8630A),
                  ),
                  child: const Center(
                    child: Text(
                      "L",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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

    Widget description() {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Description",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            ReadMoreText(
              "Kapucino is a typical Italian drink made from espresso and milk, but other references also mention that capuccino originated from the coffee beans of the Turkish army left behind after the war led by Kara Mustapha Pasha in Vienna, Austria against the combined Polish-German army. A cappuccino is usually defined as 1/3 espresso, 1/3 heated milk and 1/3 milk whipped until frothy. Another definition says 1/3 espresso and 2/3 microfoam. A cappuccino is different from a latte macchiato, which consists mostly of milk and a little foam. Dry cappuccino contains less milk.) In Italy, cappuccino is drunk almost always only early in the morning for breakfast. In some other countries cappuccino is taken throughout the day or after dinner. In addition to a good espresso, the most important element in making a cappuccino is the texture and temperature of the milk. When a well-trained barista heats milk for a cappuccino, he or she must create a microfoam by introducing very fine foams of air into the milk. This makes the milk very smooth and sweet. Ideally the cappuccino is made in a ceramic coffee cup which has a much better heat retention than glass or paper",
              trimLines: 4,
              trimMode: TrimMode.Line,
              colorClickableText: Colors.blue,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    }

    Widget btnPrice() {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "\$4.98",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffE8630A),
                  ),
                ),
              ],
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffE8630A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFF6EA),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DescWidgetResponsive(),
              sizeCup(),
              description(),
              btnPrice(),
            ],
          ),
        ],
      )),
    );
  }
}
