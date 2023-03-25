import 'package:flutter/material.dart';
import 'package:navigation_demo/components/app_btn.dart';
import 'package:navigation_demo/screens/recipe_details.dart';

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
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Recipe screen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 50),
            appButton(
              width: 200,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipeDetailsScreen())),
              text: "Route to Recipes details",
              context: context,
            ),
            SizedBox(height: 20),
            appButton(
              width: 200,
              onTap: () => Navigator.pop(context),
              text: "Route to home",
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
