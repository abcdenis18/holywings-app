import 'dart:ui';

import 'package:app/controller/tag.articles.controller.dart';
import 'package:app/models/articles.dart';
import 'package:app/providers/articles.provider.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/styles/app.constant.dart';
import 'package:app/utils/size.config.dart';
import 'package:app/views/article.cards.listviews.dart';
import 'package:app/widgets/article.item.card.dart';
import 'package:app/widgets/custom.image.dart';
import 'package:app/widgets/filter.tag.dart';
import 'package:app/widgets/search.bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<Articles> articleList;

  @override
  void initState() {
    super.initState();
    articleList =
        List<Articles>.from(articles.map((x) => Articles.fromJson(x)));
  }

  @override
  Widget build(BuildContext context) {
    ArticlesProvider articlesProvider = Provider.of<ArticlesProvider>(context);
    TagController tagController = TagController();
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    FilterTags(categories),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ArticlesCardsListViews(
                articleList: articlesProvider.getArticlesList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class FilterTags extends StatefulWidget {
//   final List categoryList;
//   FilterTags(this.categoryList);

//   @override
//   _FilterTagsState createState() => _FilterTagsState();
// }

// class _FilterTagsState extends State<FilterTags> {
//   TagController tagController = TagController();
//   String selectedChoice = "All";

//   _buildChoiceList() {
//     List<Widget> choices = List();
//     widget.categoryList.forEach(
//       (item) {
//         choices.add(
//           Container(
//             padding: const EdgeInsets.only(right: 10.0),
//             child: ChoiceChip(
//               label: Text(item),
//               labelStyle: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.bold),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               backgroundColor: Color(0xffededed),
//               selectedColor: Colors.orange,
//               selected: selectedChoice == item,
//               onSelected: (selected) {
//                 setState(() {
//                   selectedChoice = item;
//                   print(item);
//                 });
//               },
//             ),
//           ),
//         );
//       },
//     );
//     return choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: _buildChoiceList(),
//     );
//   }
// }
