import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/widget/homeonboard.dart';

class Home extends StatefulWidget {
  int _pageIndex = 0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [];

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget._pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    pages = [
      HomeON(
        title: "Tittle One",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/firstpage.png",
        index: 0,
        onTap: () {
          setState(() {
            pageController.animateToPage(pageController.page!.toInt() + 1,
                duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          });
        },
      ),
      HomeON(
        title: "Tittle Two",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/secondpage.png",
        index: 1,
        onTap: () {
          setState(() {
            setState(() {
              pageController.animateToPage(pageController.page!.toInt() + 1,
                  duration: Duration(milliseconds: 400), curve: Curves.easeIn);
            });
          });
        },
      ),
      HomeON(
        title: "Tittle Three",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/thirdpage.png",
        index: 2,
        onTap: () {
          Get.offNamed("/loginn");
        },
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
                widget._pageIndex = value;
                if (widget._pageIndex < pages.length) {}
              });
            },
            children: pages,
          ),
        ],
      ),
    );
  }
}
