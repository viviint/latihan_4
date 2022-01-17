import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/homepage1.dart';
import 'package:latihan_4/loginpage.dart';
import 'package:latihan_4/signuppage.dart';
import 'package:latihan_4/splashscreen.dart';

class ErroR extends StatefulWidget {
  const ErroR({Key? key}) : super(key: key);

  @override
  _ErroRState createState() => _ErroRState();
}

class _ErroRState extends State<ErroR> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 95,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text("Error", style: TextStyle(color: Colors.black)),
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
            )),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/fourthpage.png'),
                        fit: BoxFit.cover))),
          ),
          const Center(
              child: Text("Ops! Something Went Wrong",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo))),
          SizedBox(height: 10),
          const Text(
            "Please chechk your internet connection",
            maxLines: 2,
          ),
          const Text("and try again"),
          SizedBox(height: 12),
          ButtonTheme(
            minWidth: 300,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.indigo)),
              color: Colors.white,
              textColor: Colors.indigo,
              child: Text("Retry", style: TextStyle(fontSize: 15)),
              onPressed: () {
                Get.offAll(Login());
              },
            ),
          )
        ])));
  }
}
