import 'package:coffe_shop/pages/favorite_page.dart';
import 'package:coffe_shop/pages/home_page.dart';
import 'package:coffe_shop/pages/notif_page.dart';
import 'package:coffe_shop/pages/profile_page.dart';
import 'package:coffe_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customNavBar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color(0xffEDE6DB),
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
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.home,
                  color: currentIndex == 0
                      ? const Color(0xffE8630A)
                      : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: currentIndex == 1
                      ? const Color(0xffE8630A)
                      : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.notifications_none,
                  color: currentIndex == 2
                      ? const Color(0xffE8630A)
                      : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.favorite_border,
                  color: currentIndex == 3
                      ? const Color(0xffE8630A)
                      : Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Icon(
                  Icons.people_outline,
                  color: currentIndex == 4
                      ? const Color(0xffE8630A)
                      : Colors.black,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return ShopPage();
        case 2:
          return const NotifPage();
        case 3:
          return const FavoritePage();
        case 4:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xffEDE6DB),
      bottomNavigationBar: customNavBar(),
      body: body(),
    );
  }
}
