import 'package:flutter/cupertino.dart';

class Items {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  const Items(
      {required this.sound,
      required this.enName,
      @required this.image,
      required this.jpName});
}
