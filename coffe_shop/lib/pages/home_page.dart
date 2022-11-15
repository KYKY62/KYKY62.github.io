import 'package:coffe_shop/pages/TabBarPage/tabBarAmericano.dart';
import 'package:coffe_shop/pages/TabBarPage/tabBarCapp.dart';
import 'package:coffe_shop/pages/TabBarPage/tabBarExpresso.dart';
import 'package:coffe_shop/pages/responsive/desktop_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return const DesktopBody();
        } else {
          return SafeArea(
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Search Your",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Favourite Coffe",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  //todo Search Bar
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: double.infinity,
                          width: MediaQuery.of(context).size.width * 0.74,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Find Your Coffe",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(top: 3, bottom: 13),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffE8630A),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sort,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  TabBar(
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xffE8630A),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text("Cappucino"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xffE8630A),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "Americano",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xffE8630A),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "Expresso",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        TabBarCapp(),
                        TabBarAmericano(),
                        TabBarExpresso(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
