// ignore_for_file: prefer_const_constructors

import 'package:coffe_shop/pages/desc_page.dart';
import 'package:coffe_shop/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MainPage(),
          '/desc': (context) => DescPage(),
        },
      ),
    );
  }
}

class PageProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
