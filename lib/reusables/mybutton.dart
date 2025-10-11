import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../stylings.dart';

class Mybutton extends StatelessWidget {
  final String bText;
  final Color bColor;
  final bool isActive;
  final bool hasMargin;
  const Mybutton({super.key, required this.bText, required this.bColor,  this.isActive=true, this.hasMargin=true});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:hasMargin? EdgeInsets.symmetric(vertical: 8):EdgeInsets.zero,
      alignment: const Alignment(0, 0),
      width: Get.width,
      height: Get.height*0.064,
      decoration: BoxDecoration(
        color: isActive?bColor:Stylings.priYellow,
        borderRadius: BorderRadius.circular(10),
      ),
      //child: Text(bText,style: Stylings.thicSubtitle.copyWith(color: isActive?Colors.white:Colors.grey.shade200,fontSize: 11*Get.size.aspectRatio*2.5),),
      child: Text(bText,style: Stylings.bodyRegularLarge.copyWith(color: isActive?Colors.white:Color(0xFFD0D5Dd),)),
    );
  }
}
