
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Container(
          child: Text('Profile Page', style: TextStyle(fontSize: 25)),
        ),
      ),
    );
  }

}