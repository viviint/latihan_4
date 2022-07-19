import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/errorpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeON extends StatelessWidget {
  final String imge;
  final String title;
  final String subtitle;
  final int index;
  final Function()? onTap;

  HomeON(
      {this.imge = "",
      this.title = "",
      this.subtitle = "",
      this.index = 0,
      this.onTap});

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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 36),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: ColorTransitionEffect(
              dotColor: Colors.indigo,
              activeDotColor: Colors.orange,
              radius: 10,
              dotHeight: 10,
              dotWidth: 10),
        ),
        if (index < 2) ...[
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 160,
                height: 68,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.transparent)),
                  color: Colors.white,
                  textColor: Colors.indigo,
                  child: Text("skip",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Get.offAll(ErroR());
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 160,
                height: 68,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.indigo)),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: const Text("Next",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: onTap,
                ),
              ),
            ],
          )
        ] else ...[
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 300,
                height: 68,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.indigo)),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: const Text("Lets Get Started",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: onTap,
                ),
              ),
            ],
          )
        ]
      ],
    )));
  }
}
