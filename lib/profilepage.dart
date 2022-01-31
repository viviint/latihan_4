import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/settingspage.dart';

class Profileview extends StatefulWidget {
  const Profileview({Key? key}) : super(key: key);

  @override
  _ProfileviewState createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Get.to(Setting());
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 34),
            child: Text(
              'Save',
              style: TextStyle(color: Colors.indigo, fontSize: 18),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(''))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 45),
                  child: Text(
                    'Display Namme',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text(''),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 45),
                  child: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text(''),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 45),
                  child: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text('your@gmail.com'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 45),
                  child: Text(
                    'Phone',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text('+12345665432'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 45),
                  child: Text(
                    'Date Birth',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
