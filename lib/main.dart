import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginbloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginstate.dart';
import 'package:hr_app_excellence/blocs/profilebloc/profilebloc.dart';
import 'package:hr_app_excellence/requests/profilerequest.dart';
import 'package:hr_app_excellence/screen/homescreen/homescreen.dart';
import 'package:hr_app_excellence/screen/loginscreen/loginscreen.dart';
import 'package:hr_app_excellence/screen/loginscreen/mainscreen.dart';
import 'package:hr_app_excellence/service/storageutil.dart';

void main() async {
  await StorageUtil.getINstance() ;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
            ),
            BlocProvider<ProfileBloc>(
              create: (context) => ProfileBloc(),
            )
          ],
          child: HrApp(),
        ),
      ),
    );
  }
}

class HrApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginSuccess) {
              fetchProfile();
              return HomeScreen();
            }
            return LoginScreen();
          },
        ));
  }
}
