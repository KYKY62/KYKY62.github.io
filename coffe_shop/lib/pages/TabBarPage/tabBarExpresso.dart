// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:coffe_shop/widget/cappucino_widget.dart';
import 'package:coffe_shop/widget/special_offers_widget.dart';
import 'package:flutter/material.dart';

class TabBarExpresso extends StatelessWidget {
  const TabBarExpresso({Key? key}) : super(key: key);

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
                    name: "Short Macchiato",
                    desc: "With a little mixture of steamed milk",
                    price: "\$5.35",
                    gambar: "assets/short.png",
                  ),
                  CappucinoCategories(
                    name: "Long Macchiato",
                    desc: "With double shot espresso",
                    price: "\$5.34",
                    gambar: "assets/long.png",
                  ),
                  CappucinoCategories(
                    name: "Piccolo",
                    desc: "With caffe latte",
                    price: "\$6.14",
                    gambar: "assets/piccolo.png",
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
