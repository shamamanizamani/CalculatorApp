import 'dart:async';
import 'package:calculatorapp/screens/calculatorscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // A Duration → how long to wait. A callback function → what to do after waiting.
    Timer(Duration(seconds: 10), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>CalculatorScreen()));;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        fit: BoxFit.fitWidth,
          image: NetworkImage('https://images.pexels.com/photos/5412432/pexels-photo-5412432.jpeg')),
    );
  }
}