import 'package:flutter/material.dart';
import 'package:hr_app_excellence/widgets/login_widget/bottomfeature.dart';
import 'package:hr_app_excellence/widgets/login_widget/bottomlist.dart';
import 'package:hr_app_excellence/widgets/login_widget/textbox.dart';
import 'package:hr_app_excellence/widgets/login_widget/welcomescreen.dart';

final _loginFormKey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color passwordborderColour = Colors.transparent;
  Color emailborderColour = Colors.transparent;
  String email;
  String password;
  bool isEmail = false;
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingControll = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: textEditingController,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        prefixIcon: new Icon(Icons.mail),
        hintText: "E-Mail",
      ),
    );

    final passwordField = TextFormField(
      controller: textEditingControll,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hoverColor: Colors.grey,
        hintText: "Password",
        prefixIcon: new Icon(Icons.lock),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                WelcomeScreen(),
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: <Widget>[
                      TextBox(emailField),
                      TextBox(passwordField),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ForgotPassword',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.teal[800],
                            Colors.teal[700],
                            Colors.teal[700],
                            Colors.teal[800],
                          ])),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 153),
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    onPressed: () {
                      print('LOgin');
                    },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                BottomList('About Excellence HRMS'),
                BottomFeature(
                    'Say goodbye to cluttered spreadsheets From attendence to timesheets and performance, run HR on the cloud. Get more done with a simple user interface, effortless automation, and efficient processing.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => SignupScreen(),
//     transitionDuration: Duration(milliseconds: 800),
//             reverseTransitionDuration: Duration(milliseconds: 600),

//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;
//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
