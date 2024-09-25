import 'package:flutter/material.dart';
import 'package:tunes_player_app/Components/tune_item.dart';
import 'package:tunes_player_app/Model/tune_model.dart';

class TunesPage extends StatelessWidget {
  const TunesPage({super.key});
  final List<TuneModel> tunes=const[
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter Tune",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff253238),
        elevation: 0,   // No shadow
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
