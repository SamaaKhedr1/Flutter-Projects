import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const BirthDayCard());
}
class BirthDayCard extends StatelessWidget {
  const BirthDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Birth Day Card"),
        ),
        backgroundColor: const Color(0xFFAA9344),
        body: const Center(
          child: Image(
            image: AssetImage('images/happy_birth_day.jpg'),
        ),
        ),
      ),
    );
  }
}
