import 'package:app/widgets/popular.item.dart';
import 'package:flutter/material.dart';

class PopularViews extends StatelessWidget {
  final List productList;
  const PopularViews({this.productList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        var productItem = productList[index];

        return PopularItem(
          productItem: productItem,
        );
      },
    );
  }
}
