import 'package:first_app_32a/screen/bottom_screen/dashboard.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme
      home: DashboardScreen(),
    );
  }
}
