import 'package:flutter/material.dart';
import 'package:navigation_demo/recipes.dart';
import 'package:navigation_demo/routes/names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Homepage"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.recipes),
              child: const Text("Route to Recipes"),
            )
          ],
        ),
      ),
    );
  }
}
