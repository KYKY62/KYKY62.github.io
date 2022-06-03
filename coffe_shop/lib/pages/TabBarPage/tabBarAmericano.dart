import 'package:coffe_shop/widget/cappucino_widget.dart';
import 'package:coffe_shop/widget/special_offers_widget.dart';
import 'package:flutter/material.dart';

class TabBarAmericano extends StatelessWidget {
  const TabBarAmericano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CappucinoCategories(
                    name: "Mocha",
                    desc: "With chocolate mixed with espresso and milk.",
                    price: "\$4.56",
                    gambar: "assets/mocha.png",
                  ),
                  CappucinoCategories(
                    name: "Cold brew",
                    desc: "Not too bitter and not too sour",
                    price: "\$5.80",
                    gambar: "assets/icebrew.png",
                  ),
                  CappucinoCategories(
                    name: "Cortado",
                    desc: "With Espresso milk and warm milk",
                    price: "\$3.67",
                    gambar: "assets/cortado.png",
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Special Offers",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SpecialOffersWidget(
              gambar: "assets/c1.png",
            ),
            SpecialOffersWidget(
              gambar: "assets/c2.png",
            ),
          ],
        ),
      ),
    );
  }
}
