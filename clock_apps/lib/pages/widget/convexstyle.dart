import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';

class ConvexStyle extends StyleHook {
  @override
  double get activeIconSize => 24;

  @override
  double get activeIconMargin => 20;

  @override
  double get iconSize => 24;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(fontSize: 18, color: color);
  }
}
