import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '../components/item_UI.dart';
import '../models/ItemModels.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Items> numberList = const [
    Items(
        sound: 'number_one_sound.mp3',
        enName: 'One',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi'),
    Items(
        sound: 'number_two_sound.mp3',
        enName: 'Two',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni'),
    Items(
        sound: 'number_three_sound.mp3',
        enName: 'Three',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'mittsu'),
    Items(
        sound: 'number_four_sound.mp3',
        enName: 'Four',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi'),
    Items(
        sound: 'number_five_sound.mp3',
        enName: 'Five',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go'),
    Items(
        sound: 'number_six_sound.mp3',
        enName: 'Six',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku'),
    Items(
        sound: 'number_seven_sound.mp3',
        enName: 'Seven',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'sebun'),
    Items(
        sound: 'number_eight_sound.mp3',
        enName: 'Eight',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi'),
    Items(
        sound: 'number_nine_sound.mp3',
        enName: 'Nine',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyū'),
    Items(
        sound: 'number_ten_sound.mp3',
        enName: 'Ten',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jū'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return ItemUI(
            number: numberList[index],
            color: const Color(0xffef9235),
            path: 'numbers',
          );
        },
      ),
    );
  }
}
