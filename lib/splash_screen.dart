import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.blueAccent.shade100,
          child: Text('Xander', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
