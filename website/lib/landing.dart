// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:website/widget/Laptop/client_review.dart';
import 'package:website/widget/Laptop/clientwork.dart';
import 'package:website/widget/Laptop/introduction.dart';
import 'package:website/widget/Laptop/my_contact.dart';
import 'package:website/widget/Laptop/myabout.dart';
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
        const ClientWork(),
        const MyAbout(),
        const ClientReview(),
        const MyContact(),
      ],
    ));
  }
}
