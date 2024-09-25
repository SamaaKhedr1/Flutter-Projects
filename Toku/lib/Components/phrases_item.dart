import 'package:flutter/cupertino.dart';
import '../models/item_model.dart';
import 'item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.color, required this.item,});
  final Color color;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: item),
    );

  }
}