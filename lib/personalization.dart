import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/category_controller.dart';
import 'package:latihan_4/readypage.dart';
import 'package:latihan_4/widget/category_select.dart';

class PersonaL extends StatefulWidget {
  final catController = Get.put(CategoryController());
  PersonaL({Key? key}) : super(key: key);

  @override
  _PersonaLState createState() => _PersonaLState();
}

class _PersonaLState extends State<PersonaL> {
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
            padding: const EdgeInsets.only(left: 25, right: 25),
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "tidak boleh kosong ";
                  } else {}
                  return null;
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: GetBuilder<CategoryController>(builder: (cat) {
              return Wrap(
                spacing: 0,
                runSpacing: 6,
                alignment: WrapAlignment.start,
                children: List.generate(
                    cat.category.length,
                    (index) => CategorySelect(
                        title: cat.category[index].categoryName!)),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.indigo.shade700)),
                color: Colors.indigo.shade700,
                textColor: Colors.white,
                child: const Text("Submit", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Get.to(Ready());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ButtonTheme(
              minWidth: 500,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.indigo)),
                color: Colors.white,
                textColor: Colors.indigo,
                child: const Text("Skip", style: TextStyle(fontSize: 15)),
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
