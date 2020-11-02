import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginbloc.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginevent.dart';
import 'package:hr_app_excellence/blocs/loginbloc/loginstate.dart';
import 'package:hr_app_excellence/screen/homescreen/homescreen.dart';
import 'package:hr_app_excellence/widgets/login_widget/bottomfeature.dart';
import 'package:hr_app_excellence/widgets/login_widget/bottomlist.dart';
import 'package:hr_app_excellence/widgets/login_widget/welcomescreen.dart';


final _loginFormKey = GlobalKey<FormState>();
class LoginScreen extends StatefulWidget {
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool _obscuretext = true;
  void showPassword() {
    setState(() {
      _obscuretext = !_obscuretext;
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: usernameController,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        prefixIcon: new Icon(Icons.mail),
        hintText: "E-Mail",
      ),
      
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Credentials';
        }
        return null;
      },
    );

    final passwordField = TextFormField(
      controller: passwordController,
      obscureText: _obscuretext,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.grey,
          hintText: "Password",
          prefixIcon: new Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
           
            onPressed: () {
              showPassword();
            },
          )),
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Credentials';
        }
        return null;
      },
    );

    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Form(
        
        child: Scaffold(
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
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Card(
                                shadowColor: Colors.black,
                                elevation: 8,
                                shape: StadiumBorder(
                                    side: BorderSide(
                                  color: Colors.transparent,
                                )),
                                
                                child: emailField,key: Key('email')),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Card(
                                shadowColor: Colors.black,
                                elevation: 8,
                                shape: StadiumBorder(
                                    side: BorderSide(
                                  color: Colors.transparent,
                                )),
                                 
                                child: passwordField),
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        key: Key('button'),
                        padding: EdgeInsets.symmetric(horizontal: 153),
                        child: Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          
                          print(_loginFormKey.currentState.validate());
                          if (_loginFormKey.currentState.validate()) {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Login....'),
                            ));
                            context.bloc<LoginBloc>().add(LoginWithCredentials(
                                usernameController.text,
                                passwordController.text));
                          }
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
        ),
      );
    });
  }
}

// Route _createRoute() {
//   print('route creating');
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
//     transitionDuration: Duration(milliseconds: 800),
//     reverseTransitionDuration: Duration(milliseconds: 600),
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
