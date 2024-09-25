import 'package:flutter/material.dart';
import 'package:toku/Components/list_item.dart';
import 'package:toku/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}):super(key: key);
  final List<ItemModel> numbers=const [
    ItemModel(
      image: "assets/images/numbers/number_one.png",
      jpName: 'ichi',
      enName: "one",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemModel(
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemModel(
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemModel(
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemModel(
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];
  //final Number one = const Number("assets/images/numbers/number_one.png",'ichi','one'),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        title: const Text("Numbers"),
        backgroundColor: const Color(0xff46322B),
      ),
      body:
          //  بديل للميثود اللي تحت وبتعمل نفس عمل اللوب
        ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context,index)
          {
            return Item(
                item: numbers[index],
                color: const Color(0xffEF9235));

          }
          ,)
          //children: getList(numbers),
        
    );
  }
  /*List<Widget> getList(List<Number>numbers)
  {
    List<Item> itemsList=[];
    for(int i=0;i<numbers.length;i++)
      {
        itemsList.add(Item(number: numbers[i]));
      }
    return itemsList;
  } */
}

