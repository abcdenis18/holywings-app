import 'package:app/providers/articles.provider.dart';
import 'package:app/screens/splash.screen.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/material_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ArticlesProvider(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Holywings',
        theme: ThemeData(
          primarySwatch: generateMaterialColor(orange),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
