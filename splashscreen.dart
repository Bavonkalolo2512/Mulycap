// ignore: file_names
import 'package:flutter/material.dart' show AssetImage, BuildContext, Color, Column, FontWeight, Image, Key, MainAxisAlignment, MaterialPageRoute, Navigator, Scaffold, SizedBox, State, StatefulWidget, Text, Widget;
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {

int duration = 0;
Widget goTopage;

SplashScreen({Key? key, required this.goTopage, required this.duration }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: widget.duration), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => widget.goTopage));
    });
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('images/bus_splash.png'), width: 300),
          Text('Mulycap',
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 34, 80, 148),
                  fontWeight: FontWeight.bold,
                  fontSize: 35)),
        ],
      ),
    ));
  }
}
