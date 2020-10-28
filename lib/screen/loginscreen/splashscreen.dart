import 'dart:math';

import 'package:flutter/material.dart';

class SplashSCreen extends StatefulWidget {
  @override
  _SplashSCreenState createState() => _SplashSCreenState();
}

class _SplashSCreenState extends State<SplashSCreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    _animation = Tween<double>(begin: -5, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {
        });
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
    if (_animationStatus == AnimationStatus.dismissed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
             Colors.teal[900],
             Colors.teal[800],
            //  Colors.teal[700],
            //  Colors.teal[700],
             Colors.teal[800],
             Colors.teal[900],
            ])),
        child: Center(
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              ..rotateY(pi * _animation.value)
              ..setEntry(3, 2, 0.002),
            
              // onTap: () {
              // if (_animationStatus == AnimationStatus.dismissed) {
              //   _animationController.forward();
              // } else {
              //   _animationController.reverse();
              // }
              // print('sdf');
              // },
              child: Container(
                child: Image.asset('assets/images/newlogo.png'),
              ),
            
          ),
        )
        );
  }
}
