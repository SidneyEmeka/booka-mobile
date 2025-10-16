import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../stylings.dart';

class BookTiles extends StatelessWidget {
  final ImageProvider BookCover;
  final String BookName;
  final String Author;
  final String price;
  final ImageProvider Love;
  const BookTiles({super.key, required this.BookCover, required this.BookName, required this.Author, required this.price, required this.Love});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      width: Get.width * 0.85,
      height: Get.height * 0.125,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
              width: 100,
              child: Image(image: BookCover, fit: BoxFit.fill,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(BookName, style: Stylings.displayBoldSmall),
                  Text(Author),
                  Text(price, style: Stylings.displayBoldSmall,)
                ],
              ),
              Align(
                alignment: Alignment(-1, 1),
                child: SizedBox(
                  height: 20,
                    width: 20,
                    child: Image(image: Love, fit: BoxFit.fill,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
