import 'package:flutter/material.dart';

class WidgetBtn extends StatelessWidget {
  final String text;
  final int warna;

  const WidgetBtn(
    this.text,
    this.warna,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(warna),
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffFFE500),
          ),
        ),
      ),
    );
  }
}
