import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/App_colors.dart';
import 'package:goldy/core/constant/App_images.dart';

import 'package:goldy/feature/gold/presenation/screens/widgets/custom_text.dart';
import 'package:goldy/feature/silver/data/repo/silver_repo.dart';
import 'package:goldy/feature/silver/presenation/cubit/silver_Cubit.dart';
import 'package:goldy/feature/silver/presenation/cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.silverButtonGradient.colors.first,
                    AppColors.silverButtonGradient.colors.last,
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: BackButton(
                style: ButtonStyle(iconSize: MaterialStateProperty.all(30)),
              ),
            ),
          ),
          title: Center(
            child: Text(
              "Silver",
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLoadingState) {
              return Center(
                child: CircularProgressIndicator(
                  color: AppColors.secondaryColor,
                ),
              );
            }
            if (state is SilverErrorState) {
              return Center(
                child: Text(
                  state.errorMessage,
                  style: TextStyle(color: AppColors.silverTextColor),
                ),
              );
            }
            if (state is SilverSuccessState) {
              return Center(
                child: Container(
                  height: 270,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 157, 154, 154),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.silverImage, width: 130),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            color: AppColors.silverTextColor,
                            text: state.silverModel.price.toStringAsFixed(2),
                          ),
                          SizedBox(width: 8),
                          CustomText(
                            color: AppColors.silverTextColor,
                            text: 'EGP',
                          ),
                        ],
                      ),
                      CustomText(
                        text: state.silverModel.updatedAt,
                        color: AppColors.silverTextColor,
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
