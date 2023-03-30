import 'package:flutter/material.dart';
import '../components/item_UI.dart';
import '../models/ItemModels.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Items> familyList = const [
    Items(
        sound: 'father.wav',
        enName: 'Father',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichi'),
    Items(
        sound: 'daughter.wav',
        enName: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume'),
    Items(
        sound: 'grand_father.wav',
        enName: 'Grand Father',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu'),
    Items(
        sound: 'mother.wav',
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Haha'),
    Items(
        sound: 'grandmother.wav',
        enName: 'Grand Mother',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo'),
    Items(
        sound: 'olderbother.wav',
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani'),
    Items(
        sound: 'oldersister.wav',
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane'),
    Items(
        sound: 'son.wav',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko'),
    Items(
        sound: 'youngerbrohter.wav',
        enName: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto'),
    Items(
        sound: 'youngersister.wav',
        enName: 'Younger Sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (context, index) {
          return ItemUI(
            number: familyList[index],
            color: const Color(0xFF69AD44),
            path: "family_members",
          );
        },
      ),
    );
  }
}
