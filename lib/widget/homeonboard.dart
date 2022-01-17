import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/errorpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeON extends StatelessWidget {
  final String imge;
  final String title;
  final String subtitle;
  final int index;

  HomeON({this.imge = "", this.title = "", this.subtitle = "", this.index = 0});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: index);
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Image(
          height: MediaQuery.of(context).size.height / 1.6,
          width: double.infinity,
          image: AssetImage(imge),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ColorTransitionEffect(
                dotColor: Colors.indigo,
                activeDotColor: Colors.orange,
                radius: 10,
                dotHeight: 10,
                dotWidth: 10),
          ),
        ),
        if (index < 2) ...[
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 160,
                  height: 65,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.transparent)),
                    color: Colors.white,
                    textColor: Colors.indigo,
                    child: Text("skip", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Get.offAll(ErroR());
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 160,
                  height: 65,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.indigo.shade700)),
                    color: Colors.indigo.shade700,
                    textColor: Colors.white,
                    child: const Text("Next", style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ] else ...[
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 160,
                  height: 65,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.indigo.shade700)),
                    color: Colors.indigo.shade700,
                    textColor: Colors.white,
                    child: const Text("Lets Get Started",
                        style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Get.to(ErroR());
                    },
                  ),
                ),
              ],
            ),
          )
        ]
      ],
    )));
  }
}
