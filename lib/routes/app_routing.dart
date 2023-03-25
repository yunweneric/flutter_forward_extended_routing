import 'package:flutter/material.dart';
import 'package:navigation_demo/home.dart';
import 'package:navigation_demo/not_found.dart';
import 'package:navigation_demo/recipes.dart';
import 'package:navigation_demo/routes/names.dart';

class RouteGenerator {
  Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppRoutes.recipes:
        return MaterialPageRoute(
          builder: (context) => const RecipesScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }
}
