import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends GetxController {
  var isFavorite = false.obs;

  var count = 0.obs;

  void increment() {
    count + 1;
  }

  void decrement() {
    count - 1;
    if (count <= 0) {
      count = 0.obs;
    }
  }

  void btnFav() {
    isFavorite.value = !isFavorite.value;
  }
}
