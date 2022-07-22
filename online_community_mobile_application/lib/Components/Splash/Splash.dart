// ignore_for_file: unnecessary_const, file_names

import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Splash({required this.color});

  final Color color;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        (() => Navigator.pushReplacementNamed(context, "/LoginPage")));

    return Material(
      child: Ink(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage('assets/images/med.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(
              backgroundColor: Color(0x002bb9ad),
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Image.asset('assets/images/logo.png', width: 150, height: 50),
            ),
          ],
        ),
      ),
    );
  }
}
