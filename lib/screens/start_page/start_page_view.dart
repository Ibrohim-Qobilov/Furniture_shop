import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/components/size_config.dart';

import 'package:furniture_shop/core/constants/color.dart';
import 'package:furniture_shop/core/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
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
            textFunc(0.0, 210.0, 0.0, 40.0, "Make Your", ConstColor.greyColor60,
                18.0, 'galasio', FontWeight.normal),
            textFunc(0.0, 20.0, 0.0, 40.0, "HOME BEAUTIFUL",
                ConstColor.blackColor30, 24.0, "Galasio", FontWeight.normal),
            textFunc(
                0.0,
                30.0,
                0.0,
                60.0,
                "The best simple place where you discover most wonderful furnitures\nand make your home beautiful",
                ConstColor.greyColor60,
                18.0,
                "Galasio",
                FontWeight.w400),
            Padding(
              padding: EdgeInsets.only(
                top: getUniqueHeight(200),
                left: getUniqueWidth(100),
              ),
              child: AnimatedButton(
                enabled: true,
                color: ConstColor.blackColor30,
                height: getUniqueHeight(50),
                width: getUniqueWidth(100),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const FurnitueBottomNarBar()));
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: ConstColor.whiteColor,
                    fontSize: 18.0,
                    fontFamily: 'Galasio',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
