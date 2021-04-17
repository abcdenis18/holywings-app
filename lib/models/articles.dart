class Articles {
  String title;
  String contetnt;
  String imgUrl;
  String date;
  String type;

  Articles({this.title, this.contetnt, this.date, this.imgUrl, this.type});

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        title: json["title"],
        contetnt: json["content"],
        imgUrl: json["imgUrl"],
        date: json["date"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": contetnt,
        "imgUrl": imgUrl,
        "date": date,
        "type": type,
      };

}