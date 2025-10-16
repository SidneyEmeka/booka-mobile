import 'package:booka/reusables/book_card.dart';
import 'package:booka/reusables/tiles.dart';
import 'package:booka/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: 'Search books here',
                          hintStyle: Stylings.bodyRegular,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.0, color: Stylings.priGray),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        keyboardType: TextInputType.numberWithOptions(),
                      ),
                      Spacer(),
                      Text(
                        'Top searches',
                        style: Stylings.bodyMediumLargest,
                      ),
                      Spacer(),
                      Tiles(
                          Tilewidth: Get.width * 0.45,
                          Tileheight: Get.height * 0.05,
                          label: 'Account',
                          image: null,
                          Tilecolor: Colors.white),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: Get.height * 0.5,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment(-1, 0),
                                child: Text(
                                  'Trending Books',
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
                    ]))));
  }
}
