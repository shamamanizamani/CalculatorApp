import 'package:calculatorapp/routes/routesname.dart';
import 'package:calculatorapp/routes/routesworking.dart';
import 'package:calculatorapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // initialRoute: RouteName.SplashScreen,
      // routes: Routes.routes,
    );
  }
}