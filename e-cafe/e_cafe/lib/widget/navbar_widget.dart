import 'package:e_cafe/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.white,
      labelStyle: TitleCafe.copyWith(fontWeight: bold),
      unselectedLabelColor: Colors.black,
      indicatorColor: Colors.transparent,
      isScrollable: true,
      tabs: [
        Tab(
          child: Container(
            width: 116,
            height: 38,
            decoration: BoxDecoration(
              color: Color(0xffBE8C63),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text("All"),
            ),
          ),
        ),
        Tab(
          child: Container(
            width: 116,
            height: 38,
            decoration: BoxDecoration(
              color: Color(0xffBE8C63),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text("Makanan")),
          ),
        ),
        Tab(
          child: Container(
            width: 116,
            height: 38,
            decoration: BoxDecoration(
              color: Color(0xffBE8C63),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text("Minuman")),
          ),
        ),
        Tab(
          child: Container(
            width: 116,
            height: 38,
            decoration: BoxDecoration(
              color: Color(0xffBE8C63),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text("Booking")),
          ),
        ),
      ],
    );
  }
}
