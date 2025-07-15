import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
    child:  GNav(
      onTabChange: (value) => onTabChange!(value),
      color: Colors.grey[600],
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.grey[900],
      tabBackgroundColor: Colors.grey.shade300,
      tabBorderRadius: 24,
      tabActiveBorder: Border.all(color: Colors.black
      
      ),
      tabs: const [
      GButton(icon: Icons.home,
      text: 'Alışveriş',
      ),
      GButton(
        icon: Icons.shopping_bag_outlined,
      text: 'Sepet',
      )
    ]),
    );
  }
}