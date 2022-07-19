import 'package:flutter/material.dart';
import 'package:website/widget/Laptop/clientwork.dart';
import 'package:website/widget/Laptop/introduction.dart';
import 'package:website/widget/Laptop/myportofolio.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const IntroductionWidget(),
        const MyPortofolio(),
        const ClientWork()
      ],
    ));
  }
}
