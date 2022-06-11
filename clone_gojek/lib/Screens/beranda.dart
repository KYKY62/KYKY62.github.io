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
  List<bool> tabBarBadgeList = [
    false,
    false,
    false,
    true,
  ];

  int tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: (tabBarIndex == index)
                      ? MyColors.white
                      : Colors.transparent,
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
            if (tabBarBadgeList[index])
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: MyColors.red,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1.5,
                      color: MyColors.white,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
          ],
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

    Widget searchBar() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyColors.whiteL2,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1.5,
                      color: MyColors.softGrey,
                    ),
                  ),
                  child: TextFormField(
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: MyColors.blackText,
                      ),
                      hintText: "Cari layanan, makanan, & tujuan",
                      hintStyle: TextStyle(
                        color: MyColors.grey,
                        fontSize: MyFontSize.medium2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/ic_indosend.png',
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
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
      body: ListView(
        children: [
          searchBar(),
        ],
      ),
    );
  }
}
