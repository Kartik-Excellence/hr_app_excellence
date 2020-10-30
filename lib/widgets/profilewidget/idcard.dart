import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

class IdCard extends StatelessWidget {
  ProfileModel profileModel;
  IdCard(this.profileModel);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             CircleAvatar(
               radius: 30,
            backgroundImage: NetworkImage(StorageUtil.getProfileImage()),
          ),
          Expanded(
            child: 
                Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(profileModel.data.userProfileDetail.name, textDirection: TextDirection.ltr,),
                Text(profileModel.data.userProfileDetail.jobtitle),
                Text(profileModel.data.userProfileDetail.id),
                  ],),
                ),
                ),
          ],),
          SizedBox(
            height: 10,
          ),
          Text('Joining Date:'+profileModel.data.userProfileDetail.dateofjoining),
              Text('Working Email:'+profileModel.data.userProfileDetail.workEmail),
              Text('Gender:'+profileModel.data.userProfileDetail.gender),
              Text('Date Of Birth'+profileModel.data.userProfileDetail.dob),
              Text('Contact'+profileModel.data.userProfileDetail.emergencyPh1)
         
          
        ],
      ),
    );
  }
}
