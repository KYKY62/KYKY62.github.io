// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:coffe_shop/controller/product_controller.dart';
import 'package:coffe_shop/widget/cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  final cartbyid1 = Get.put(Products(), tag: "cartbyid1");
  final cartbyid2 = Get.put(Products(), tag: "cartbyid2");
  final cartbyid3 = Get.put(Products(), tag: "cartbyid3");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEDE6DB),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffEDE6DB),
            centerTitle: true,
            title: Text(
              "Checkout",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffFFF6EA),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xffE8630A),
            ),
            onPressed: () {},
          ),
          body: Obx(
            () => ListView(
              children: [
                CartWidget(
                  name: "Cappucino",
                  desc: "With Almond Milk",
                  price: "\$4.98",
                  gambar: "assets/c1.png",
                  onDecrement: () => cartbyid1.decrement(),
                  nama: "${cartbyid1.count}",
                  onIncrement: () => cartbyid1.increment(),
                ),
                CartWidget(
                  name: "Cappucino",
                  desc: "With Soy Milk",
                  price: "\$5.14",
                  gambar: "assets/c2.png",
                  onDecrement: () => cartbyid2.decrement(),
                  nama: "${cartbyid2.count}",
                  onIncrement: () => cartbyid2.increment(),
                ),
                CartWidget(
                  name: "Short Macchiato",
                  desc: "With Soy Milk",
                  price: "\$5.35",
                  gambar: "assets/short.png",
                  onDecrement: () => cartbyid3.decrement(),
                  nama: "${cartbyid3.count}",
                  onIncrement: () => cartbyid3.increment(),
                ),
              ],
            ),
          )),
    );
  }
}
