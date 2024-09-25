import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import '../Components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) :super(key: key);
  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Kimasu ka',
      enName: "Are you coming",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    ItemModel(
      jpName: 'Wasurezu ni kōdoku shite kudasai',
      enName: 'Do not forget to subscribe',
      sound: "phrases/dont_forget_to_subscribe.wav",
    ),
    ItemModel(
      jpName: 'ご気分はいかがですか',
      enName: 'How are you feeling',
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    ItemModel(
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'I love programming',
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    ItemModel(
      jpName: 'プログラミングは簡単です',
      enName: 'Programming is easy',
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    ItemModel(
      jpName: 'あなたの名前は何ですか',
      enName: 'What is your name',
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going',
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    ItemModel(
      jpName: 'Hai, kimasu',
      enName: 'Yes i am coming',
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  //final Number one = const Number("assets/images/numbers/number_one.png",'ichi','one'),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar
          (
          title: const Text("Phrases"),
          backgroundColor: const Color(0xff46322B),
        ),
        body:
        //  بديل للميثود اللي تحت وبتعمل نفس عمل اللوب
        ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xff50ADC7),
              item: phrases[index],
            );
          }
          ,)
      //children: getList(numbers),

    );
  }
}