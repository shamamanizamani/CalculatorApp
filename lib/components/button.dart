import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String Label;
  final Color Colour;
  final VoidCallback Press;
  const Button({super.key, required this.Label, this.Colour = Colors.grey, required this.Press});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: Press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical:10),
          child: Container(
            decoration: BoxDecoration(
              color: Colour,
              shape: BoxShape.circle,
            ),
            height: 75,
            width: 75,
            child: Center(child: Text(Label, style: TextStyle(color: Colors.white))),
          ),
        ),
      ),
    );
  }
}