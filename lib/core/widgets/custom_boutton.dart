import 'package:flutter/material.dart';

class CustomBoutton extends StatelessWidget {
  const CustomBoutton({
    super.key,
    required this.color,
    required this.text,
    this.onPressed,
    required this.textColor,
  });
  final Gradient color;
  final String text;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        gradient: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
