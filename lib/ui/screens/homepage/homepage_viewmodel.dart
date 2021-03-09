import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/ui/screens/about_screen.dart';
import 'package:flutter_enzoconty/ui/screens/hobbies_screen.dart';
import 'package:flutter_enzoconty/ui/screens/timeline/timeline_view.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  int _selectedTabIndex = 0;
  int get selectedTabIndex => _selectedTabIndex;

  List<Widget> _screenList = [
    AboutScreen(),
    HobbiesScreen(),
    TimelineScreen(),
    Container(
      width: 500,
      height: 900,
      color: Colors.blue,
    ),
    Container(
      width: 500,
      height: 900,
      color: Colors.red,
    ),
    Container(
      width: 500,
      height: 900,
      color: Colors.pink,
    ),
  ];

  Widget displayTabScreen() {
    return _screenList[_selectedTabIndex];
  }

  void setSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }
}
