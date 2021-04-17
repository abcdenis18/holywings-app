import 'package:app/models/articles.dart';
import 'package:app/styles/app.constant.dart';
import 'package:get/get.dart';

class TagController extends GetxController {
  var selected = false.obs;
  var currentTab = "All".obs;
  var articlesList =
      List<Articles>.from(articles.map((x) => Articles.fromJson(x))).obs;

  void onClick(String item, bool selected) {
    currentTab.value = item;
    this.selected.value = selected;
    if (currentTab.value == "All") {
      this.articlesList.value =
          List<Articles>.from(articles.map((x) => Articles.fromJson(x)));
      update();

      print("test1");
    } else {
      var filter = articles.where((item) => item['type'] == currentTab.value);
      this.articlesList.value = List<Articles>.from(filter.map((x) => Articles.fromJson(x)));
      update();
      print("${articlesList}");
    }
    update();
  }
}
