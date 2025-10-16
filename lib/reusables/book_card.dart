import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCard extends StatelessWidget {
  final String BookClass;
  final String Author;
  final String price;
  final ImageProvider image;
  const BookCard({super.key, required this.BookClass, required this.Author, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),

      height:  Get.height * 0.25,
      width: Get.width * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox( height: Get.height* 0.125,
                width: Get.width * 0.35,
                child: Image(image: image, fit: BoxFit.fill,)),
          ),
          Text(BookClass),
          Text(Author),
          Text(price),
        ],
      ),
    );
  }
}
