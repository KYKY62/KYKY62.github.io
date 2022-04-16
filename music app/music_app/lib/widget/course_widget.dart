// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

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
          gradient: LinearGradient(
            colors: [
              Color(0xffF0F5FF),
              Color(0xffF2F6FF),
              Color(0xffAEBEDF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          )),
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
