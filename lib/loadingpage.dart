import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/bottommenu.dart';
import 'package:latihan_4/errorpage.dart';
import 'package:latihan_4/homepage1.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  next() {
    Future.delayed(Duration(seconds: 4), () async {
      Get.to(() => Bottommenu());
    });
  }

  @override
  void initState() {
    next();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("assets/circlelogo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
