import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toku/models/item_model.dart';

import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key,required this.item,required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(item.image!)),
          Expanded(
              child: ItemInfo(item: item,)),
        ],
      ),
    );
  }
}







