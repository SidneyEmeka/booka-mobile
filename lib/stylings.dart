import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

class Stylings {
  ///Colors
static Color priYellow = Color(0xFFF39C11);
static Color priGreen = Color(0xFF2DCC70);
static Color priBlue = Color(0xFF34495E);
static Color priGray = Color(0xFFE0E0E0);


/// FONT STYLES
  static TextStyle displayBold = TextStyle(
    fontFamily: 'Nunito',
      fontSize: 51,
      fontWeight: FontWeight.w700,
    color: Stylings.priBlue
  );

static TextStyle displayBoldSmall = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Stylings.priBlue
);

  static TextStyle bodyMediumLargest = TextStyle(
      fontFamily: 'Nunito',
      fontSize: 20,
      fontWeight: FontWeight.w500,
    color: Stylings.priBlue
  );

static TextStyle bodyMediumLarge = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Stylings.priBlue
);

static TextStyle bodyRegular = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Stylings.priBlue
);

static TextStyle bodyRegularLarge = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Stylings.priBlue
);

static TextStyle bodyRegularLargest = TextStyle(
    fontFamily: 'Nunito',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Stylings.priBlue
);



}