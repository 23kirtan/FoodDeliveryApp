import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/restraurant.dart';
import 'package:provider/provider.dart';

class MyRecipt extends StatelessWidget{
  const MyRecipt({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25,right: 25,bottom: 25),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank You for order'),
          const SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(25),
             child: Consumer<Restraurant>(builder: (context,restraurant,child) => Text(restraurant.displayCartReceipt()),),
          ),
          const SizedBox(height: 25,),
          const Text('Estimate delivery time is: 4:10 PM'),
        ],
      ),
    ),
    );
  }
}