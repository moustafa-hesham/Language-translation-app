import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/phrases_model.dart';

class PhraseUI extends StatelessWidget {
  const PhraseUI({
    Key? key,
    required this.color,
    required this.path,
    required this.phrase,
  }) : super(key: key);
  final ItemsPhrase phrase;
  final Color color;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  softWrap: true,
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/$path/');
              player.play(phrase.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
