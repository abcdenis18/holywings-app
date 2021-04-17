import 'package:app/models/articles.dart';
import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';

import 'custom.image.dart';

class ArticleItemCard extends StatelessWidget {
  final Articles article;
  const ArticleItemCard({this.article});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: double.infinity,
        height: size * 20,
        decoration: BoxDecoration(
          color: lightBlack,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              CustomImage(
                imageUrl: '${article.imgUrl}',
                height: 16,
                width: 15,
                radius: BorderRadius.circular(20),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${article.title}',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: size * 1.65,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${article.contetnt.substring(0, 95)}....',
                      style: TextStyle(
                        color: lightGrey,
                        fontSize: size * 1.5
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
