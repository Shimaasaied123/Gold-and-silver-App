import 'package:flutter/material.dart';
import 'package:goldy/core/routing/App_router.dart';
import 'package:goldy/core/routing/routes.dart';

void main() {
  runApp(const GoldApp());
}

class GoldApp
 extends StatelessWidget {
  const GoldApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}

 



