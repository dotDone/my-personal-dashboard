import 'package:flutter/material.dart';

enum NavigationItem {
  homepage,
  welcome,
  profile,
  view2,
  signin,
  signup,
}

class NavigationController extends ChangeNotifier {
  String screenName = '/';
  NavigationItem _navigationItem = NavigationItem.welcome;

  NavigationItem get navigationItem => _navigationItem;

  void changeScreen(String newScreenName, NavigationItem navigationItem) {
    screenName = newScreenName;
    _navigationItem = navigationItem;
    notifyListeners();
  }
}
