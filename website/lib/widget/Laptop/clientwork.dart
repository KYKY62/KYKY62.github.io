import 'package:flutter/material.dart';

class ClientWork extends StatelessWidget {
  const ClientWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(40),
          child: Image.asset(
            'assets/peta.png',
            fit: BoxFit.cover,
          ),
        ),
        const Align(
          alignment: Alignment.topCenter,
          child: Text(
            textAlign: TextAlign.center,
            "Experience Work with Client\nAround the World",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
              wordSpacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}
