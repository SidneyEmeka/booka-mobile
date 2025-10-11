import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 98,
                      height: 115.15,
                      image: AssetImage('assets/images/bookalogo.png'),
                    ),
                    Text(
                      'Booka',
                      style: GoogleFonts.nunito(
                        color: Color.fromARGB(100, 52, 73, 94),
                        fontSize: 51,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(
              'Smart Textbook Access for \nUniversity Students',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: Color.fromARGB(100, 52, 73, 94),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
