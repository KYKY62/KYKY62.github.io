// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:coffe_shop/widget/cappucino_widget.dart';
import 'package:coffe_shop/widget/special_offers_widget.dart';
import 'package:flutter/material.dart';

class TabBarCapp extends StatelessWidget {
  const TabBarCapp({Key? key}) : super(key: key);

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
                children: const [
                  CappucinoCategories(
                    name: "Cappucino",
                    desc: "With Almond Milk",
                    price: "\$4.98",
                    gambar: "assets/c1.png",
                  ),
                  CappucinoCategories(
                    name: "Cappucino",
                    desc: "With Soy Milk",
                    price: "\$5.14",
                    gambar: "assets/c2.png",
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
