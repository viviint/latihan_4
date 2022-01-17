import 'package:get/get.dart';
import 'package:latihan_4/model/categorymodel.dart';

class CategoryController extends GetxController {
  var category = <Category>[];

  void fetchDummyData() {
    category.add(Category(categoryName: "Art", id: 0));
    category.add(Category(categoryName: "Business", id: 1));
    category.add(Category(categoryName: "Biography", id: 2));
    category.add(Category(categoryName: "Comedy", id: 3));
    category.add(Category(categoryName: "Culture", id: 4));
    category.add(Category(categoryName: "Education", id: 5));
    category.add(Category(categoryName: "News", id: 6));
    category.add(Category(categoryName: "Philosophy", id: 7));
    category.add(Category(categoryName: "Psychology", id: 8));
    category.add(Category(categoryName: "Technology", id: 9));
    category.add(Category(categoryName: "Travel", id: 10));
  }

  @override
  void onInit() {
    fetchDummyData();
    super.onInit();
  }
}
