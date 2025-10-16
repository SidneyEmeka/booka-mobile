import 'package:booka/reusables/book_card.dart';
import 'package:booka/reusables/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stylings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
              children: [
                Container(
                  height: Get.height * 0.38,
                  width: Get.width,
                  child: Center(
                    child:
                    Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            height: Get.height * 0.16,
                            width: Get.width,
                            color: Stylings.priBlue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.edit_note,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          bottom: 0,
                          left: 100,
                          child: Container(
                              width: Get.width * 0.5,
                              height: Get.height * 0.2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.15,
                                    width: Get.width * 0.35,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/face.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Text(
                                    'Agoha Idore',
                                    style: Stylings.bodyMediumLargest,
                                  ),
                                  Text(
                                    'Imo State University',
                                    style: Stylings.bodyMediumLarge,
                                  ),
                                  Text(
                                    'Agric Economics Extension',
                                    style: Stylings.bodyMediumLarge,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: Get.height * 0.5,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment(-1, 0),
                          child: Text(
                            'My Shelf',
                            style: Stylings.bodyMediumLargest,
                          )),
                      BookCard(
                          BookClass: 'Romantic Comedy',
                          Author: 'Zurich Thompson',
                          price: 'NGN5,000',
                          image: AssetImage('assets/images/bookcover.png')),
                    ],
                  ),
                ),
              ]),

        ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
