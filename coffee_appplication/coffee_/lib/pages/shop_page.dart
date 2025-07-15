import 'package:coffee_/component/coffee_tile.dart';
import 'package:coffee_/models/coffee.dart';
import 'package:coffee_/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}


class _ShopPageState extends State<ShopPage> {

//add coffee to cart
void addToCart(Coffee coffee){

  //add to cart
Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);

//let user know it add been succesful added
showDialog(
  context: context, 
  builder: (context) => AlertDialog(
  title: Text("Başarıyla eklendi"),
  ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context,value,child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            //heading message
            const Text(
              "Nasıl bir kahve istersiniz?",
              style: TextStyle(fontSize: 23),
            ),
            const SizedBox(height: 25),

            //list of coffee to buy
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                  // get individual coffee
                  Coffee eachCoffe = value.coffeeShop[index];

                  //return the tile for this coffee
                  return CoffeeTile(
                    coffee: eachCoffe,
                    icon: Icon(Icons.add),
                  onPressed: () => addToCart(eachCoffe),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
