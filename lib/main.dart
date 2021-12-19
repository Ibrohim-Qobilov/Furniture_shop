import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:furniture_shop/screens/start_page/start_page.dart';
import 'package:furniture_shop/screens/start_page/start_page_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FurnitueBottomNarBar(),
    );
  }
}

