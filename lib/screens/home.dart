import 'package:flutter/material.dart';
import 'package:navigation_demo/components/app_btn.dart';
import 'package:navigation_demo/screens/recipes.dart';
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
        color: Colors.teal,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Homepage",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 20),
            appButton(
              context: context,
              width: 200,
              onTap: () => Navigator.pushNamed(context, AppRoutes.recipes),
              text: "Route to Recipes",
            )
          ],
        ),
      ),
    );
  }
}
