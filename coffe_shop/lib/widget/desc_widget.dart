// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:coffe_shop/controller/product_controller.dart';
import 'package:flutter/material.dart';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DescWidget extends StatelessWidget {
  DescWidget({Key? key}) : super(key: key);
  final productC = Get.find<Products>();

  @override
  Widget build(BuildContext context) {
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
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Obx(
                        () => IconButton(
                          onPressed: () => productC.btnFav(),
                          icon: productC.isFavorite.value
                              ? Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.black,
                                ),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
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
                            onPressed: () => productC.decrement(),
                            icon: Icon(
                              Icons.remove,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            "${productC.count}",
                            style: TextStyle(fontSize: 20),
                          )),
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
                            onPressed: () => productC.increment(),
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
}
