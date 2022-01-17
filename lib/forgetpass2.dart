import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/welcomepage.dart';

class Sent extends StatefulWidget {
  const Sent({Key? key}) : super(key: key);

  @override
  _SentState createState() => _SentState();
}

class _SentState extends State<Sent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/circlelogo.png'))),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 21, bottom: 7),
              child: Text(
                "Email Sent",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: RichText(
              maxLines: 2,
              overflow: TextOverflow.clip,
              text: const TextSpan(children: [
                TextSpan(
                    text: "We sent an email to",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                TextSpan(
                    text: " y***@gmail.com",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: " with a link to get back into your account.",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
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
              child: const Text("Close", style: TextStyle(fontSize: 15)),
              onPressed: () {
                Get.to(Welcome());
              },
            ),
          ),
        )
      ])),
    );
  }
}
