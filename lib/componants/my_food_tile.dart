import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final Function()? onTap;

  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Food details (LEFT side)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text('₹${food.price}', style: TextStyle(fontSize: 16, color: Colors.green)), // Changed to ₹
                      SizedBox(height: 5),
                      Text(food.description, maxLines: 2, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // Food image (RIGHT side)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(food.imagepath, height: 80, width: 80, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ),

         Divider(
           color: Theme.of(context).colorScheme.primary,
          
           
           
        ),
        
      ],
    );

    
  }
}
