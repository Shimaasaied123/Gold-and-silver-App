import 'package:flutter/material.dart';
import 'package:goldy/core/constant/App_colors.dart';
import 'package:goldy/core/constant/App_strings.dart';
import 'package:goldy/core/widgets/custom_boutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Center(
          child: Text(
            "Silver & Gold ",

            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBoutton(
              color: AppColors.primaryColor,
              text: AppStrings.gold,
              onPressed: () {},
            ),
            SizedBox(height: 12),
            CustomBoutton(
              color: AppColors.secondaryColor,
              text: AppStrings.silver,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
