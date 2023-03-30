import 'package:flutter/material.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(const LanguageTranslationApp());
}

class LanguageTranslationApp extends StatelessWidget {
  const LanguageTranslationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
