import 'dart:async';

import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {
      Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/sign-in'));
      super.initState();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('sign in'),
      ),
    );
  }
}