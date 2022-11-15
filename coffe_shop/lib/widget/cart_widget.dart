// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String gambar;
  final VoidCallback onDecrement;
  final String nama;
  final VoidCallback onIncrement;

  const CartWidget({
    Key? key,
    required this.name,
    required this.desc,
    required this.price,
    required this.gambar,
    required this.onDecrement,
    required this.nama,
    required this.onIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: responsiveWidth,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xffFFF6EA),
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
                        style: const TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            color: Colors.brown,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        price,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: onDecrement,
                    icon: const Icon(Icons.remove),
                  ),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: onIncrement,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
