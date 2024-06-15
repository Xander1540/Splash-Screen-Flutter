import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/ProfilePage.dart';
import 'package:splash_screen_flutter/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blueAccent,
        title: Text('HomePage'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HomePage', style: TextStyle(fontSize: 25)),

              SizedBox(height: 10),

              TextField(controller: nameController,),

              SizedBox(height: 10),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage(nameController.text.toString())));
              }, child: Text('Profile', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero
                )
              ),)
            ]
          ),
        ),
      )
    );
  }
}
