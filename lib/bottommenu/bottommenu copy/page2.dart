import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/components/latestcomponent.dart';
import 'package:latihan_4/controller/recommendcontroller.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Explore",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Search books or author",
                  )),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Recommended Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.center,
            child: GetBuilder<RecommendController>(builder: (reco) {
              return Wrap(
                spacing: 0,
                runSpacing: 2,
                alignment: WrapAlignment.start,
                children: List.generate(
                    reco.recommend.length,
                    (index) => RecommendSelect(
                          recommended: reco.recommend[index].reccomendName,
                        )),
              );
            }),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(children: const [
                Text(
                  "Latest Search",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ])),
          const SizedBox(
            height: 15,
          ),
          latestSearch()
        ],
      ),
    );
  }
}
