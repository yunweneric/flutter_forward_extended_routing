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
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.linked_camera), label: "Camera"),
        ],
      ),
      body: selectedIndex == 0
          ? Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: Colors.teal,
              child: Center(
                child: Text(
                  "First Page",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            )
          : Container(
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
