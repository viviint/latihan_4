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
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Get.back();
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25, top: 34),
            child: Text(
              'Save',
              style: TextStyle(color: Colors.indigo, fontSize: 18),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/todo.jpg'))),
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Display Namme',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Todoroki Shoto'),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Shoto'),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('your@gmail.com'),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Phone',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('+12345665432'),
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Date Birth',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(''),
                    ],
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
