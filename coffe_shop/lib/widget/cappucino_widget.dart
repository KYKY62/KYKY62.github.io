// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CappucinoCategories extends StatelessWidget {
  final name;
  final desc;
  final price;
  final gambar;

  const CappucinoCategories(
      {Key? key, this.name, this.desc, this.price, this.gambar})
      : super(key: key);

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
            color: const Color(0xffFFF6EA),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Center(
                  child: Image.asset(
                    gambar,
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  desc,
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        price,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 34,
                    height: 34,
                    margin: const EdgeInsets.only(
                      right: 5,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE8630A),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.add),
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
