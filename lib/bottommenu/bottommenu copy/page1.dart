import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/category_controller.dart';
import 'package:latihan_4/widget/category_select.dart';

class One extends StatefulWidget {
  final catController = Get.put(CategoryController());
  One({Key? key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 20, bottom: 10),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25, top: 20, bottom: 10),
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: GetBuilder<CategoryController>(builder: (cat) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: cat.category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CategorySelect(
                          title: cat.category[index].categoryName!),
                    );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Text(
                        "Recomended For You",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25, top: 10, bottom: 10),
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 5, bottom: 10),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: ListView.builder(
                                itemCount: 15,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      height: 100,
                                      width: 195,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Text(
                        "Best Seller",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25, top: 10, bottom: 10),
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 5, bottom: 10),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                                itemCount: 15,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      height: 100,
                                      width: 195,
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
          ],
        ));
  }
}
