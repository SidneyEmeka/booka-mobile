import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OnboardingCards extends StatelessWidget {
  final ImageProvider picture;
  final String info;
  final ImageProvider progress;


  const OnboardingCards({super.key, required this.picture, required this.info, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(width:327, height: 285, image: picture),
          SizedBox(height: 50,),
          Text(info, style: GoogleFonts.nunito(
          color: Color.fromARGB(100, 52, 73, 94),
      fontSize: 20,
      fontWeight: FontWeight.w500,), textAlign: TextAlign.center,),
          SizedBox(height: 40,),
          Image(width: 49, height: 61.25, image: progress,)
        ],
      ),
    );
  }
}
