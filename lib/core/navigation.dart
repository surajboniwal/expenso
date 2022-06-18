import 'package:expenso/presentation/screens/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget route = Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text('404'),
      ),
    );

    switch (settings.name) {
      case NavigationScreen.route:
        route = const NavigationScreen();
    }

    return MaterialPageRoute(builder: (context) => route);
  }
}
