import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/components/bestseller.dart';
import 'package:latihan_4/bottommenu/components/newreleasecomponent.dart';
import 'package:latihan_4/bottommenu/components/trendingnow.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/controller/category_controller.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';
import 'package:latihan_4/releasepage.dart';
import 'package:latihan_4/widget/category_select.dart';

class One extends StatefulWidget {
  final catController = Get.put(CategoryController());

  One({Key? key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  int selectedValue = 0;

  Widget bestSeller() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: BooksModel.booksmodel
              .asMap()
              .entries
              .map((MapEntry map) =>
                  BestSeller(infoo: BooksModel.booksmodel[map.key]))
              .toList()),
    );
  }

  Widget newRelease() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: BooksModel.booksmodel
              .asMap()
              .entries
              .map((MapEntry map) =>
                  NewRelease(infoo: BooksModel.booksmodel[map.key]))
              .toList()),
    );
  }

  Widget trendingNow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: BooksModel.booksmodel
              .asMap()
              .entries
              .map((MapEntry map) =>
                  TrendingNow(infoo: BooksModel.booksmodel[map.key]))
              .toList()),
    );
  }

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
                                itemCount: BooksModel.booksmodel.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  BooksModel booksModel =
                                      BooksModel.booksmodel[index];
                                  return GestureDetector(
                                    onTap: () =>
                                        Get.to(Detail(idBook: booksModel.id)),
                                    child: Container(
                                      height: 100,
                                      width: 195,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  booksModel.image))),
                                      margin: EdgeInsets.all(10),
                                    ),
                                  );
                                }),
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
                bestSeller(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Text(
                        "New Release",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25, top: 10, bottom: 10),
                      child: GestureDetector(
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo,
                              fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          Get.to(ReleaSe());
                        },
                      ),
                    ),
                  ],
                ),
                newRelease(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: Text(
                        "Trending Now",
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
                trendingNow()
              ],
            ),
          ],
        ));
  }
}
