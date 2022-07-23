import 'package:flutter/material.dart';

class ClientWorkPhone extends StatelessWidget {
  const ClientWorkPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              textAlign: TextAlign.center,
              "Experience Work with Client\nAround the World",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                wordSpacing: 5,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'assets/peta.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
