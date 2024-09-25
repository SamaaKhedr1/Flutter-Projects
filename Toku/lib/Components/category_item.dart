import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text,this.color,this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        color: color,
        width: double.infinity,
        height: 65,
        alignment: Alignment.centerLeft,
        child: Text(text!,style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
      ),
    );
  }
}