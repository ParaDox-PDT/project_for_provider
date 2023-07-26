import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/ui/home/home_screen.dart';
import 'package:flutter_defualt_project/ui/screens/first_screen.dart';
import 'package:flutter_defualt_project/ui/screens/second_creen.dart';
import 'package:flutter_defualt_project/ui/screens/tab_box.dart';
import 'package:flutter_defualt_project/ui/screens/third_screen.dart';

class RouteNames {
  static const String homeScreen = "/";
  static const String tabBox = "/tab";
  static const String firstScreen = "/first";
  static const String secondScreen = "/second";
  static const String thirdScreen = "/third";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case RouteNames.tabBox:
        return MaterialPageRoute(
          builder: (context) => const TabBox(),
        );
      case RouteNames.firstScreen:
        return MaterialPageRoute(
          builder: (context) => const FirstScreen(),
        );
      case RouteNames.secondScreen:
        return MaterialPageRoute(
          builder: (context) => const SecondScreen(),
        );
      case RouteNames.thirdScreen:
        return MaterialPageRoute(
          builder: (context) => const ThirdScreen(),
        );  
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route not found!"),
            ),
          ),
        );
    }
  }
}