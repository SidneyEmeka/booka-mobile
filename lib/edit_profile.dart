import 'dart:ui';

import 'package:booka/reusables/bottom_navigation.dart';
import 'package:booka/reusables/mybutton.dart';
import 'package:booka/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
    child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      // 'assets/images/face.png'),
      // 'assets/images/face.png'),
    child: Image.asset('assets/images/face.png'),)
    // Image(
    // image: AssetImage(
    // 'assets/images/face.png'),
    // fit: BoxFit.contain,
    // ),
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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: Stylings.bodyRegularLargest,
                ),
                TextField(
                  style: Stylings.bodyRegularLarge,
                  decoration: InputDecoration(
                    hintText: 'Agoha Isdore',
                    hintStyle: Stylings.bodyRegular,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0, color: Stylings.priGray),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Department',
                  style: Stylings.bodyRegularLargest,
                ),
                TextField(
                  style: Stylings.bodyRegularLarge,
                  decoration: InputDecoration(
                    hintText: 'Aric economics extension and rural development',
                    hintStyle: Stylings.bodyRegular,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0, color: Stylings.priGray),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Institution',
                  style: Stylings.bodyRegularLargest,
                ),
                TextField(
                  style: Stylings.bodyRegularLarge,
                  decoration: InputDecoration(
                    hintText: 'Imo state University',
                    hintStyle: Stylings.bodyRegular,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.0, color: Stylings.priGray),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ],
            ),
          ),
          Spacer(),
          Mybutton(bText: 'Save', bColor: Stylings.priYellow),
          Spacer(),

    ])
    ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
