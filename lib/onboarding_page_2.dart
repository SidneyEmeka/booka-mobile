import 'package:book_plug/onboarding_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 25, 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: GoogleFonts.nunito(
                    color: Color.fromARGB(100, 45, 204, 112),
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          OnboardingCards(
            picture: AssetImage('assets/images/onboardimg2.png'),
            info: 'Stay updated from \ncheckout to desktop',
            progress: AssetImage('assets/images/progressimg2.png'),
          ),
          SizedBox(height: 50),


          ElevatedButton(
              onPressed: () {},
              child: Text('Register', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size(255, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.14))
              )
          ), SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {},
              child: Text('Log in', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size(255, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.14))
              )
          )

        ],
      ),
    );
  }
}
