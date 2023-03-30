import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({Key? key, this.color, this.text, this.onTap}) : super(key: key);
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 130,
        width: double.infinity,
        color: color,
        // ignore: prefer_const_constructors
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
