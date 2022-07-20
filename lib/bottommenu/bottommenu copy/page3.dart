import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [
                Text(
                  "My Books",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
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
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: BooksModel.booksmodel.length,
                  itemBuilder: (context, index) {
                    BooksModel booksModel = BooksModel.booksmodel[index];
                    return GestureDetector(
                      onTap: () => Get.to(Detail(idBook: booksModel.id)),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 25),
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
