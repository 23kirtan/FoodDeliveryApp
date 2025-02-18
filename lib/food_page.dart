// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/food.dart';
import 'package:fooddelivery_app/models/restraurant.dart';
import 'package:fooddelivery_app/widgets/my_button.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget{
  final Food food;
  final Map<Addon,bool> selectedAddons = {

  };

   FoodPage({
    super.key, 
    required this.food
    }){

      for (Addon addon in food.availableAddons){
        selectedAddons[addon] = false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
}
class _FoodPageState extends State<FoodPage>{

  // method to add to cart
  void addToCart(Food food, Map<Addon,bool> selectedAddons){

    // close the current foodpage to go back to menu
    Navigator.pop(context);

    // format the selected addon
    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<Restraurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      // scaffold ui
      Scaffold(
      
       body:  SingleChildScrollView(
         child: Column(
            children: [
              Image.asset(widget.food.imagepath),
              SizedBox(height: 10,),
              
              Column(
               // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text(widget.food.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
         
                  
              Padding(
                padding: const EdgeInsets.only(right: 325),
                child: Text('₹${widget.food.price.toString()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Theme.of(context).colorScheme.primary),),
              ),
              SizedBox(height: 10,),
         
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(widget.food.description),
              ),
         
              SizedBox(height: 10,),
         
              Divider(color: Theme.of(context).colorScheme.secondary,
              indent: 20,
              endIndent: 20,),
               SizedBox(height: 10,),
         
              Text('Add-ons',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 16,fontWeight: FontWeight.bold),),
         
              SizedBox(height: 10,),
         
              //addons
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.tertiary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder: (context,index){
                  
                      Addon addon = widget.food.availableAddons[index];
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: Text('₹${addon.price.toString()}'),

                        value: widget.selectedAddons[addon],
                         onChanged: (bool? value){
                          setState(() {
                            widget.selectedAddons[addon] = value!;
                          });
                         });
                    }
                    ),
                ),
              ),
                ],
              ),
              MyButton(onTap: () => addToCart(widget.food, widget.selectedAddons),
               text: "Add to cart",
               ),

               const SizedBox(height: 20,),
            ],
          ),
       ),
        
        
    ),

    SafeArea(
      child: Opacity(
        opacity: 0.6,
        child: Container(
          margin: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed:() => Navigator.pop(context),
           icon: Icon(Icons.arrow_back_ios_new_rounded),
           ),
        ),
      ),
    ),
      ],
    );

      //back button.

    
  }
  
}