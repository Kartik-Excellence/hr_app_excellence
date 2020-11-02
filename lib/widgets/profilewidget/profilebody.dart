import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/widgets/profilewidget/PersonalDetails.dart';
import 'package:hr_app_excellence/widgets/profilewidget/bankdetails.dart';
import 'package:hr_app_excellence/widgets/subtitle.dart';

class ProfileBody extends StatefulWidget {
  ProfileModel profileModel;
  ProfileBody(this.profileModel);
  @override
  _ProfileBodyState createState() => _ProfileBodyState(profileModel);
}

class _ProfileBodyState extends State<ProfileBody> {
  ProfileModel _profileModel;
  _ProfileBodyState(this._profileModel);

  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          tileColor: Colors.white,
          title: Container(
            child: Text('Personal Details',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    color: AppColors.BTN_BLACK_COLOR,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          onTap: () {
            setState(() {
              if (tap1) {
                tap1 = false;
              } else {
                tap1 = true;
              }
            });
          },
          subtitle: tap1 ? PersonalDetails(_profileModel) : null,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Container(
            child: Text('Bank Details',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    color: AppColors.BTN_BLACK_COLOR,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          onTap: () {
            setState(() {
              if (tap2 = true)
                tap2 = false;
              else
                tap2 = true;
            });
          },
          subtitle: tap2 ? BankDetails(_profileModel) : null,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Container(
            child: Text('Update Profile Picture',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    color: AppColors.BTN_BLACK_COLOR,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          onTap: () {
            setState(() {
              tap3 = true;
            });
          },
          subtitle: tap2 ? BankDetails(_profileModel) : null,
        ),
        ListTile(
          tileColor: Colors.white,
          title: Container(
            child: Text('Update Password',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    color: AppColors.BTN_BLACK_COLOR,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          onTap: () {
            setState(() {
              tap4 = true;
            });
          },
          subtitle: tap2 ? BankDetails(_profileModel) : null,
        )
      ],
    );
  }
}
