import 'package:app/styles/app.colors.dart';
import 'package:app/styles/app.constant.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: white,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: "${searchTxt}",
        hintStyle: TextStyle(
          color: darkGrey,
          fontWeight: FontWeight.normal,
        ),
        fillColor: lightBlack,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        prefixIcon: Icon(
          Icons.search,
          color: orange,
        ),
      ),
    );
  }
}
