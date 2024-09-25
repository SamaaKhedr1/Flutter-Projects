import 'package:flutter/material.dart';
import '../models/item_model.dart';


class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(item.jpName,
              style: const TextStyle(fontSize: 20,color: Colors.white),),
            Text(item.enName,style: const TextStyle(fontSize: 20,color: Colors.white),),
          ],
        ),
      ),
        const Spacer(flex: 1,),
        //const Padding(
        //padding: EdgeInsets.only(right: 16),
        IconButton(
          onPressed: (){
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,),
        ),
      ],
    );
  }
}