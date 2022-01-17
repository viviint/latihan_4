import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelect extends StatelessWidget {
  final String title;
  CategorySelect({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25),
      child: Container(
        width: 83,
        height: 25,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.indigo[200],
        ),
      ),
    );
  }
}
