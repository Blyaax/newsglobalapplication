import 'package:akashnews/views/homeScreen.dart';
import 'package:akashnews/views/splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NEWS HOURS",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
