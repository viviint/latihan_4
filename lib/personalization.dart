import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/category_controller.dart';
import 'package:latihan_4/readypage.dart';
import 'package:latihan_4/widget/category_select.dart';

class PersonalPage extends StatefulWidget {
  final catController = Get.put(CategoryController());
  PersonalPage({Key? key}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 150, bottom: 30),
                child: Text(
                  "Personalize suggestion",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RichText(
              overflow: TextOverflow.clip,
              maxLines: 2,
              text: const TextSpan(children: [
                TextSpan(
                    text: "Choose ",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                TextSpan(
                    text: "min. 3 topic",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17)),
                TextSpan(
                    text:
                        " you like, we will give you more often that relate to it.",
                    style: TextStyle(color: Colors.black, fontSize: 17))
              ]),
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Search Categories",
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GetBuilder<CategoryController>(builder: (cat) {
              return Wrap(
                spacing: 0,
                runSpacing: 3,
                alignment: WrapAlignment.start,
                children: List.generate(
                    cat.category.length,
                    (index) => CategorySelect(
                        title: cat.category[index].categoryName!)),
              );
            }),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo)),
                color: Colors.indigo,
                textColor: Colors.white,
                child: const Text("Submit",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Get.to(Ready());
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.indigo)),
                color: Colors.white,
                textColor: Colors.indigo,
                child: const Text("Skip",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to(Ready());
                  }
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
