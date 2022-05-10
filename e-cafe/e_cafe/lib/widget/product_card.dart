import 'package:e_cafe/utils/theme.dart';
import 'package:flutter/material.dart';

class productcard extends StatelessWidget {
  final String kategory;
  final String namaProduct;
  final String harga;
  final String gambar;
  productcard(
    this.kategory,
    this.namaProduct,
    this.harga,
    this.gambar,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 251,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(gambar),
          ),
          SizedBox(height: 17),
          Container(
            margin: EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kategory,
                  style: TitleCafe1.copyWith(fontSize: 12),
                ),
                SizedBox(height: 7),
                Text(
                  namaProduct,
                  style: TitleCafe1.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  harga,
                  style: TitleCafe1.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23),
          Container(
            margin: EdgeInsets.only(left: 13),
            padding: EdgeInsets.symmetric(horizontal: 9),
            width: 82,
            height: 22,
            decoration: BoxDecoration(
              color: Color(0xff3A3845),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 12,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Primarycolor,
                  ),
                  child: Icon(
                    Icons.exposure_minus_1_outlined,
                    color: Colors.black,
                    size: 9,
                  ),
                ),
                Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 12,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Primarycolor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 9,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
