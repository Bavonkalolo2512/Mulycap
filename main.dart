import 'package:flutter/material.dart';
import 'package:mulycap/pages/splashscreen.dart';
import 'package:mulycap/pages/welcompage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen(duration: 2,goTopage : const WelcomPage()),));
}

