import 'package:coffe_shop/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Products());
  }
}
