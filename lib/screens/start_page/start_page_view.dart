import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:furniture_shop/core/components/size_config.dart';
import 'package:furniture_shop/core/constants/color.dart';
import './start_page_view_model.dart';

class StartPageView extends StartPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/images.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getUniqueWidth(40), top: getUniqueHeight(210)),
              child: textFunk(
                  "Make Your", ConstColor.greyColor60, 18.0, "Gelasio",FontWeight.normal),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getUniqueWidth(40), top: getUniqueHeight(20.0)),
              child: textFunk(
                  "HOME BEAUTIFUL", ConstColor.blackColor30, 24.0, "Galasio",FontWeight.normal),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getUniqueWidth(60), top: getUniqueHeight(30.0)),
              child: textFunk(
                  "The best simple place where you discover most wonderful furnitures\nand make your home beautiful",
                  ConstColor.blackColor30,
                  18.0,
                  "Galasio",FontWeight.w300),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getUniqueHeight(180), left: getUniqueWidth(120)),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Get Started')),
            ),
          ],
        ),
      ),
    );
  }
}
