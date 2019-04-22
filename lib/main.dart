import 'dart:math';

import 'package:flutter/material.dart';
void main(){

  /**
   * main(): Entry point of our application
   * runApp(): Inflates the widgets and shows it on the app screen
   * All the UI components in a flutter application are widgets
   */
  runApp(new MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter App",
      home: Scaffold(
          appBar: AppBar(title: Text("First Screen"),),
          body:  Material(
              color: Colors.lightBlueAccent,
              child:  Center(child: Text(
                generateLuckyNumber(),
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              )
          )
      ),
    );
  }

  String generateLuckyNumber() {

    var random = Random();

    int luckyint = random.nextInt(10);

    return "Your Lucky number is ${luckyint}";
  }

}
