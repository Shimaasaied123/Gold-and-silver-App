import 'package:flutter/material.dart';

class CustomBoutton extends StatelessWidget {
  const CustomBoutton({
    super.key,
    required this.color,
    required this.text,
    this.onPressed,
  });
  final Color color;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
