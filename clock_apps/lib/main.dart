import 'package:clock_apps/pages/main_page.dart';
import 'package:clock_apps/pages/splash_page.dart';
import 'package:clock_apps/provider/timer_provider.dart';
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
        ChangeNotifierProvider(create: (context) => TimerProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Mysplash(),
          '/main': (context) => const MainPage()
        },
      ),
    );
  }
}
