import 'dart:developer';

import 'package:get/get.dart';
import 'package:latihan_4/model/usermodel.dart';

class UserService extends GetConnect {
  Future<Usermodel> getUserModel(String userId) async {
    return await get("http://  192.168.171.235:8032/maintainer/v1/user")
        .then((value) {
      log("value $value");
      if (value.isOk && value.body != null) {
        return Usermodel.fromJson(value.body);
      } else {
        throw value.statusText!;
      }
    }).catchError((error) => throw error);
  }
}
