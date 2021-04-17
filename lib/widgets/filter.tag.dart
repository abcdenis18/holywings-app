import 'package:app/controller/tag.articles.controller.dart';
import 'package:app/providers/articles.provider.dart';
import 'package:app/styles/app.colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterTags extends StatefulWidget {
  final List categoryList;
  FilterTags(this.categoryList);

  @override
  _FilterTagsState createState() => _FilterTagsState();
}

class _FilterTagsState extends State<FilterTags> {
  ArticlesProvider articlesProvider;
  TagController tagController = TagController();
  String selectedChoice = "All";

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.categoryList.forEach(
      (item) {
        choices.add(
          Container(
            padding: const EdgeInsets.only(right: 10.0),
            child: ChoiceChip(
              label: Text(item),
              labelStyle: TextStyle(
                  color: selectedChoice == item? Colors.white : Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              backgroundColor: Color(0xffededed),
              selectedColor: orange,
              selected: selectedChoice == item,
              onSelected: (selected) {
                articlesProvider.filterArticles(item);
                setState(() {
                  selectedChoice = item;
                  print(item);
                });
              },
            ),
          ),
        );
      },
    );
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    articlesProvider = Provider.of<ArticlesProvider>(context);
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}