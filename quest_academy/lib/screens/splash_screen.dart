import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quest_academy/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      },
    );
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children : [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/splash_poster.png',
                fit: BoxFit.cover,
              )
            ),

            Align(
              alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Container(
                      width: 200,
                      height: 5,
                      child: const LinearProgressIndicator(),
                    ),
                ),
            ),
          ],
        ),
    );
  }
}
