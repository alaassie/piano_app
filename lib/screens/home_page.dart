import 'package:flutter/material.dart';
import 'package:tune_player_app/components/color_box.dart';
import 'package:tune_player_app/models/color_note.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<ColorNote> piano = [
    ColorNote(color: const Color(0xffFF0000), soundNote: 'note1.wav'),
    ColorNote(color: const Color(0xffFF7F00), soundNote: 'note2.wav'),
    ColorNote(color: const Color(0xffFFFF00), soundNote: 'note3.wav'),
    ColorNote(color: const Color(0xff00FF00), soundNote: 'note4.wav'),
    ColorNote(color: const Color(0xff0000FF), soundNote: 'note5.wav'),
    ColorNote(color: const Color(0xff4B0082), soundNote: 'note6.wav'),
    ColorNote(color: const Color(0xff9400D3), soundNote: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 32, 58),
          title: const Center(
            child: Text(
              'Piano Player',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(children: [
          ColorBox(colorNote: piano[0]),
          ColorBox(colorNote: piano[1]),
          ColorBox(colorNote: piano[2]),
          ColorBox(colorNote: piano[3]),
          ColorBox(colorNote: piano[4]),
          ColorBox(colorNote: piano[5]),
          ColorBox(colorNote: piano[6]),
        ]));
  }
}
