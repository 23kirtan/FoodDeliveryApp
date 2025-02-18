import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget{
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    //Textstyle.
    var MyPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var MySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 25,top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //delivery fee
            Column(
              children: [
                Text('\$0.99',style: MyPrimaryTextStyle,),
                Text('Delivery fee',style: MySecondaryTextStyle,),
              ],
            ),
            //delivery time
               Column(
              children: [
                Text('15-30 min'),
                Text('Delivery time'),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}