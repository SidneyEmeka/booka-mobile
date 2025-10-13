
import 'package:booka/reusables/mybutton.dart';
import 'package:booka/reusables/onboarding_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../stylings.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  //controller for page view
  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment(1.0, 0),//like in a graph sheet
              child: Text(
                  'Skip',
                  style: Stylings.bodyMediumLargest
              ),
            ),
            Spacer(),
            //pageview
            SizedBox(
              height: Get.height*0.5,
              child: PageView(
                controller: _controller,
                children: const [
                  OnboardingCards(  picture: AssetImage('assets/images/onboardimg1.png'),
                    info: 'Find the right books for\nyour course\nfast and easy',),
                  OnboardingCards(
                    picture: AssetImage('assets/images/onboardimg2.png'),
                    info: 'Stay updated from\ncheckout to doorstep',
                  ),
                  OnboardingCards(
                    picture: AssetImage('assets/images/onboardimg3.png'),
                    info: 'Pay securely\nwith just a tap',
                  ),

                ],
              ),
            ),
            Spacer(),
            //dot indicator
            Align(
              alignment: Alignment(0, 0),
              child: SmoothPageIndicator(controller: _controller, count: 3,
                effect: ExpandingDotsEffect(
                  spacing: 4,radius: 5,activeDotColor: Stylings.priGreen,
                  dotHeight: 5,dotWidth: 11,
                  dotColor: Stylings.priGray,
                expansionFactor: 2,
              ),),
            ),
            Spacer(),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Mybutton(bText: "Register", bColor: Stylings.priYellow),
                 Mybutton(bText: "Login", bColor: Stylings.priYellow),
               ],
             ),
           ),
            Spacer(),
          ],
        ),
      )),
    );
  }
}
