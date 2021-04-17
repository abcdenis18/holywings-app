import 'package:app/models/articles.dart';
import 'package:app/styles/app.constant.dart';
import 'package:flutter/cupertino.dart';

class ArticlesProvider extends ChangeNotifier {
  List<Articles> articleList;

  List<Articles> get getArticlesList {
    return this.articleList;
  }

  void initArcticles() {
    this.articleList =
        List<Articles>.from(articles.map((x) => Articles.fromJson(x)));
    notifyListeners();
  }

  void filterArticles(String filter) {
    if (filter == "All") {
      this.articleList = List<Articles>.from(articles.map((x) => Articles.fromJson(x)));
    } else {
      var filterList = articles.where((item) => item['type'] == filter);
      this.articleList = List<Articles>.from(filterList.map((x) => Articles.fromJson(x)));
    }
    notifyListeners();
  }
}
