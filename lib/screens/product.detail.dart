import 'package:app/models/product.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:app/widgets/custom.image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({this.product});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      body: Stack(
        children: [
          InkWell(
            onTap: () {
            },
            child: CustomImage(
              imageUrl: product.urlImg,
              height: 35,
              width: SizeConfig.screenWidth,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(size * 1),
            child: SafeArea(
              child: InkWell(
                onTap: () => Get.back(),
                child: Container(
                  height: size * 5,
                  width: size * 5,
                  decoration: BoxDecoration(
                    color: strongBlack.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: SizeConfig.screenHeight - size * 30,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${product.name}',
                      style: TextStyle(
                        color: white,
                        fontSize: size * 2,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: size * 4,
                          width: size * 7,
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              '${product.price} K',
                              style: TextStyle(
                                color: white,
                                fontSize: size * 1.8,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: size * 4,
                          width: size * 8.5,
                          decoration: BoxDecoration(
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: softBlack,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${product.favorite}',
                                style: TextStyle(
                                  color: softBlack,
                                  fontSize: size * 1.8,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.screenHeight / 3,
                      child: SingleChildScrollView(
                        child: Container(
                          child: Text(
                            '${product.desc}',
                            style: TextStyle(
                              fontSize: size * 1.65,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
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
                child: Container(
                  height: size * 5.5,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                          color: white,
                          letterSpacing: 0.5,
                          fontSize: size * 1.7),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
