import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profilebloc.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profileevent.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profilestate.dart';
import 'package:hr_app_excellence/model/profilemodel.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationlist.dart';
import 'package:hr_app_excellence/service/storageutil.dart';
import 'package:hr_app_excellence/widgets/profilewidget/editnotice.dart';
import 'package:hr_app_excellence/widgets/profilewidget/idcard.dart';
import 'package:hr_app_excellence/widgets/profilewidget/profilebody.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      print(state);
      if (state is ProfileInitial) {
        context.bloc<ProfileBloc>().add(ProfileLoadingEvent());
      }
      if (state is ProfileSuccess) {
        ProfileModel profileModel = ProfileModel.fromJson(state.data.toJson());
        print(profileModel.data.userProfileDetail.name);
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(StorageUtil.getProfileImage()))
            ],
            title: Text('My Profile'),
            elevation: 0,
            backgroundColor: AppColors.GREEN_COLOR,
          ),
          drawer: NavigationList(),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  EditNotice(),
                  IdCard(profileModel),
                  ProfileBody(profileModel),

                  
                  ],
              ),
            ),
          ),
        );
      }

      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}
