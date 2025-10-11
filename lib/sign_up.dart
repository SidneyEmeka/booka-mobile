import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Welcome back! \nSign Up to continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: Colors.red,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                'Sign Up with Google',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: Image(
                width: 16,
                height: 16,
                image: AssetImage('assets/images/googlelogo.png'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(255, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.14),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                'Sign Up with Facebook',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: Image(
                width: 16,
                height: 16,
                image: AssetImage('assets/images/facebooklogo.png'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(255, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.14),
                ),
              ),
            ),
            SizedBox(height: 80),
            Text('or', style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 80),
            ElevatedButton(
                onPressed: () {},
                child: Text('Sign up with email', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(255, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.14))
                )
            )
          ],
        ),
      ),
    );
  }
}
