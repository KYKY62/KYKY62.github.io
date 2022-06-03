import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  final String nama;
  final String harga;
  final String gambar;

  FavoriteWidget({
    required this.nama,
    required this.harga,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: responsiveWidth,
        height: 84,
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
                  padding: EdgeInsets.only(top: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        harga,
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFF6EA),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
