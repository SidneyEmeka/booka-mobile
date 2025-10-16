import 'package:booka/forgot_password.dart';
import 'package:booka/login/sign_in.dart';
import 'package:booka/onboarding/onboarding.dart';
import 'package:booka/login/sign_up.dart';
import 'package:booka/order_history.dart';
import 'package:booka/profile.dart';
import 'package:booka/reusables/book_card.dart';
import 'package:booka/search_screen.dart';
import 'package:booka/splash_screen.dart';
import 'package:booka/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'edit_profile.dart';
import 'home_page.dart';
import 'login/select_uni.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Booka",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF34495E)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFFFAFAFA)
      ),
      home: const ForgotPassword(),
    );
  }
}

