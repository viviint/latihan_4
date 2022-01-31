import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';

class ReleaSe extends StatefulWidget {
  final catController = Get.put(BooksController());
  ReleaSe({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AlignedGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                itemCount: BooksModel.booksmodel.length,
                itemBuilder: (context, index) {
                  BooksModel booksModel = BooksModel.booksmodel[index];
                  return GestureDetector(
                      onTap: () => Get.to(Detail(idBook: hashCode)),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(booksModel.image))),
                            ),
                            Center(
                              child: Text(
                                booksModel.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
