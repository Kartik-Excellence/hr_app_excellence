import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';

import '../headtitle.dart';
import '../subtitle.dart';

class BankDetails extends StatelessWidget {
  ProfileModel profileModel;
  BankDetails(this.profileModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          HeadTitle('Bank Account Number'),
        //  SubTitle((profileModel.data.userBankDetail. .toString())),
          HeadTitle('Martial Status'),
          // SubTitle(
          //     (profileModel.data.userProfileDetail.maritalStatus).toString()),
          HeadTitle('Current Address'),
          // SubTitle(
          //     (profileModel.data.userProfileDetail.currentAddress).toString()),
          HeadTitle('Permanemt Address'),
          // SubTitle((profileModel.data.userProfileDetail.permanentAddress)
          //     .toString()),
        ],
      ),
    );
  }
}
