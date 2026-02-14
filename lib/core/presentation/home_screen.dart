import 'package:flutter/material.dart';
import 'package:goldy/core/constant/App_colors.dart';
import 'package:goldy/core/constant/App_strings.dart';
import 'package:goldy/core/widgets/custom_boutton.dart';



import '../routing/routes.dart';

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
              color: AppColors.textColor,
              fontSize: 24,
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
              textColor: AppColors.goldTextColor,
              color:AppColors.goldButtonGradient ,
              text: AppStrings.gold,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.goldScreen);
              },
            ),
            SizedBox(height: 12),
            CustomBoutton(
              textColor: AppColors.silverTextColor,
              color: AppColors.silverButtonGradient,
              text: AppStrings.silver ,
              onPressed: () {
               Navigator.pushNamed(context, AppRoutes.silverScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
