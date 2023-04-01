import 'package:flutter/material.dart';

import '../components/itemPhraseModel.dart';
import '../models/ItemModels.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Items> phraseList = const [
    Items(
      sound: '1.wav',
      enName: 'What is your name?',
      jpName: 'Anata no namae wa nan desu ka?',
    ),
    Items(
      sound: '2.wav',
      enName: 'How old are you?',
      jpName: 'Anata wa nan-sai desu ka?',
    ),
    Items(
      sound: '3.wav',
      enName: 'What is your favourite food?',
      jpName: 'Anata no suki na tabemono wa nan desu ka?',
    ),
    Items(
      sound: '4.wav',
      enName: 'Do you play sports?',
      jpName: 'upōtsu wo shimasu ka?',
    ),
    Items(
      sound: '5.wav',
      enName: 'Nice to meet you.',
      jpName: 'Hajimemashite',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phraseList.length,
        itemBuilder: (context, index) {
          return PhraseUI(
            phrase: phraseList[index],
            color: const Color(0xFF299BF9),
            path: 'phrases',
          );
        },
      ),
    );
  }
}
