
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/constants/icons.dart';
import 'package:furniture_shop/screens/home_page/home_page.dart';
import 'package:furniture_shop/screens/notification_page/notification_page.dart';
import 'package:furniture_shop/screens/profile_page/profile_page.dart';
import 'package:furniture_shop/screens/save_page/save_page.dart';

class FurnitueBottomNarBar extends StatefulWidget {
  const FurnitueBottomNarBar({Key? key}) : super(key: key);

  @override
  _FurnitueBottomNarBarState createState() => _FurnitueBottomNarBarState();
}

class _FurnitueBottomNarBarState extends State<FurnitueBottomNarBar> {
  int _furnitureAppIndexOfIcon = 0;
  List<Widget> _listOfPage = [];
  Widget? homePage, savePage, notificationPage,  profilePage;
  

  @override
  void initState() {
    homePage =  HomePage();
    savePage =  SavePage();
    notificationPage =  NotificationPage();
    profilePage =  ProfilePage();
   
    _listOfPage = [
      homePage!,
      savePage!,
      notificationPage!,
      profilePage!,
      
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_furnitureAppIndexOfIcon],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 0 ? IconName.homeActive : IconName.home,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 1 ? IconName.saveActive : IconName.save,
          label: "",
        ),
        BottomNavigationBarItem(
          icon:
              _furnitureAppIndexOfIcon == 2 ? IconName.notificationActive : IconName.notification,
          label: "",
        ),
        
        BottomNavigationBarItem(
          icon: _furnitureAppIndexOfIcon == 3
              ? IconName.profileActive
              : IconName.profole,
          label: "",
        ),
      ],
      type: BottomNavigationBarType.shifting,
      iconSize: 20,
      elevation: 20,
      onTap: (index) {
        setState(() {
          _furnitureAppIndexOfIcon = index;
        });
      },
    );
  }
}