import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/cart_iteam.dart';
import 'package:fooddelivery_app/models/restraurant.dart';
import 'package:fooddelivery_app/my_quantity_selector.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget{
  final CartItem cartItem;
  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraurant>(builder: (context, restraurant, child) => Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // food image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                cartItem.food.imagepath,
                height: 100,
                width: 100,
                
               ),
              ),
          SizedBox(width: 5),
              // name & price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food name
                  Text(cartItem.food.name),
          
                  // food price 
                  Text('₹${cartItem.food.price.toString()}'),
                ],
              ),

              const Spacer(),
          
              // increament or decrement
              QuantitySelector(
                quantity: cartItem.quantity,
                food: cartItem.food,
                onDecrement: (){
                  restraurant.removeFromCart(cartItem);
                },
                onIncrement: (){
                  restraurant.addToCart(cartItem.food, cartItem.selectedAddons);
                },
                ),
            ],
          ),
        ),
        SizedBox(
          height: cartItem.selectedAddons.isEmpty ? 0 : 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10,bottom: 10,right: 10),
            children: cartItem.selectedAddons
               .map((addon) => Padding(
                 padding: const EdgeInsets.only(right: 8),
                 child: FilterChip(
                      label: Row(
                        children: [
                          // addon name
                          Text(addon.name),
                 
                          // addon price
                          Text(' (₹${addon.price.toString()}) '),
                 
                        ],
                      ),
                       shape  : StadiumBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                       ), 
                       onSelected: (value){},
                       backgroundColor: Theme.of(context).colorScheme.secondary,
                       labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 12,
                       ),
                       ),
               )).toList(),
          ),
        ),
    ],
   ),
  ), 
 );
  }
}