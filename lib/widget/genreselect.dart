import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksSelect extends StatefulWidget {
  final String genreselect;
  BooksSelect({Key? key, required this.genreselect}) : super(key: key);

  @override
  _BooksSelectState createState() => _BooksSelectState();
}

class _BooksSelectState extends State<BooksSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Container(
        width: 100,
        height: 27,
        child: Center(
          child: Text(
            widget.genreselect,
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
