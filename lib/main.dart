import 'package:book_plug/onboarding_page_1.dart';
import 'package:book_plug/onboarding_page_3.dart';
import 'package:book_plug/sign_up.dart';
import 'package:book_plug/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_plug/onboarding_page_2.dart';
import 'onboarding_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SignUpPage(),
    );
  }
}

