import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({
    Key? key,
    required this.infoo,
  }) : super(key: key);

  final BooksModel infoo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        child: Container(
          height: 150,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Image.asset(
                infoo.image,
                width: 90,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(infoo.title,
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  Text(
                    infoo.subtitle,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
        onTap: () {
          Get.to(Detail(idBook: infoo.id));
        },
      ),
    );
  }
}
