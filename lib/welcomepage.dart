import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/personalization.dart';
import 'package:latihan_4/readypage.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bulet.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text("Welcome !",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 100),
            child: RichText(
                maxLines: 3,
                overflow: TextOverflow.clip,
                text: const TextSpan(children: [
                  TextSpan(
                      text: "Find what",
                      style: TextStyle(
                          fontSize: 47,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: Colors.indigo)),
                  TextSpan(
                      text: " you are",
                      style: TextStyle(
                          fontSize: 47,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: Colors.indigo)),
                  TextSpan(
                      text: " looking for",
                      style: TextStyle(
                          fontSize: 47,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: Colors.indigo)),
                ])),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "By personalize your account,we can",
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      TextSpan(
                          text: " help you to find what you like.",
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ])),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 14),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo.shade700)),
                color: Colors.indigo.shade700,
                textColor: Colors.white,
                child: const Text("Personalize Your Account",
                    style: TextStyle(fontSize: 15)),
                onPressed: () {
                  {
                    Get.to(PersonaL());
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 12),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo)),
                color: Colors.white,
                textColor: Colors.indigo,
                child: const Text("Skip", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  {
                    Get.to(Ready());
                  }
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
