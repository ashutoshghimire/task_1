import 'package:flutter/material.dart';
import '../screen/arithematic_screen.dart';
import '../screen/dashboard_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardScreen(),
    );
  }
}
