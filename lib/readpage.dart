import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';

class ReadPage extends StatefulWidget {
  BooksModel detail;
  ReadPage({Key? key, required this.detail}) : super(key: key);

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        title: Text(
          "${widget.detail.title}",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Get.offAll(DetailPage(idBook: widget.detail.id));
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(widget.detail.story)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: Colors.transparent,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              label: ' '),
        ],
      ),
    );
    // bottomNavigationBar: Padding(
    //     padding: const EdgeInsets.all(10),
    //     child: BottomAppBar(
    //         child: Align(
    //       alignment: Alignment.bottomRight,
    //       child: Icon(Icons.bookmark_rounded),
    //     ))));
  }
}
