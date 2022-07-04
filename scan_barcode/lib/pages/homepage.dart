import 'package:flutter/material.dart';
import 'package:scan_barcode/pages/qrscanner.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'QR Scanner Reader',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const QRScanner())));
        },
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: const Center(child: Text('Open Scanner')),
        ),
      )),
    );
  }
}
