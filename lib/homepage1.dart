import 'package:flutter/material.dart';
import 'package:latihan_4/widget/homeonboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [];
  int _pageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    pages = [
      HomeON(
        title: "Tittle One",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/firstpage.png",
        index: 0,
      ),
      HomeON(
        title: "Tittle Two",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/secondpage.png",
        index: 1,
      ),
      HomeON(
        title: "Tittle Three",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/thirdpage.png",
        index: 2,
      )
    ];
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                _pageIndex = value;

                if (_pageIndex < pages.length) {}
              });
            },
            children: pages,
          ),
        ],
      ),
    );
  }
}
