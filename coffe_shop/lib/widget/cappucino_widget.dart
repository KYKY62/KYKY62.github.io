// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CappucinoCategories extends StatelessWidget {
  const CappucinoCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, '/desc');
      }),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Container(
          width: 189,
          height: 210,
          decoration: BoxDecoration(
            color: Color(0xffFFF6EA),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset('assets/ss.png'),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Cappucino",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "With Almond Milk",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "\$4.98",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 34,
                    height: 34,
                    margin: EdgeInsets.only(
                      right: 5,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE8630A),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
