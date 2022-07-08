import 'package:clock_apps/pages/countdown_page.dart';
import 'package:clock_apps/pages/myalarm.page.dart';
import 'package:clock_apps/pages/stopwatch_page.dart';
import 'package:clock_apps/pages/widget/convexstyle.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget customNavBar() {
      return StyleProvider(
        style: ConvexStyle(),
        child: ConvexAppBar(
          backgroundColor: const Color(0xff1A1F38),
          activeColor: const Color(0xffFFE500),
          style: TabStyle.fixed,
          elevation: 0,
          curveSize: 0,
          height: 100,
          initialActiveIndex: 1,
          onTap: (int i) {
            setState(() {
              currentIndex = i;
            });
          },
          items: const [
            TabItem(icon: Icons.alarm, title: 'Alarm'),
            TabItem(icon: Icons.timer, title: 'Stopwatch'),
            TabItem(icon: Icons.timelapse, title: 'Countdown'),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const MyAlarm();
        case 1:
          return const MystopWatch();
        case 2:
          return const MyCountdow();
        default:
          return const MystopWatch();
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1A1F38),
        bottomNavigationBar: customNavBar(),
        body: body(),
      ),
    );
  }
}
