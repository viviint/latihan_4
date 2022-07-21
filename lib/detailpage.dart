import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/model/booksmodel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:latihan_4/readpage.dart';
import 'package:latihan_4/widget/genreselect.dart';

class DetailPage extends StatelessWidget {
  int idBook;

  DetailPage({Key? key, required this.idBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedData = BooksModel.booksmodel.firstWhere((e) => e.id == idBook);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        title: Text(
          "${selectedData.title}",
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
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image.network("${selectedData.image}"),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${selectedData.title}",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "${selectedData.subtitle}",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: RatingBar.builder(
                initialRating: selectedData.rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: selectedData.genre.length,
                    itemBuilder: (context, index) =>
                        BooksSelect(genreselect: selectedData.genre[index])),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ButtonTheme(
                  minWidth: 300,
                  height: 70,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.indigo)),
                    color: Colors.white,
                    textColor: Colors.indigo,
                    child: Text("Read Book",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Get.to(ReadPage(detail: selectedData));
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Summary',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                Text(selectedData.summary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
