import 'package:e_cafe/utils/theme.dart';
import 'package:e_cafe/widget/navbar_widget.dart';
import 'package:e_cafe/widget/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 44,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.format_align_left,
                color: Primarycolor,
              ),
            ),
            Row(
              children: [
                Text(
                  "e - ",
                  style: TitleCafe1.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  "café",
                  style: TitleCafe.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/cart.png',
                width: 15,
              ),
            ),
          ],
        ),
      );
    }

    Widget SearchButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 66,
          left: 57,
          right: 58,
          bottom: 39,
        ),
        width: 313,
        height: 47,
        padding: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Color(0xffC4C4C4),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Primarycolor),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Primarycolor,
            ),
            hintText: "search",
            contentPadding: EdgeInsets.only(top: 8, bottom: 8),
            border: InputBorder.none,
            hintStyle: TitleCafe.copyWith(fontSize: 20),
          ),
        ),
      );
    }

    Widget Navbar() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 23),
            NavbarWidget(),
          ],
        ),
      );
    }

    Widget Product() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(left: 25, top: 47, bottom: 48),
          child: Row(
            children: [
              productcard(
                "Makanan",
                "Crispy Chicken",
                "Rp. 20.000",
                "assets/chicken.png",
              ),
              SizedBox(width: 13),
              productcard(
                "Minuman",
                "Ice Drink",
                "Rp. 15.000",
                "assets/icedrink.png",
              ),
              SizedBox(width: 13),
            ],
          ),
        ),
      );
    }

    Widget Populer() {
      return Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 23),
            child: Text(
              "Spesial For You",
              style: TitleCafe1.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 23),
                productcard(
                  "Minuman",
                  "Milk Shake",
                  "Rp. 19.000",
                  "assets/milk.png",
                ),
                SizedBox(width: 13),
                productcard(
                  "Minuman",
                  "Caffe Latte",
                  "Rp. 25.000",
                  "assets/coffe.png",
                ),
                SizedBox(width: 13),
              ],
            ),
          ),
        ],
      ));
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              header(),
              SearchButton(),
              Navbar(),
              Product(),
              Populer(),
            ],
          ),
        ),
      ),
    );
  }
}
