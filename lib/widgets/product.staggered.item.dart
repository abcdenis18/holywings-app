import 'package:app/models/product.dart';
import 'package:app/screens/product.detail.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductStaggeredItem extends StatelessWidget {
  final Product product;
  const ProductStaggeredItem({this.product});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return InkWell(
      onTap: () {
        Get.to(ProductDetail(
          product: product,
        ));
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: product.urlImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.65),
                    Colors.white.withOpacity(0.1)
                  ]),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${product.name}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size * 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: size * 5,
                        ),
                        Container(
                          height: size * 4,
                          width: size * 5.5,
                          decoration: BoxDecoration(
                            color: orange.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '${product.price} K',
                              style: TextStyle(
                                color: white,
                                fontSize: size * 1.65,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${product.favorite}',
                              style: TextStyle(
                                  color: white, fontSize: size * 1.75),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
