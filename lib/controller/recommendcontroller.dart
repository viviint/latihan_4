import 'package:get/get.dart';
import 'package:latihan_4/model/recommendmodel.dart';

class RecommendController extends GetxController {
  var recommend = <RecommendModel>[];

  void fetchDummyData() {
    recommend.add(RecommendModel(reccomendName: "Business", id: 1));
    recommend.add(RecommendModel(reccomendName: "Biography", id: 2));
    recommend.add(RecommendModel(reccomendName: "Comedy", id: 3));
    recommend.add(RecommendModel(reccomendName: "Culture", id: 4));
  }

  @override
  void onInit() {
    fetchDummyData();
    super.onInit();
  }
}
