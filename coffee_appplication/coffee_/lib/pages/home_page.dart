import 'package:coffee_/component/bottom_nav_bar.dart';
import 'package:coffee_/const.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
 //navigate bottom bar
int _selectedIndex = 0;
void navigateBottomBar(int index){
  setState(() {
    _selectedIndex = index;
  });
}

//pages
final List<Widget> _pages = [

// shop page
ShopPage(),

// sepet sayfası
CartPage(),

];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar:MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  } 
  }



