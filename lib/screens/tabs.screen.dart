import 'package:app/screens/product.tab.screen.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: softBlack,
        appBar: AppBar(
          backgroundColor: softBlack,
          title: Text(
            'Let\'s eat',
            style: TextStyle(color: white),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: orange,
            indicatorWeight: 6.0,
            onTap: (index) {
              setState(() {
                switch (index) {
                  case 0:
                    break;
                  case 1:
                    break;
                  case 2:
                    break;
                  case 3:
                    break;
                  case 4:
                    break;
                  case 5:
                    break;
                  case 6:
                    break;
                  default:
                }
              });
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'Chicken',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Beef',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Pork',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Juice',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Virgin Cocktail',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Beer',
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductTabScreen(
              filterKey: "chicken",
            ),
            ProductTabScreen(
              filterKey: "beef",
            ),
            ProductTabScreen(
              filterKey: "pork",
            ),
            ProductTabScreen(
              filterKey: "juice",
            ),
            ProductTabScreen(
              filterKey: "cocktail",
            ),
            ProductTabScreen(
              filterKey: "beer",
            )
          ],
        ),
      ),
    );
  }
}
