import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String Label;
  final Color Colour;
  final Color textColour;
  final VoidCallback Press;
  const Button({
    super.key,
    required this.Label,
    this.Colour = const Color(0xFF141414),
    required this.Press,
    this.textColour = const Color(0xFFd8d8d8),
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: Press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colour,
              borderRadius: BorderRadius.circular(40),
            ),
            height: 75,
            width: 75,
            child: Center(
              child: Text(
                Label,
                style: TextStyle(
                  color: textColour,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
