// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String gambar;
  final int jumlah;

  CartWidget({
    required this.name,
    required this.desc,
    required this.price,
    required this.gambar,
    required this.jumlah,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: responsiveWidth,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xffFFF6EA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Image.asset(
                gambar,
                width: responsiveWidth * 0.3,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        desc,
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 15),
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                  ),
                  Text(
                    jumlah.toString(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
