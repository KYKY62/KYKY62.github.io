// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:website/widget/Laptop/bottom_header.dart';
import 'package:website/widget/Laptop/client_review.dart';
import 'package:website/widget/Laptop/clientwork.dart';
import 'package:website/widget/Laptop/introduction.dart';
import 'package:website/widget/Laptop/my_contact.dart';
import 'package:website/widget/Laptop/myabout.dart';
import 'package:website/widget/Laptop/myportofolio.dart';
import 'package:website/widget/SmartPhone/bottomheader_phone.dart';
import 'package:website/widget/SmartPhone/clientreview_phone.dart';
import 'package:website/widget/SmartPhone/clientwork_phone.dart';
import 'package:website/widget/SmartPhone/introduction_phone.dart';
import 'package:website/widget/SmartPhone/myabout_phone.dart';
import 'package:website/widget/SmartPhone/mycontact_phone.dart';
import 'package:website/widget/SmartPhone/myportofolio.phone.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 600 && constraints.minWidth >= 320) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              children: [
                const IntroductionPhone(),
                const MyPortofolioPhone(),
                const ClientWorkPhone(),
                const MyAboutPhone(),
                const ClientReviewPhone(),
                const MyContactPhone(),
                const BottomHeaderPhone(),
              ],
            ),
          ),
        );
      } else {
        return Scaffold(
            body: ListView(
          children: [
            const IntroductionWidget(),
            const MyPortofolio(),
            const ClientWork(),
            const MyAbout(),
            const ClientReview(),
            const MyContact(),
            const BottomHeader(),
          ],
        ));
      }
    });
  }
}
