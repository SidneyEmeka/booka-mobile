import 'package:booka/reusables/book_tiles.dart';
import 'package:booka/reusables/mybutton.dart';
import 'package:booka/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                    Text(
                      'Forgot Password',
                      style: Stylings.bodyMediumLargest,
                    ),
                    Spacer(),
                    Text(
                      'Enter your email address and we will \n send you a link to reset your password',
                      style: Stylings.bodyMediumLarge,
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: Stylings.bodyRegularLargest,
                          ),
                          TextField(
                            style: Stylings.bodyRegularLarge,
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
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
                    Spacer(flex: 12),
                    Center(
                        child: Mybutton(
                            bText: 'Reset Password',
                            bColor: Stylings.priYellow)),
                    Spacer()
                  ],
                ))));
    ;
    ;
  }
}
