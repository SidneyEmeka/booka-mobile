import 'package:book_plug/onboarding_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

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
            picture: AssetImage('assets/images/onboardimg1.png'),
            info: 'Find the right books for \nyour course \nfast and easy',
            progress: AssetImage('assets/images/progressimg1.png'),
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
