import 'package:calculatorapp/components/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() {
    return CalculatorScreenState();
  }
}

class CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Text(
                    userInput.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    output.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    Button(
                      Label: 'AC',
                      textColour: Color(0xFF5282fe),
                      Colour: Color(0xFF0e1625),
                      Press: () {
                        userInput = '';
                        setState(() {});
                      },
                    ),
                    Button(
                      Label: "⌫",
                      textColour: Color(0xFF5282fe),
                      Colour: Color(0xFF0e1625),
                      Press: () {
                        userInput = userInput.substring(
                          0,
                          userInput.length - 1,
                        );
                        setState(() {});
                      },
                    ),
                    Button(
                      Label: '+/-',
                      textColour: Color(0xFF5282fe),
                      Colour: Color(0xFF0e1625),
                      Press: () {},
                    ),
                    Button(
                      Label: '÷',
                      textColour: Color(0xFF5282fe),
                      Colour: Color(0xFF0e1625),
                      Press: () {
                        userInput += '/';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          Label: '7',
                          Press: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '8',
                          Press: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '9',
                          Press: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: 'x',
                          textColour: Color(0xFF5282fe),
                          Colour: Color(0xFF0e1625),
                          Press: () {
                            userInput += '*';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          Label: '4',
                          Press: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '5',
                          Press: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '6',
                          Press: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '-',
                          textColour: Color(0xFF5282fe),
                          Colour: Color(0xFF0e1625),
                          Press: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          Label: '1',
                          Press: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '2',
                          Press: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '3',
                          Press: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '+',
                          textColour: Color(0xFF5282fe),
                          Colour: Color(0xFF0e1625),
                          Press: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          Label: '%',
                          Press: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '0',
                          Press: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '.',
                          Press: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        Button(
                          Label: '=',
                          Colour: Color(0xFF4f82ff),
                          Press: () {
                            equalPres();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void equalPres() {
    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double evaluated = expression.evaluate(EvaluationType.REAL, contextModel);
    output = evaluated.toString();
  }
}
