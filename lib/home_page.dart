import 'package:booka/reusables/book_tiles.dart';
import 'package:booka/reusables/tiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../stylings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: Get.height,
          width: Get.width,
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end ,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hi Isdore', style: Stylings.bodyMediumLargest),
                        Text(
                          'Your Campus Bookshop, Digitized',
                          style: Stylings.bodyRegularLarge,
                        )
                      ]),
                  Container(
                  width: Get.width * 0.16,
                      height: Get.height * 0.10,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                  ),
                      child: Image(image: AssetImage('assets/images/face.png'), fit: BoxFit.contain,))
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
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
              Spacer(),
              SizedBox(
                height: Get.height * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Tiles(
                            Tilewidth: Get.width * 0.45,
                            Tileheight: Get.height * 0.05,
                            label: 'Buy Books',
                            image: AssetImage('assets/images/basket.png'),
                            Tilecolor: Colors.white),
                        Tiles(
                            Tilewidth: Get.width * 0.45,
                            Tileheight: Get.height * 0.05,
                            label: 'Wishlist',
                            image: AssetImage('assets/images/love.png'),
                            Tilecolor: Colors.white)
                      ],
                    ),
                    Tiles(
                        Tilewidth: Get.width,
                        Tileheight: Get.height * 0.05,
                        label: 'Order History',
                        image: AssetImage('assets/images/history.png'),
                        Tilecolor: Colors.white),
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                      child: Text('Top Picks', style: Stylings.bodyRegularLargest,)),
                  BookTiles(
                      BookCover: AssetImage('assets/images/bookcover.png'),
                      BookName: 'Other side of the River',
                      Author: 'patric john',
                      price: 'NGN5,000',
                      Love: AssetImage('assets/images/love.png')),
                  BookTiles(
                      BookCover: AssetImage('assets/images/bookcover.png'),
                      BookName: 'Other side of the River',
                      Author: 'patric john',
                      price: 'NGN5,000',
                      Love: AssetImage('assets/images/love.png')),
                  BookTiles(
                      BookCover: AssetImage('assets/images/bookcover.png'),
                      BookName: 'Other side of the River',
                      Author: 'patric john',
                      price: 'NGN5,000',
                      Love: AssetImage('assets/images/love.png')),
                ],
              ),


            ],
          ),
        ),

      ), bottomNavigationBar: BottomNavigationBar( backgroundColor: Colors.lightGreen,
        iconSize: 20,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border,), label: 'Wishlist'),
      BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      BottomNavigationBarItem(icon: Icon(Icons.person_3_rounded), label: 'Profile'),

    ]),
    );
  }
}
