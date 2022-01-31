import 'package:http/http.dart' as http;
import 'package:latihan_4/model/booksmodel.dart';

class BooksService {
  static var client = http.Client();

  static Future<List<BooksModel>?> fetchBooks() async {
    var response = await client
        .get(Uri.parse('http://localhost:8032/maintainer/v1/data_buku'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return booksmodelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
