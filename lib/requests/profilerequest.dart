import 'dart:convert';

import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/post.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

//url= "https://apistaginghr.excellencetechnologies.in/attendance/sal_info/api.php";

  ProfileModel profileModel = ProfileModel();
  Post _post = Post();
  Future<ProfileModel> fetchProfile() async {
    final url =
        "https://apistaginghr.excellencetechnologies.in/attendance/sal_info/api.php";
    var token = StorageUtil.getUserToken();
    Map data = {"action": "get_user_profile_detail", "token": token};
    return _post
        .post(url, body: json.encode(data))
        .then((dynamic response) async {
      return ProfileModel.fromJson(response);
    });
  }

