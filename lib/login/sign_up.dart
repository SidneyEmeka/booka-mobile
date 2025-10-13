import 'package:booka/reusables/mybutton.dart';
import 'package:booka/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                'Welcome back! \nSign Up to continue',
                textAlign: TextAlign.center,
                style: Stylings.bodyMediumLargest,
              ),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: const Alignment(0, 0),
                      width: Get.width,
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
                          SizedBox(height: 18, width: 18, child: Image(
                            image: AssetImage(
                                'assets/images/googlelogo.png'),
                            fit: BoxFit.contain,
                          ),
                          ),
                          Text('Sign Up with Google',
                              style: Stylings.bodyRegularLarge.copyWith(
                                color: Stylings.priGray, fontSize: 15,
                              )),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: const Alignment(0, 0),
                      width: Get.width,
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
                          SizedBox(height: 18, width: 18, child: Image(
                            image: AssetImage(
                                'assets/images/facebooklogo.png'),
                            fit: BoxFit.contain,
                          ),
                          ),
                          Text('Sign Up with Facebook',
                              style: Stylings.bodyRegularLarge.copyWith(
                                color: Stylings.priGray, fontSize: 15,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // ElevatedButton.icon(
              //   onPressed: () {},
              //   label: Text(
              //     'Sign Up with Google',
              //   ),
              //   icon: Image(
              //     width: 16,
              //     height: 16,
              //     image: AssetImage('assets/images/googlelogo.png'),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green,
              //     fixedSize: Size(255, 45),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(11.14),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
              // ElevatedButton.icon(
              //   onPressed: () {},
              //   label: Text(
              //     'Sign Up with Facebook'),
              //   icon: Image(
              //     width: 16,
              //     height: 16,
              //     image: AssetImage('assets/images/facebooklogo.png'),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green,
              //     fixedSize: Size(255, 45),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(11.14),
              //     ),
              //   ),
              // ),
              Spacer(),
              Text('or'),
              Spacer(),
              Mybutton(bText: 'Sign up with email', bColor: Stylings.priGreen),
              Spacer(),
              Text(
                'By signing you are agreed with \nour friendly terms and condition',
                textAlign: TextAlign.center, style: Stylings.bodyRegular,),
              Spacer(),
              Text('Already have an account?', style: Stylings.bodyMediumLarge,),
              Spacer(),
              Text('Sign in', style: Stylings.bodyMediumLarge),
              Spacer()
              // ElevatedButton(
              //     onPressed: () {},
              //     child: Text('Sign up with email',
              //         style: TextStyle(color: Colors.white)),
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.green,
              //         fixedSize: Size(255, 45),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(11.14))
              //     )
              // )
            ],
          ),
        ),
      ),
    );
  }
}
