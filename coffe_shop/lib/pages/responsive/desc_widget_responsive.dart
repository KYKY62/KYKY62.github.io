import 'package:coffe_shop/controller/product_controller.dart';
import 'package:flutter/material.dart';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DescWidgetResponsive extends StatelessWidget {
  DescWidgetResponsive({Key? key}) : super(key: key);

  final productC = Get.find<Products>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/c1.png',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ),
              Positioned(
                // top: 0,
                // left: 10,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Obx(
                        () => IconButton(
                          onPressed: () => productC.btnFav(),
                          icon: (productC.isFavorite.value)
                              ? const Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.red,
                                )
                              : const Icon(
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
                left: 80,
                bottom: 20,
                child: BlurryContainer(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 100,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.15),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Cappucino",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "With Sprinkle Cinnamon Powder",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 18,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemBuilder: (context, _) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                              unratedColor: Colors.black54,
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.person_sharp,
                              size: 14,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              "304",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 80,
                bottom: 20,
                child: Container(
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE8630A),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () => productC.decrement(),
                            icon: const Icon(
                              Icons.remove,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            "${productC.count}",
                            style: const TextStyle(fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () => productC.increment(),
                            icon: const Icon(
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
