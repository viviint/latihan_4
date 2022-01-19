import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/recommendcontroller.dart';
import 'package:latihan_4/widget/recommendselect.dart';

class SearcH extends StatefulWidget {
  final reController = Get.put(RecommendController());
  SearcH({Key? key}) : super(key: key);

  @override
  _SearcHState createState() => _SearcHState();
}

class _SearcHState extends State<SearcH> {
  final _formKey = GlobalKey<FormState>();
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
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 225,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                                width: 200,
                                margin: EdgeInsets.all(10),
                                child: Center(),
                                color: Colors.grey.shade300,
                              )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
