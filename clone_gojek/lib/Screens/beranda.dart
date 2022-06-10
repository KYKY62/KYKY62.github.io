import 'package:flutter/material.dart';
import 'package:clone_gojek/common/my_colors.dart';
import 'package:clone_gojek/common/my_font_size.dart';
import 'package:clone_gojek/common/my_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabBarList = [
    "Beranda",
    "Promo",
    "Pesanan",
    "Chat",
  ];

  int tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget tabBarItem(int index) {
      return Expanded(
        child: Container(
          margin: EdgeInsets.all(5),
          height: double.infinity,
          decoration: BoxDecoration(
              color:
                  (tabBarIndex == index) ? MyColors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(100)),
          child: InkWell(
            onTap: () {
              setState(() {
                tabBarIndex = index;
              });
            },
            child: Center(
              child: Text(
                tabBarList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (tabBarIndex == index)
                        ? MyColors.darkGreen
                        : MyColors.white,
                    fontSize: MyFontSize.medium1,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
      ),
    );
  }
}
