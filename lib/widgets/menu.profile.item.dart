import 'package:app/styles/app.colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MenuProfileItem extends StatelessWidget {
  final String text;
  final iconColor;
  final icon;
  final onTap;
  const MenuProfileItem({this.text, this.icon, this.onTap, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          '${text}',
          style: TextStyle(
            color: white,
          ),
        ),
        trailing: Icon(
          AntDesign.right,
          color: white,
          size: 15,
        ),
      ),
    );
  }
}
