import 'package:flutter/material.dart';
import 'dart:async';

import 'homescreen_view.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    beginSplash();
  }


  beginSplash() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return HomeScreen();
          }),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Image.network("https://i.ibb.co/Kq5k6Td/foto-m-yusuf.jpg",
        width: 200.0,
          height: 100.0,
        ),

      ),
    );
  }
}
