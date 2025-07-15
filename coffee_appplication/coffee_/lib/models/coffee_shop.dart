import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {

  //coffee for sale list
  final List<Coffee> _shop =[
    //black coffee
  Coffee(
  name: 'Long Black', 
  price: "170 TL", 
  imagePath: "lib/images/black.png",
  ),
    //latte
  Coffee(
  name: 'Latte', 
  price: "185 TL", 
  imagePath: "lib/images/latte.png",
  ),

    //espresso
  Coffee(
  name: 'Espresso', 
  price: "175 TL", 
  imagePath: "lib/images/espresso.png",
  ),

    //iced coffee
  Coffee(
  name: 'Iced coffee', 
  price: "175 TL", 
  imagePath: "lib/images/iced_coffee.png",
  )
  ];

  //user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
   void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
   }
  //remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}