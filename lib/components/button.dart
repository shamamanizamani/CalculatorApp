import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String Label;
  const Button({super.key, required this.Label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
        height: 80,
        width: 80,
        child: Center(child: Text(Label)),
      ),
    );
  }
}