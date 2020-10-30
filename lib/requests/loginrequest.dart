import 'dart:convert';

import 'package:hr_app_excellence/model/loginmodel.dart';
import 'package:hr_app_excellence/requests/post.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

//final apiKey = null;
final apikey = null;
Post _post = Post();
Future<LoginModel> fetchData(String username, String password) async {
  final url =
      'https://apistaginghr.excellencetechnologies.in/attendance/API_HR/api.php';

  Map data = {
    "token": apikey,
    "action": "login",
    "username": username,
    "password": password
  };
  return _post
      .post(url, body: json.encode(data))
      .then((dynamic response) async {

    StorageUtil.setUserToken(response["data"]["token"]);
    return LoginModel.fromJson(response);
  });
}

