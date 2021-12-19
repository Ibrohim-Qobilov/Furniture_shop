import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/components/size_config.dart';
import 'package:furniture_shop/core/constants/color.dart';
import './start_page.dart';

abstract class StartPageViewModel extends State<StartPage> {
  Padding textFunc(
      bottom, top, right, left, text, color, size, fontfamily, fontWeight) {
    return Padding(
      padding: EdgeInsets.only(
        left: getUniqueWidth(left),
        top: getUniqueHeight(top),
        right: getUniqueWidth(right),
        bottom: getUniqueHeight(bottom),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: fontfamily,
            fontSize: size,
            color: color,
            fontWeight: fontWeight),
      ),
    );
  }
}
