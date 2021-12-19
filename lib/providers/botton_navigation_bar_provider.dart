import 'package:flutter/widgets.dart';

class FurnitureBottonNavigationBarProvider extends ChangeNotifier{
  int index = 0;
  changeIndex(int i){
    index = i;
    notifyListeners();
  }
}