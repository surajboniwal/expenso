import 'package:expenso/core/navigation.dart';
import 'package:expenso/presentation/screens/navigation/navigation_screen.dart';
import 'package:expenso/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Expenso extends StatelessWidget {
  const Expenso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme(context),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Navigation.onGenerateRoute,
      initialRoute: NavigationScreen.route,
    );
  }
}
