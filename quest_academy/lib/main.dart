import 'package:flutter/material.dart';
import 'package:quest_academy/screens/splash_screen.dart';

void main() {
  runApp(const QuestAcademy());
}

class QuestAcademy extends StatelessWidget {
  const QuestAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),
    );
  }
}
