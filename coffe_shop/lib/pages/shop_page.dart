// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:coffe_shop/widget/cart_widget.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView(
          children: [
            CartWidget(
              name: "Cappucino",
              desc: "With Almond Milk",
              price: "\$4.98",
              gambar: "assets/c1.png",
              jumlah: 1,
            ),
            CartWidget(
              name: "Cappucino",
              desc: "With Soy Milk",
              price: "\$5.14",
              gambar: "assets/c2.png",
              jumlah: 2,
            ),
          ],
        ));
  }
}
