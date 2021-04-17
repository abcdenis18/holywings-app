import 'package:app/screens/about.us.screen.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:app/widgets/custom.image.dart';
import 'package:app/widgets/menu.profile.item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CustomImage(
                        imageUrl:
                            'https://wallpaperaccess.com/full/2213424.jpg',
                        height: 10,
                        width: 10,
                        radius: BorderRadius.circular(40),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Denis Fajar Sidik',
                            style: TextStyle(
                              color: white,
                              fontSize: size * 1.7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '081310424252',
                            style: TextStyle(
                              color: white,
                              fontSize: size * 1.5,
                            ),
                          ),
                          Text(
                            'denisfajar24@gmail.com',
                            style: TextStyle(
                              color: white,
                              fontSize: size * 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
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
                    child: Icon(
                      AntDesign.edit,
                      color: darkGrey,
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: size * 24,
              //   width: SizeConfig.screenWidth,
              //   child: Center(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: <Widget>[
              //         CustomImage(
              //           imageUrl:
              //               'https://wallpaperaccess.com/full/2213424.jpg',
              //           height: 13,
              //           width: 13,
              //           radius: BorderRadius.circular(40),
              //         ),
              //         SizedBox(
              //           height: 15,
              //         ),
              //         Text(
              //           'Denis Fajar Sidik',
              //           style: TextStyle(
              //             color: white,
              //             fontSize: size * 1.8,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         Text(
              //           '081310424252',
              //           style: TextStyle(
              //             color: white,
              //             fontSize: size * 1.65,
              //           ),
              //         ),
              //         Text(
              //           'denisfajar24@gmail.com',
              //           style: TextStyle(
              //             color: white,
              //             fontSize: size * 1.65,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              MenuProfileItem(
                icon: AntDesign.user,
                iconColor: white,
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Coming Soon :)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: lightGrey,
                      textColor: softBlack,
                      fontSize: 16.0);
                },
                text: 'My Account',
              ),
              MenuProfileItem(
                icon: AntDesign.bells,
                iconColor: Colors.yellow,
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Coming Soon :)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: lightGrey,
                      textColor: softBlack,
                      fontSize: 16.0);
                },
                text: 'Notifications',
              ),
              MenuProfileItem(
                icon: AntDesign.setting,
                iconColor: red,
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Coming Soon :)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: lightGrey,
                      textColor: softBlack,
                      fontSize: 16.0);
                },
                text: 'Settings',
              ),
              MenuProfileItem(
                icon: AntDesign.like2,
                iconColor: Colors.blue,
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Coming Soon :)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: lightGrey,
                      textColor: softBlack,
                      fontSize: 16.0);
                },
                text: 'Rate Us',
              ),
              MenuProfileItem(
                icon: AntDesign.notification,
                iconColor: Colors.orange,
                onTap: () => Get.to(
                  AboutUsScreen(),
                ),
                text: 'About Us',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
