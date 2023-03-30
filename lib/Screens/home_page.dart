import 'package:flutter/material.dart';
import 'package:toku/Screens/Numbers_page.dart';
import 'package:toku/Screens/colors_Page.dart';
import 'package:toku/Screens/family_membersPage.dart';

import '../components/categories.dart';
import 'PhrasesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Language Translation"),
      ),
      body: Column(
        children: [
          Categories(
            color: Colors.orange,
            text: "Numbers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Categories(
            color: const Color(0xFF69AD44),
            text: "Family Members",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          Categories(
            color: Colors.purple,
            text: "Colors",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          Categories(
            color: const Color(0xFF299BF9),
            text: "Phrases",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 77),
            child: Text(' by Moustafa Hesham'),
          )
        ],
      ),
    );
  }
}
