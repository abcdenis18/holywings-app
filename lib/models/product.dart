class Product {
  String name;
  double favorite;
  int price;
  String desc;
  String urlImg;
  String type;

  Product({this.name, this.favorite, this.price, this.desc, this.urlImg, this.type});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        favorite: json["fav"],
        price: json["price"],
        desc: json["desc"],
        urlImg: json["imgUrl"],
        type: json['type']
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "fav": favorite,
        "price": price,
        "desc": desc,
        "imgUrl": urlImg,
        'type': type
      };
}
