// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, dead_code

import 'package:coffe_shop/pages/favorite_page.dart';
import 'package:coffe_shop/pages/home_page.dart';
import 'package:coffe_shop/pages/notif_page.dart';
import 'package:coffe_shop/pages/profile_page.dart';
import 'package:coffe_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget CustomNavBar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Color(0xffEDE6DB),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.home,
                  color: currentIndex == 0 ? Color(0xffE8630A) : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: currentIndex == 1 ? Color(0xffE8630A) : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.notifications_none,
                  color: currentIndex == 2 ? Color(0xffE8630A) : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.favorite_border,
                  color: currentIndex == 3 ? Color(0xffE8630A) : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.people_outline,
                  color: currentIndex == 4 ? Color(0xffE8630A) : Colors.black,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget Body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ShopPage();
          break;
        case 2:
          return NotifPage();
          break;
        case 3:
          return FavoritePage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: Color(0xffEDE6DB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEDE6DB),
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/ss.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_important_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
      body: Body(),
    );
  }
}
