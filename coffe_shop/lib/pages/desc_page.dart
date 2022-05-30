// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:coffe_shop/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class DescPage extends StatefulWidget {
  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);

    Widget PictureDesc() {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/c1.png',
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  // top: 0,
                  // left: 10,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          color: product.isFavorite ? Colors.red : Colors.black,
                          onPressed: () {
                            product.btnFav();
                          },
                          icon: product.isFavorite
                              ? Icon(
                                  Icons.favorite,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  size: 20,
                                ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: BlurryContainer(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 100,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.15),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cappucino",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "With Sprinkle Cinnamon Powder",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemBuilder: (context, _) {
                                  return Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                },
                                unratedColor: Colors.black54,
                                onRatingUpdate: (rating) {},
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.person_sharp,
                                size: 12,
                                color: Colors.black,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "304",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  bottom: 10,
                  child: Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE8630A),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget SizeCup() {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Your Drink Size",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffE8630A),
                  ),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffE8630A),
                  ),
                  child: Center(
                    child: Text(
                      "M",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffE8630A),
                  ),
                  child: Center(
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

    Widget Description() {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            ReadMoreText(
              "Kapucino is a typical Italian drink made from espresso and milk, but other references also mention that capuccino originated from the coffee beans of the Turkish army left behind after the war led by Kara Mustapha Pasha in Vienna, Austria against the combined Polish-German army. A cappuccino is usually defined as 1/3 espresso, 1/3 heated milk and 1/3 milk whipped until frothy. Another definition says 1/3 espresso and 2/3 microfoam. A cappuccino is different from a latte macchiato, which consists mostly of milk and a little foam. Dry cappuccino contains less milk.) In Italy, cappuccino is drunk almost always only early in the morning for breakfast. In some other countries cappuccino is taken throughout the day or after dinner. In addition to a good espresso, the most important element in making a cappuccino is the texture and temperature of the milk. When a well-trained barista heats milk for a cappuccino, he or she must create a microfoam by introducing very fine foams of air into the milk. This makes the milk very smooth and sweet. Ideally the cappuccino is made in a ceramic coffee cup which has a much better heat retention than glass or paper",
              trimLines: 9,
              trimMode: TrimMode.Line,
              colorClickableText: Colors.blue,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      );
    }

    Widget BtnPrice() {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$4.98",
                  style: TextStyle(
                    fontSize: 20,
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
                color: Color(0xffE8630A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 16,
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
      backgroundColor: Color(0xffFFF6EA),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PictureDesc(),
              SizeCup(),
              Description(),
              BtnPrice(),
            ],
          ),
        ],
      )),
    );
  }
}
