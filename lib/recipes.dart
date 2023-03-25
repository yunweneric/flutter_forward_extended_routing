import 'package:flutter/material.dart';
import 'package:navigation_demo/recipe_details.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Recipe screen"),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipeDetailsScreen())),
              child: const Text("Route to Recipes details"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Route to home"),
            ),
          ],
        ),
      ),
    );
  }
}
