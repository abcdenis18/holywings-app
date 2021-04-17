import 'package:app/utils/size.config.dart';
import 'package:app/widgets/custom.image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final List bannerList;
  const BannerSlider({this.bannerList});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return CarouselSlider.builder(
      itemCount: bannerList.length,
      itemBuilder: (context, index, p) {
        return CustomImage(
          imageUrl: bannerList[index],
          width: double.infinity,
          height: size * 15,
          radius: BorderRadius.circular(15),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        aspectRatio: 2.0,
        initialPage: 0,
      ),
    );
  }
}
