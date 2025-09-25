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
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Button(Label: '+', Press: (){}),
              Button(Label: '-', Press: (){}),
              Button(Label: '+', Press: (){}),
              Button(Label: '-', Colour: Colors.orange, Press: (){}),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Press: (){}),
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Colour: Colors.orange, Press: (){}),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Press: (){}),
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Colour: Colors.orange, Press: (){}),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Press: (){}),
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Colour: Colors.orange, Press: (){}),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Press: (){}),
                  Button(Label: '+', Press: (){}),
                  Button(Label: '-', Colour: Colors.orange, Press: (){}),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

