import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BorderRadius radius;

  const CustomImage({this.imageUrl, this.width,this.height, this.radius});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return InkWell(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: size * width,
          height: size * height,
          decoration: BoxDecoration(
            borderRadius: radius,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => Container(
          width: size * width,
          height: size * height,
          child: Center(
            child: SpinKitFadingCircle(
              color: lightGrey,
              size: size * 3,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
