import 'package:calculatorapp/components/button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {

  @override
  State<CalculatorScreen> createState(){
    return CalculatorScreenState();
  }
}

class CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Row(
            children: [
              Button(Label: '+'),
              Button(Label: '-'),
              Button(Label: '+'),
              Button(Label: '-'),
            ],
          ),
        ],
      )
    );
  }
}

