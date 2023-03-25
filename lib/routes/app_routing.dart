import 'package:flutter/material.dart';
import 'package:navigation_demo/screens/home.dart';
import 'package:navigation_demo/screens/not_found.dart';
import 'package:navigation_demo/screens/recipes.dart';
import 'package:navigation_demo/routes/names.dart';

class RouteGenerator {
  Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppRoutes.recipes:
        // return MaterialPageRoute(
        //   builder: (context) => const RecipesScreen(),
        // );

        return slideNavTransition(RecipesScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }
}

fadeNavTransition(Widget screen) {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder: (_, __, ___) => screen,
    transitionsBuilder: (_, Animation<double> animation, __, Widget child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}

slideNavTransition(Widget screen) {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder: (_, __, ___) => screen,
    transitionsBuilder: (_, Animation<double> animation, __, Widget child) => SlideTransition(
      position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(animation),
      child: child,
    ),
  );
}
