import 'package:coffee_/component/coffee_tile.dart';
import 'package:coffee_/models/coffee.dart';
import 'package:coffee_/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  //remove item from cart
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemFromCart(coffee);
  }

//pay button trapped
void payNow(){
  
  /*
  fill out payment service here
  */

}




  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context,value,child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          children: [
            //heading
            Text('Your Cart',style: TextStyle
            (fontSize: 25),
            ),
            //list of cart items
            Expanded(child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context,index){
              //get indiviual cart iyems
              Coffee eachCoffe =value.userCart[index];

              //return coffee tile
              return CoffeeTile(
                coffee: eachCoffe, 
                onPressed: () => removeFromCart(eachCoffe), 
                icon: Icon(Icons.delete),
                );
            },
            ),
            ),

            //ödeme butonu
            GestureDetector(
              onTap: payNow,
              child: Container(
              padding: EdgeInsets.all(23),
              width: double.infinity,
              child: const Center(
              child: Text(
                "Şimdi öde",
                style: TextStyle(
                  color: Colors.white
                  ),
              ),
              ),
            decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(12)),
            ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}