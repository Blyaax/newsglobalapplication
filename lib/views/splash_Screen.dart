import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "Images/splash_pic.jpg",
              fit: BoxFit.cover,
              height: height * 0.55,
              width: double.infinity,
            ),
            SizedBox(
              height: height * 0.25,
            ),
            Text(
              "TOP HEADLINES",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.grey.shade800),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SpinKitChasingDots(
              color: Colors.blue,
              size: 20,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              "@AKASH MADHU",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.grey.shade400),
            )
          ],
        ),
      ),
    );
  }
}
