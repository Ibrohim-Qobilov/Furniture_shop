import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/components/size_config.dart';
import './start_page.dart';

abstract class StartPageViewModel extends State<StartPage> {
  Padding makeyour() {
    return Padding(
      padding:
          EdgeInsets.only(left: getUniqueWidth(30), top: getUniqueHeight(231)),
      child: DefaultTextStyle(
        style:
            TextStyle(fontSize: 24, color: Colors.grey, fontFamily: "Gelasio"),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Make your',
              speed: const Duration(microseconds: 30000),
            ),
          ],
          totalRepeatCount: 1,
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
    );
  }

  Padding homeFunc() {
    return Padding(
      padding:
          EdgeInsets.only(left: getUniqueWidth(30), top: getUniqueHeight(15.0)),
      child: const Text(
        'HOME BEAUTIFUL',
        style:
            TextStyle(fontSize: 24, color: Colors.black, fontFamily: "Gelasio"),
      ),
    );
  }

  Padding longText() {
    return Padding(
      padding: EdgeInsets.only(
          left: getUniqueWidth(100), top: getUniqueHeight(30.0)),
      child: const Text(
        'The best simple place where you discover most wonderful furnitures and make your home beautiful',
        style: TextStyle(
            fontFamily: 'Gelasio', color: Color(0xff808080), fontSize: 18),
      ),
    );
    // Add your state and logic here
  }
  textFunk(text, color, ){
    return Text(text);
  }
}
