import 'package:app/widgets/article.item.card.dart';
import 'package:flutter/material.dart';

class ArticlesCardsListViews extends StatelessWidget {
  final List articleList;
  const ArticlesCardsListViews({this.articleList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articleList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var article = articleList[index];

          return ArticleItemCard(
            article: article,
          );
        },
      ),
    );
  }
}
