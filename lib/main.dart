import 'package:flutter/material.dart';
import 'package:navigation_demo/routes/app_routing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RouteGenerator appRoutes = RouteGenerator();
  List<Page> _pages = [];

  Page buildMain() {
    return MaterialPage(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Got to second screen"),
                onPressed: () {
                  _pages.add(buildSecondPage());
                  setState(() {
                    _pages = _pages.toList();
                  });
                },
              ),
              ElevatedButton(
                child: Text("Pop screen"),
                onPressed: () {
                  _pages.removeLast();
                  setState(() {
                    _pages = _pages.toList();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Page buildSecondPage() {
    return MaterialPage(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("back"),
            onPressed: () {
              _pages.removeLast();
              setState(() {
                _pages = _pages.toList();
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _pages = [buildMain()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Navigator(
        pages: _pages,
        onPopPage: (route, result) {
          // check if route removed
          if (route.didPop(result)) {
            // remove the last page
            _pages.removeLast();
            return true;
          }
          return false;
        },
      ),
    );
  }
}
