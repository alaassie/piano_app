import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player_app/models/color_note.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({super.key, required this.colorNote});
  final ColorNote colorNote;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(colorNote.soundNote));
        },
        child: Container(
          width: double.infinity,
          color: colorNote.color,
        ),
      ),
    );
  }
}
