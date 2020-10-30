import 'package:flutter/cupertino.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/widgets/subtitle.dart';
import 'package:hr_app_excellence/widgets/title.dart';

class PersonalDetails extends StatelessWidget {
  ProfileModel profileModel;
  PersonalDetails(this.profileModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        HeadTitle('Name'),
        SubTitle(profileModel.data.userProfileDetail.username),
        HeadTitle('Martial Status'),
        HeadTitle('Current Address'),
        HeadTitle('Permanemt Address'),
        HeadTitle('Personal Contact Number')
      ],),
    );
  }
}