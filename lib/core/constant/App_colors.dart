
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFeec430); 
  static const Color secondaryColor = Color(0xFFc0c0c0);
  static const Color backgroundColor = Color(0xff232323);
  static const Color textColor = Color(0xffDDBF6A);
  static const Color containerColor = Color(0xFF363636);
  //gradient colors
  static const List<Color> goldGradientColors = [
    Color(0xFFFBE39A),
    Color(0xFFDDBF6A),
  ];

  //button colors
  static const Gradient goldButtonGradient = LinearGradient(
    colors: [
      Color(0xFFF2B90D),
      Color(0xFFF6CE55),
      
    ],
    begin: Alignment.topCenter,
    end: Alignment.center,
  );
  static const Gradient silverButtonGradient=LinearGradient(colors: [
    Color(0xFFE5E7EB),
    Color(0xFFD1D5DB),
  ],
  begin: Alignment.topCenter,
  end: Alignment.center,
  );
 // text color for buttons
 static const Color goldTextColor = Color(0xff433709);
 static const Color silverTextColor = Color(0xff52525B);  
 
}