// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:music_app/provider/page_provider.dart';
import 'package:music_app/widget/course_widget.dart';
import 'package:provider/provider.dart';

import '../utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 44,
          right: 10,
          left: 10,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Backgroundcolor2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Choose ",
                  style: PrimarytextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "Course!",
                  style: PurpletextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 44,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Searchbox,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Search",
                      style: PrimarytextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/groupsearch.png',
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            CourseWidget("Guitar", 'assets/gitar.png'),
            CourseWidget("Piano", 'assets/piano.png'),
            CourseWidget("Saxophone", 'assets/saxophone.png'),
            CourseWidget("Violin", 'assets/violin.png'),
            CourseWidget("Drum", 'assets/drum.png'),
          ],
        ),
      );
    }

    Widget CustomNavBar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: pageProvider.currentIndex,
          onTap: (value) {
            pageProvider.currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: pageProvider.currentIndex == 0
                    ? Color(0xff5B38D8)
                    : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/pin.png',
                width: 20,
                color: pageProvider.currentIndex == 1
                    ? Color(0xff5B38D8)
                    : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/notif.png',
                width: 20,
                color: pageProvider.currentIndex == 2
                    ? Color(0xff5B38D8)
                    : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile.png',
                width: 20,
                color: pageProvider.currentIndex == 3
                    ? Color(0xff5B38D8)
                    : Color(0xff808191),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: BackgroundColor1,
      body: ListView(
        children: [
          content(),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
