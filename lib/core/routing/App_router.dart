// ignore: file_names
import 'package:flutter/material.dart';
import 'package:goldy/core/presentation/home_screen.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/feature/gold/presenation/screens/gold_screen.dart';
import 'package:goldy/feature/silver/presenation/screens/silver_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      

      case AppRoutes.goldScreen:
      return MaterialPageRoute(builder: (context)=> const GoldScreen());

      case AppRoutes.silverScreen:
      return MaterialPageRoute(builder: (context)=> const SilverScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(child: Text('No Route Found'),),
        ));
    }
  }
}