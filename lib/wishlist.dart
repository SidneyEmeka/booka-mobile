import 'package:booka/reusables/book_tiles.dart';
import 'package:booka/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: Get.width,
                height: Get.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment(-1, 0),
                        child: Icon(Icons.arrow_back_ios_new)),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Wishlist',
                          style: Stylings.bodyMediumLargest,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite,
                        )
                      ],
                    ),
                    Spacer(),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Search books here',
                        hintStyle: Stylings.bodyRegular,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.0, color: Stylings.priGray),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                    Container(
                      height: Get.height * 0.7,
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BookTiles(
                              BookCover:
                                  AssetImage('assets/images/bookcover.png'),
                              BookName: 'Other side of the river',
                              Author: 'Patric John',
                              price: 'NGN 5,000',
                              Love: AssetImage('assets/images/love.png')),
                          BookTiles(
                              BookCover:
                              AssetImage('assets/images/bookcover.png'),
                              BookName: 'Other side of the river',
                              Author: 'Patric John',
                              price: 'NGN 5,000',
                              Love: AssetImage('assets/images/love.png')),
                          BookTiles(
                              BookCover:
                              AssetImage('assets/images/bookcover.png'),
                              BookName: 'Other side of the river',
                              Author: 'Patric John',
                              price: 'NGN 5,000',
                              Love: AssetImage('assets/images/love.png')),
                          BookTiles(
                              BookCover:
                              AssetImage('assets/images/bookcover.png'),
                              BookName: 'Other side of the river',
                              Author: 'Patric John',
                              price: 'NGN 5,000',
                              Love: AssetImage('assets/images/love.png')),
                          BookTiles(
                              BookCover:
                              AssetImage('assets/images/bookcover.png'),
                              BookName: 'Other side of the river',
                              Author: 'Patric John',
                              price: 'NGN 5,000',
                              Love: AssetImage('assets/images/love.png')),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
