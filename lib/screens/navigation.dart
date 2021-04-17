import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tab.navigator.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  String _currentPage = "home";
  List<String> pageKeys = ["home", "news", "tabs", "profile"];
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "home": GlobalKey<NavigatorState>(),
    "news": GlobalKey<NavigatorState>(),
    "tabs": GlobalKey<NavigatorState>(),
    "profile": GlobalKey<NavigatorState>(),
  };

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _selectedTab(String currentScreen, int index) {
    if (currentScreen == _currentPage) {
      _navigatorKeys[currentScreen]
          .currentState
          .popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              'Holywings',
              style: TextStyle(color: softBlack),
            ),
            content: new Text('Do you want to exit from the app?'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text(
                  'Cancel',
                  style: TextStyle(color: softBlack),
                ),
              ),
              new FlatButton(
                onPressed: () {},
                child: new Text(
                  'Yes',
                  style: TextStyle(color: softBlack),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          _buildOffstageNavigator("home"),
          _buildOffstageNavigator("news"),
          _buildOffstageNavigator("tabs"),
          _buildOffstageNavigator("profile"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: softBlack,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _selectedTab(pageKeys[index], index);
        },
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: size * 2.5,
              width: size * 2.5,
              child: _selectedIndex == 0
                  ? Image.asset(
                      'assets/images/home_on.png',
                    )
                  : Image.asset(
                      'assets/images/home_off.png',
                      color: darkGrey,
                    ),
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: size * 2.5,
              width: size * 2.5,
              child: _selectedIndex == 1
                  ? Image.asset(
                      'assets/images/news_on.png',
                      color: orange,
                    )
                  : Image.asset(
                      'assets/images/news_off.png',
                      color: darkGrey,
                    ),
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: size * 2.5,
              width: size * 2.5,
              child: _selectedIndex == 2
                  ? Image.asset(
                      'assets/images/restaurant_on.png',
                      color: orange,
                    )
                  : Image.asset(
                      'assets/images/restaurant_off.png',
                      color: darkGrey,
                    ),
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: size * 2.5,
              width: size * 2.5,
              child: _selectedIndex == 3
                  ? Image.asset(
                      'assets/images/user_on.png',
                      color: orange,
                    )
                  : Image.asset(
                      'assets/images/user_off.png',
                      color: darkGrey,
                    ),
            ),
            title: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
