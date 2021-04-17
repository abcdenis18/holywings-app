import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class NavigationTabController extends GetxController {
  var currentTabIndex = 0.obs;
  var _currentPage = "home".obs;
  List<dynamic> pageKeys = ["home", "news", "tabs", "profile"].obs;
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "home": GlobalKey<NavigatorState>(),
    "news": GlobalKey<NavigatorState>(),
    "tabs": GlobalKey<NavigatorState>(),
    "profile": GlobalKey<NavigatorState>(),
  };

  void selectedTab() {
    if (pageKeys[currentTabIndex.toInt()] == _currentPage) {
      _navigatorKeys[pageKeys[currentTabIndex.toInt()]]
          .currentState
          .popUntil((route) => route.isFirst);
    } else {
      _currentPage = pageKeys[currentTabIndex.toInt()];
    }
  }
}
