import 'package:flutter/material.dart';
import 'package:goldy/core/presentation/home_screen.dart';
import 'package:goldy/core/routing/routes.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(child: Text('No Route Found'),),
        ));
    }
  }
}