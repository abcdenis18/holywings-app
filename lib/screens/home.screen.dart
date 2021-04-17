import 'package:app/models/product.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/styles/app.constant.dart';
import 'package:app/utils/size.config.dart';
import 'package:app/views/banner.slider.dart';
import 'package:app/views/popular.views.dart';
import 'package:app/widgets/custom.image.dart';
import 'package:app/widgets/popular.item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> popularList;
  List<Product> recommendList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    popularList =
        List<Product>.from(popularFoods.map((x) => Product.fromJson(x)));
    recommendList =
        List<Product>.from(recommendFoods.map((x) => Product.fromJson(x)));
  }

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome,',
                            style: TextStyle(color: lightGrey),
                          ),
                          Text(
                            'Denis Fajar Sidik',
                            style: TextStyle(color: white),
                          ),
                        ],
                      ),
                      CustomImage(
                        imageUrl:
                            'https://wallpaperaccess.com/full/2213424.jpg',
                        width: 5.5,
                        height: 5.5,
                        radius: BorderRadius.circular(12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BannerSlider(bannerList: urlBanner),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${homeText}',
                    style: TextStyle(color: white, fontSize: size * 2.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${popular}',
                        style: TextStyle(color: white, fontSize: size * 2),
                      ),
                      InkWell(
                        onTap: () => Fluttertoast.showToast(
                            msg: "Coming Soon :)",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: lightGrey,
                            textColor: softBlack,
                            fontSize: 16.0),
                        child: Text(
                          '${viewAll}',
                          style:
                              TextStyle(color: darkGrey, fontSize: size * 1.8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    child: PopularViews(
                      productList: popularList,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${recommend}',
                        style: TextStyle(color: white, fontSize: size * 2),
                      ),
                      InkWell(
                        onTap: () => Fluttertoast.showToast(
                            msg: "Coming Soon :)",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: lightGrey,
                            textColor: softBlack,
                            fontSize: 16.0),
                        child: Text(
                          '${viewAll}',
                          style: TextStyle(color: darkGrey, fontSize: size * 1.8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    child: PopularViews(
                      productList: recommendList,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
