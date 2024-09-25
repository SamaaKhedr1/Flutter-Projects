import 'package:flutter/material.dart';
import 'package:toku/Screens/family_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';

import '../Components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Toku"),
      ),
      body: Column(
        children: [
          Category(
            onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const NumbersPage();
                }
                )
                );
              },
              text:"Numbers",
              color:const Color(0xffEF9235)),

          Category(
            onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const FamilyMembersPage();
                })
                );
              },
              text: "Family Members",
              color: const Color(0xff558B37)),

          Category(

              text:"Colors",
              color:const Color(0xff79359F)),



          Category(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return const PhrasesPage();
                }
                ),
                );
              },
              text: "Phrases",
              color: const Color(0xff50ADC7)),

        ],
      ),
    );
  }
}

