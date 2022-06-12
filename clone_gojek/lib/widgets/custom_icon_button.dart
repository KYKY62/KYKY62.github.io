import 'package:clone_gojek/common/my_colors.dart';
import 'package:clone_gojek/common/my_font_size.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String IconPath;
  final String text;

  CustomIcon({
    required this.IconPath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          Image.asset(
            IconPath,
            height: 33,
            width: 33,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              color: MyColors.white,
              fontSize: MyFontSize.medium1,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
