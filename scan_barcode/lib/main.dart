import 'package:flutter/material.dart';
import 'package:scan_barcode/pages/homepage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MaterialApp(
    home: MyHome(),
    debugShowCheckedModeBanner: false,
  ));
}
