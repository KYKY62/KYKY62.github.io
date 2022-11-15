import 'package:coffe_shop/bindings/product_binding.dart';
import 'package:coffe_shop/pages/desc_page.dart';
import 'package:coffe_shop/pages/main_page.dart';
import 'package:coffe_shop/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static var pageName = [
    GetPage(
      name: RouteName.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteName.desc,
      page: () => const DescPage(),
      binding: ProductBinding(),
      // binding: ProductBinding(),
    ),
  ];
}
