import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../stylings.dart';

class Tiles extends StatelessWidget {
  final double Tilewidth;
  final double Tileheight;
  final Color Tilecolor;
  final String label;
  final ImageProvider image;

  const Tiles(
      {super.key,
      required this.Tilewidth,
      required this.Tileheight,
      required this.label,
      required this.image,
      required this.Tilecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: const Alignment(0, 0),
      width: Tilewidth,
      height: Tileheight,
      decoration: BoxDecoration(
        color: Tilecolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 18,
            width: 18,
            child: Image(
              image: image,
              fit: BoxFit.contain,
            ),
          ),
          Text(label,
              style: Stylings.bodyRegularLarge.copyWith(
                color: Stylings.priGray,
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}
