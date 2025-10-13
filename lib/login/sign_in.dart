import 'package:booka/reusables/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../stylings.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome back! \nSign in to continue',
                  textAlign: TextAlign.center,
                  style: Stylings.bodyMediumLargest,
                ),
                Spacer(),
                Container(
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: const Alignment(0, 0),
                      width: Get.width * 0.68,
                      height: Get.height * 0.064,
                      decoration: BoxDecoration(
                        color: Stylings.priGreen,
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
                              image: AssetImage('assets/images/googlelogo.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text('Sign Up with Google',
                              style: Stylings.bodyRegularLarge.copyWith(
                                color: Stylings.priGray,
                                fontSize: 15,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: const Alignment(0, 0),
                      width: Get.width * 0.68,
                      height: Get.height * 0.064,
                      decoration: BoxDecoration(
                        color: Stylings.priGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //child: Text(bText,style: Stylings.thicSubtitle.copyWith(color: isActive?Colors.white:Colors.grey.shade200,fontSize: 11*Get.size.aspectRatio*2.5),),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 18,
                            width: 18,
                            child: Image(
                              image:
                                  AssetImage('assets/images/facebooklogo.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text('Sign Up with Facebook',
                              style: Stylings.bodyRegularLarge.copyWith(
                                color: Stylings.priGray,
                                fontSize: 15,
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
                Spacer(),
                Text(
                  'or',
                  style: Stylings.bodyRegular,
                ),
                Spacer(),
                Container(
                  width: Get.width,
                  height: Get.height * 0.25,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  //padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: Stylings.bodyRegularLargest,
                          ),
                          TextField(
                            controller: textEditingController,
                            style: Stylings.bodyRegularLarge,
                            decoration: InputDecoration(
                              hintText: 'Please enter your Username',
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
                          SizedBox(height: Get.height * 0.02,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: Stylings.bodyRegularLargest,
                              ),
                              TextField(
                                controller: textEditingController,
                                style: Stylings.bodyRegularLarge,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: '********',
                                  hintStyle: Stylings.bodyRegular,
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.0, color: Stylings.priGray),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                keyboardType: TextInputType.numberWithOptions(),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [
                      Mybutton(bText: "Log in", bColor: Stylings.priYellow),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        alignment: const Alignment(0, 0),
                        width: Get.width * 0.68,
                        height: Get.height * 0.064,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Stylings.priYellow,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Forgot password',
                          style: Stylings.bodyRegularLarge
                              .copyWith(color: Stylings.priYellow),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
              ]),
        ),
      ),
    );
  }
}
