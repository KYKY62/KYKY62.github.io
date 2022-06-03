// ignore_for_file: prefer_const_constructors

import 'package:coffe_shop/widget/favorite_widget.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDE6DB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEDE6DB),
        centerTitle: true,
        title: Text(
          "Your Favorite Coffe",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          FavoriteWidget(
            nama: "Short Macchiato",
            harga: "\$5.35",
            gambar: "assets/short.png",
          ),
          FavoriteWidget(
            nama: "Cappucino",
            harga: "\$5.14",
            gambar: "assets/c2.png",
          ),
          FavoriteWidget(
            nama: "Piccolo",
            harga: "\$6.14",
            gambar: "assets/piccolo.png",
          ),
        ],
      ),
    );
  }
}
