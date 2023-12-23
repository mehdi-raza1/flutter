import 'dart:async';

import 'package:fastpro/external_screen.dart';
import 'package:flutter/material.dart';

import 'bottem_bar.dart';
import 'dashboard_screen.dart';

void main() {
  runApp(const AsadApp());
}

class AsadApp extends StatelessWidget {
  const AsadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(milliseconds: 3000),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyBottomBar(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/app_logo.jpg'))),
        ),
      ),
    );
  }
}
