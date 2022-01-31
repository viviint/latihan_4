import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/components/latestcomponent.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/controller/recommendcontroller.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';
import 'package:latihan_4/widget/recommendselect.dart';

class SearcH extends StatefulWidget {
  final reController = Get.put(RecommendController());
  SearcH({Key? key}) : super(key: key);

  @override
  _SearcHState createState() => _SearcHState();
}

class _SearcHState extends State<SearcH> {
  final _formKey = GlobalKey<FormState>();
  Widget latestSearch() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: BooksModel.booksmodel
              .asMap()
              .entries
              .map((MapEntry map) =>
                  LatestSearch(infoo: BooksModel.booksmodel[map.key]))
              .toList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Explore",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Search books or author",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15, bottom: 25),
                child: Text(
                  "Recommended Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: GetBuilder<RecommendController>(builder: (reco) {
              return Wrap(
                spacing: 0,
                runSpacing: 4,
                alignment: WrapAlignment.start,
                children: List.generate(
                    reco.recommend.length,
                    (index) => RecommendSelect(
                          recommended: reco.recommend[index].reccomendName,
                        )),
              );
            }),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, bottom: 15),
              child: Row(children: [
                Text(
                  "Latest Search",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ])),
          latestSearch()
        ],
      ),
    );
  }
}
