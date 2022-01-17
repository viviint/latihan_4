import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReleaSe extends StatefulWidget {
  const ReleaSe({Key? key}) : super(key: key);

  @override
  _ReleaSeState createState() => _ReleaSeState();
}

class _ReleaSeState extends State<ReleaSe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "New Releases",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        ),
        toolbarHeight: 90,
      ),
    );
  }
}
