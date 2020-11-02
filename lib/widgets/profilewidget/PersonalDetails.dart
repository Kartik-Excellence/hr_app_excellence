import 'package:flutter/cupertino.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/widgets/subtitle.dart';
import 'package:hr_app_excellence/widgets/headtitle.dart';

class PersonalDetails extends StatelessWidget {
  ProfileModel profileModel;
  PersonalDetails(this.profileModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          HeadTitle('Name'),
          SubTitle((profileModel.data.userProfileDetail.name.toString())),
          HeadTitle('Martial Status'),
          SubTitle((profileModel.data.userProfileDetail.maritalStatus).toString()),
          HeadTitle('Current Address'),
          SubTitle((profileModel.data.userProfileDetail.currentAddress).toString()),
          HeadTitle('Permanemt Address'),
          SubTitle((profileModel.data.userProfileDetail.permanentAddress).toString()),
          HeadTitle('Personal Contact Number'),
          SubTitle((profileModel.data.userProfileDetail.mobilePh).toString()),
        ],
      ),
    );
  }
}
