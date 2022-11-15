// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:coffe_shop/pages/responsive/desktop_special.dart';
import 'package:flutter/material.dart';

class SpecialOffersWidget extends StatelessWidget {
  final gambar;

  const SpecialOffersWidget({Key? key, this.gambar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return DestopSpecialOffer(
            gambar: gambar,
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: const Color(0xffFFF6EA),
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
                  const SizedBox(width: 14),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffE8630A),
                          ),
                          child: const Center(
                            child: Text(
                              "Discount Sale",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Buy to Caffe Latte Get",
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        const Text(
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
      },
    );
  }
}
