import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginbloc.dart';
import 'package:hr_app_excellence/screen/loginscreen/loginscreen.dart';
import 'package:hr_app_excellence/screen/loginscreen/mainscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final apiKey = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlocProvider<LoginBloc>(create: (_) =>LoginBloc(),
        child: LoginScreen(),
        ),
        
      ),
    );
  }
}
