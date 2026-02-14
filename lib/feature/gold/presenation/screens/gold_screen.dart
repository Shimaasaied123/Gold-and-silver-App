import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/App_colors.dart';
import 'package:goldy/core/constant/App_images.dart';
import 'package:goldy/feature/gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/gold/presenation/cubit/gold_cubit.dart';
import 'package:goldy/feature/gold/presenation/cubit/gold_states.dart';
import 'package:goldy/feature/gold/presenation/screens/widgets/custom_text.dart';


class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>GoldCubit(GoldRepo())..getGold(),
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
                    AppColors.goldGradientColors.first,
                    AppColors.goldGradientColors.last,
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
              "Gold",
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit,GoldState>(
          builder: (context, state) {
            if(state is GoldLoadingState){
              return Center(child: CircularProgressIndicator(color: AppColors.textColor,));
            }
            if(state is GoldErrorState){
              return Center(child: Text(state.errorMessage,style: TextStyle(color: AppColors.textColor),));
            }
            if (state is GoldSuccessState){
              return  Center(
            child: Container(
              height: 270,
              width: 300,
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.goldImage, width: 130),
                  SizedBox(height: 20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CustomText(
                    text: state.goldModel.price.toStringAsFixed(2),
                    color: AppColors.textColor),
                    SizedBox(width: 8),
                    CustomText(text: 'EGP', color: AppColors.textColor)
                  ],
                 )
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


