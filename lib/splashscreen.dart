import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/errorpage.dart';
import 'package:latihan_4/homepage1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  next() {
    Future.delayed(Duration(seconds: 4), () async {
      Get.to(() => Home());
    });
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    next();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset('assets/circlelogo.png'),
          )
        ],
      ),
    );
  }
}
