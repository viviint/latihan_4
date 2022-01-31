import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/bottommenu.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/model/booksmodel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:latihan_4/readpage.dart';
import 'package:latihan_4/widget/genreselect.dart';

class Detail extends StatelessWidget {
  int idBook;

  Detail({Key? key, required this.idBook}) : super(key: key);

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
            Get.to(Bottommenu());
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Text(
                "${selectedData.title}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(children: [
              Text(
                "${selectedData.subtitle}",
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: RatingBar.builder(
              initialRating: selectedData.rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 25),
            child: Row(
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
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 10),
                child: ButtonTheme(
                  minWidth: 170,
                  height: 70,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.indigo.shade700)),
                    color: Colors.indigo.shade700,
                    textColor: Colors.white,
                    child: const Text("Play Audio",
                        style: TextStyle(fontSize: 15)),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: ButtonTheme(
                  minWidth: 170,
                  height: 70,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.indigo)),
                    color: Colors.white,
                    textColor: Colors.indigo,
                    child: Text("Read Book", style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Get.to(ReaD(detail: selectedData));
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
