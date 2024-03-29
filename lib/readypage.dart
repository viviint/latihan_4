import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/loadingpage.dart';

class Ready extends StatefulWidget {
  const Ready({Key? key}) : super(key: key);

  @override
  _ReadyState createState() => _ReadyState();
}

class _ReadyState extends State<Ready> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.6,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ready.png'), fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "You are ready to go",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const Text("Congratulations,any interesting topics ",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )),
          const Text(
            "will be shortly in your hands.",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ButtonTheme(
              minWidth: 400,
              height: 67,
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo)),
                color: Colors.indigo,
                textColor: Colors.white,
                child: const Text("Finish",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () {
                  {
                    Get.to(Loading());
                  }
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
