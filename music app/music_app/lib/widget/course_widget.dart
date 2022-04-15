// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CourseWidget extends StatelessWidget {
  String nama;
  String gambar;

  CourseWidget(this.nama, this.gambar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 84,
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffffffff),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            width: 59,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "In class",
                style: SearchtextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "48 Members",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: semiBold,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
