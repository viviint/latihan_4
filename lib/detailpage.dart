import 'package:flutter/material.dart';
import 'package:latihan_4/model/booksmodel.dart';

class Detail extends StatefulWidget {
  BooksModel detail;
  Detail({Key? key, required this.detail}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('1'),
      leading: Icon(Icons.arrow_back_ios),
    ));
  }
}
