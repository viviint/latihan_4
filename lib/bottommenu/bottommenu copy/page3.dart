import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  "My Books",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
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
          Expanded(
              child: ListView.builder(
                  itemCount: BooksModel.booksmodel.length,
                  itemBuilder: (context, index) {
                    BooksModel booksModel = BooksModel.booksmodel[index];
                    return GestureDetector(
                      onTap: () => Get.to(Detail(idBook: booksModel.id)),
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        shadowColor: Colors.transparent,
                        child: ListTile(
                          leading: Image.network(
                            booksModel.image,
                          ),
                          title: Text(booksModel.title),
                          subtitle: Text(booksModel.subtitle),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
