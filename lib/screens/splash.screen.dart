import 'dart:async';

import 'package:app/providers/articles.provider.dart';
import 'package:app/screens/navigation.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ArticlesProvider articlesProvider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      articlesProvider.initArcticles();
      Get.off(Navigation());
    });
  }

  @override
  Widget build(BuildContext context) {
    articlesProvider = Provider.of<ArticlesProvider>(context);
    SizeConfig().init(context);
    double size = SizeConfig.defaultSize;


    return Scaffold(
      backgroundColor: strongBlack,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: size * 30,
                width: size * 30,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SpinKitCircle(
                    color: white,
                    size: size * 4,
                  ),
                  SizedBox(
                    height: size * 0.5,
                  ),
                  Text(
                    'Versi 1.0.0',
                    style: TextStyle(color: white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
