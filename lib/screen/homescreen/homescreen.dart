

import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationlist.dart';
import 'package:hr_app_excellence/screen/homescreen/overview.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

class HomeScreen extends StatelessWidget {
  ProfileModel profileModel;
  _getProfileImage() async {
    return await fetchProfile().then((value) {
      profileModel = value;
      StorageUtil.setProfileImage(profileModel.data.userProfileDetail.image);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    _getProfileImage();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // key: Key('NavigationList'),
        appBar: AppBar(
          
          actions: <Widget>[
            CircleAvatar(
                radius: 20,
                //backgroundImage: NetworkImage(StorageUtil.getProfileImage())
                )
          ],
          elevation: 0,
          backgroundColor: AppColors.GREEN_COLOR,
          title: Text('Home'),
        ),
        drawer: Container(key: Key('opendrawer'),
        child: NavigationList(),
        ),
        body: SingleChildScrollView(
          child: Overview(),
        ),
      ),
    );
  }
}
