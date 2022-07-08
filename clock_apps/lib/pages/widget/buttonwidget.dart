import 'package:clock_apps/provider/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetBtn extends StatelessWidget {
  final String text;
  final int Warna;

  WidgetBtn(
    this.text,
    this.Warna,
  );

  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<TimerProvider>(context, listen: false);
    return Container(
      width: 70,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(Warna),
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xffFFE500),
          ),
        ),
      ),
    );
  }
}
