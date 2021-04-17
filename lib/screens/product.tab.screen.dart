import 'package:app/models/product.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/styles/app.constant.dart';
import 'package:app/utils/size.config.dart';
import 'package:app/widgets/product.staggered.item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductTabScreen extends StatefulWidget {
  final String filterKey;
  ProductTabScreen({Key key, this.filterKey}) : super(key: key);

  @override
  _ProductTabScreenState createState() => _ProductTabScreenState();
}

class _ProductTabScreenState extends State<ProductTabScreen> {
  List<Product> productList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var filterList = foodsList.where((item) => item['type'] == widget.filterKey);
    productList =
        List<Product>.from(filterList.map((x) => Product.fromJson(x)));
  }
  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            var product = productList[index];
            return ProductStaggeredItem(
              product: product,
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
          },
        ),
      ),
    );
  }
}
