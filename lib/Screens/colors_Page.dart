import 'package:flutter/material.dart';

import '../components/item_UI.dart';
import '../models/ItemModels.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  final List<Items> colorList = [
    const Items(
        sound: 'black.wav',
        enName: 'Black',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuroiro'),
    const Items(
        sound: 'brown.wav',
        enName: 'Brown',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo'),
    const Items(
        sound: 'dusty_yellow.wav',
        enName: 'Dusty Yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Kusunda kiiro'),
    const Items(
        sound: 'gray.wav',
        enName: 'Grey',
        image: 'assets/images/colors/color_grey.png',
        jpName: 'Haiiro'),
    const Items(
        sound: 'green.wav',
        enName: 'Green',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midoriiro'),
    const Items(
        sound: 'red.wav',
        enName: 'Red',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Akairo'),
    const Items(
        sound: 'white.wav',
        enName: 'White',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroiro'),
    const Items(
        sound: 'yellow.wav',
        enName: 'Yellow',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return ItemUI(
            number: colorList[index],
            color: const Color(0xFF9F6DA8),
            path: "colors",
          );
        },
      ),
    );
  }
}
