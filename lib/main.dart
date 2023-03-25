import 'package:flutter/material.dart';
import 'package:navigation_demo/routes/app_routing.dart';
import 'package:navigation_demo/screens/home.dart';
import 'package:navigation_demo/screens/recipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "recipes": (context) => RecipesScreen(),
      },
    );
  }
}
