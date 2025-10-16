import 'package:flutter/material.dart';

class BottomNavigation  extends StatelessWidget {
  const BottomNavigation ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    backgroundColor: Colors.lightGreen,
    iconSize: 20,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_filled), label: 'Home'),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.favorite_border,
    ),
    label: 'Wishlist'),
    BottomNavigationBarItem(
    icon: Icon(Icons.search_rounded), label: 'Search'),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart), label: 'Cart'),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_3_rounded), label: 'Profile'),
    ]);
  }
}
