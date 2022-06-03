// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Tidak ada pesan yang diterima",
        style: TextStyle(
            color: Colors.brown, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
