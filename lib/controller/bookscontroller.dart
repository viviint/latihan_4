import 'package:latihan_4/model/booksmodel.dart';
import 'package:get/get.dart';
import 'package:latihan_4/service/remoteservice.dart';

class BooksController extends GetxController {
  var books = <BooksModel>[].obs;

  void fetchDummyData() async {
    var product = await BooksService.fetchBooks();
    if (product != null) {
      books.value = product;

      // books.add(BooksModel(
      //     id: 1,
      //     image: 'assets/tctir.png',
      //     title: 'The Classes That I Raised',
      //     subtitle: 'Geunseo',
      //     summary:
      //         "He was a F-rank Hunter, To top it off, he was an useless F-rank loser of a Hyung, who dragged down his incredible Dongsaeng,while he carelessly lived out his messed up life, he ultimately ended up taking his younger brother's life,he regressed back in time with his title, Perfect Upbringer",
      //     story: '',
      //     rating: 4.1,
      //     genre: ['Action', 'Adevnture', 'Fantasy']));
      // books.add(BooksModel(
      //     id: 2,
      //     image: 'assets/tocf.jpg',
      //     title: "Trash Of The Count's Family",
      //     subtitle: 'Yoo Ryeo Han',
      //     summary: '',
      //     story: '',
      //     rating: 4.5,
      //     genre: ['Action', 'Drama', 'Shounen']));
      // books.add(BooksModel(
      //     id: 3,
      //     image: 'assets/sssclass.jpg',
      //     title: 'SSS-Class Suicide Hunter',
      //     subtitle: 'Shin Noah',
      //     summary: '',
      //     story: '',
      //     rating: 4.5,
      //     genre: ['Action', 'Advanture', 'Comedy']));
      // books.add(BooksModel(
      //     id: 4,
      //     image: 'assets/secondliferanker.png',
      //     title: 'Second Life Ranker',
      //     subtitle: 'Sadoyeon',
      //     story: '',
      //     summary: '',
      //     rating: 4.1,
      //     genre: ['Action', 'Mystery', 'Tragedy']));

      // @override
      // void onInit() {
      //   fetchDummyData();
      //   super.onInit();
      // }
    }
  }
}
