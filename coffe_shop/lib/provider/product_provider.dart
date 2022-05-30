import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  bool isFavorite;

  Products({
    this.isFavorite = false,
  });

  void btnFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
