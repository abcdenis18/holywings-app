import 'package:app/models/product.dart';
import 'package:app/screens/product.detail.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

import 'custom.image.dart';

class PopularItem extends StatelessWidget {
  final Product productItem;
  const PopularItem({this.productItem});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: InkWell(
        onTap: () {
          Get.to(ProductDetail(
            product: productItem,
          ));
        },
        // child: Container(
        //   height: 200,
        //   width: 100,
        //   decoration: BoxDecoration(
        //       color: Colors.transparent,
        //       borderRadius: BorderRadius.all(Radius.circular(15))),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.all(Radius.circular(15)),
        //     child: FadeInImage.memoryNetwork(
        //       placeholder: kTransparentImage,
        //       image: productItem.urlImg,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        child: Container(
          height: size * 24,
          width: size * 22.5,
          decoration: BoxDecoration(
              color: lightBlack, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImage(
                imageUrl: productItem.urlImg,
                height: 15,
                width: 22.6,
                radius: BorderRadius.circular(20),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  '${productItem.name}',
                  style: TextStyle(color: white, fontSize: size * 1.75),
                ),
                subtitle: Row(
                  children: <Widget>[
                    SizedBox(
                      height: size * 5,
                    ),
                    Container(
                      height: size * 3,
                      width: size * 5.5,
                      decoration: BoxDecoration(
                        color: orange.withOpacity(0.85),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '${productItem.price} K',
                          style: TextStyle(color: white, fontSize: size * 1.65),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
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
                          '${productItem.favorite}',
                          style: TextStyle(color: white, fontSize: size * 1.75),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
