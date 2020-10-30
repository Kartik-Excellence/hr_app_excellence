import 'package:flutter/material.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/widgets/profilewidget/PersonalDetails.dart';
import 'package:hr_app_excellence/widgets/subtitle.dart';

class ProfileBody extends StatefulWidget {
  ProfileModel profileModel;
  ProfileBody(this.profileModel);
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(title: Text('Personal Details'), onTap: () {
            print('tap');
            setState(() {
              tap1 = true;
            });
          },
          subtitle: tap1 ? PersonalDetails(profileModel) : null,
          ),
        ListTile(
          title: Text('Bank Details'),
        ),
        ListTile(
          title: Text('Update Password'),
          onTap: () => print('tap'),
        ),
        ListTile(
          title: Text('Profile Pcture'),
          onTap: () => print('tap'),
        )
      ],
    );
  }
}
