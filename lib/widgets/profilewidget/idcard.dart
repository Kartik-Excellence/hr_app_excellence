

import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

class IdCard extends StatelessWidget {
  ProfileModel profileModel;
  IdCard(this.profileModel);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
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
                      Text(profileModel.data.userProfileDetail.name, textDirection: TextDirection.ltr,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 18,
                          )),
                Text(profileModel.data.userProfileDetail.jobtitle,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          )),
                Text(profileModel.data.userProfileDetail.id,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          )),
                  ],),
                ),
                ),
          ],),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Text('Joining Date: ',style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,color: AppColors.FADE_BLACK
                          )),
            Text(profileModel.data.userProfileDetail.dateofjoining,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          ))
          ],),
          Row(children: [
            Text('Working Email: ',style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,  color: AppColors.FADE_BLACK
                          )),
            Text(profileModel.data.userProfileDetail.workEmail,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                        ))
          ],),
          Row(children: [
            Text('Gender: ',style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,  color: AppColors.FADE_BLACK
                          )),
            Text(profileModel.data.userProfileDetail.gender,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          ))
          ],),
          Row(children: [
            Text('Date Of Birth: ',style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,color: AppColors.FADE_BLACK
                          )),
            Text(profileModel.data.userProfileDetail.dob,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          ))
          ],),
          Row(children: [
            Text('Contact: ',style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,color: AppColors.FADE_BLACK
                          )),
            Text(profileModel.data.userProfileDetail.emergencyPh1,style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 14,
                          ))
          ],)
         
          
        ],
      ),
    );
  }
}
