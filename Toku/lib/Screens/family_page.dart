import 'package:flutter/material.dart';
import 'package:toku/Components/list_item.dart';
import 'package:toku/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) :super(key: key);
  final List<ItemModel> family = const[
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'chich',
      enName: 'father',
      image: "assets/images/family_members/family_father.png",
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
      image: "assets/images/family_members/family_mother.png",
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Sofu',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Sobo',
      enName: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Ani',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brother.wav',
      jpName: 'Shita no musuko',
      enName: 'Younger Son',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Shita no musume',
      enName: 'Younger Daughter',
      image: 'assets/images/family_members/family_younger_sister.png',
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
          itemCount: family.length,
          itemBuilder: (context, index) {
            return Item(
                color: const Color(0xff558B37),
                item: family[index]);
          }
          ,)
      //children: getList(numbers),

    );
  }
}
