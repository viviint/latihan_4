import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/page1.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/page2.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/page3.dart';
import 'package:latihan_4/settingspage.dart';

class Bottommenu extends StatefulWidget {
  const Bottommenu({Key? key}) : super(key: key);

  @override
  _BottommenuState createState() => _BottommenuState();
}

class _BottommenuState extends State<Bottommenu> {
  int currentIndex = 0;
  final List<Widget> body = [One(), SearcH(), Library()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        title: const Text(
          "    AudioBooks.",
          style: TextStyle(
              color: Colors.indigo, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        leading: IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 45,
              ),
            ),
            onPressed: () {}),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Setting()));
            },
          ),
        ],
      ),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.indigo,
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            activeIcon: Icon(Icons.search_outlined, color: Colors.indigo),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: 'Library',
              activeIcon: Icon(
                Icons.library_books_outlined,
                color: Colors.indigo,
              )),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
