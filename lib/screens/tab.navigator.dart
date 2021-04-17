import 'package:app/screens/home.screen.dart';
import 'package:app/screens/news.screen.dart';
import 'package:app/screens/profile.screen.dart';
import 'package:app/screens/tabs.screen.dart';
import 'package:flutter/material.dart';

class TabNavigatorRoutes {
  static const String root = '/';
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  TabNavigator({this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget page;
    if (tabItem == "home") page = HomeScreen();
    if (tabItem == "news") page = NewsScreen();
    if (tabItem == "tabs") page = TabsScreen();
    if (tabItem == "profile") page = ProfileScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}
