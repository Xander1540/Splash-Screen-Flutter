
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{

  var nameFromHome;

  ProfilePage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Profile Page, $nameFromHome', style: TextStyle(fontSize: 25)),


            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back',  style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade100,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero),
              ))
          ]
      ),
      ),
    );
  }

}