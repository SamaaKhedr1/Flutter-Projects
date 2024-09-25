import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TuneModel
{
  final String sound;
  final Color color;
  const TuneModel({required this.sound,required this.color});

  playSound()
  {
    final player=AudioPlayer();
    player.play(AssetSource(sound));
  }
}