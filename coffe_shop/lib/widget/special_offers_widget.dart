<<<<<<< HEAD
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables
=======
// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
>>>>>>> 7e6a9bc91dc1b2ea39519c3a5d2dbbd5c54c29d6

import 'package:flutter/material.dart';

class SpecialOffersWidget extends StatelessWidget {
<<<<<<< HEAD
  final String gambar;

  SpecialOffersWidget({required this.gambar});
=======
  final gambar;

  SpecialOffersWidget({this.gambar});
>>>>>>> 7e6a9bc91dc1b2ea39519c3a5d2dbbd5c54c29d6

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Color(0xffFFF6EA),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                bottom: 18,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  gambar,
                  width: MediaQuery.of(context).size.width * 0.4,
                  // height: 100,
                ),
              ),
            ),
            SizedBox(width: 14),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffE8630A),
                    ),
                    child: Center(
                      child: Text(
                        "Discount Sale",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Buy to Caffe Latte Get",
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(
                    "One Coffe Machito Free",
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
