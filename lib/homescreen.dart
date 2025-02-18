import 'package:flutter/material.dart';
import 'package:fooddelivery_app/componants/my_food_tile.dart';
import 'package:fooddelivery_app/food_page.dart';
import 'package:fooddelivery_app/models/food.dart';
import 'package:fooddelivery_app/models/restraurant.dart';
import 'package:fooddelivery_app/widgets/descriptionbox.dart';
import 'package:fooddelivery_app/widgets/my_current_location.dart';
import 'package:fooddelivery_app/widgets/my_drawer.dart';
import 'package:fooddelivery_app/widgets/sliver_appbar.dart';
import 'package:fooddelivery_app/widgets/tabbar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController  _tabController;

@override
void initState(){
  super.initState();
  _tabController = TabController(length: FoodCategory.values.length, vsync: this, );
}

@override
void dispose(){
  _tabController.dispose();
  super.dispose();
}

List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
  return fullMenu.where((food) => food.category == category).toList();
}

//return list of food in given category
List<Widget> getFoodInThisategory(List<Food> fullMenu){
  return FoodCategory.values.map((category) {
    List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

    return ListView.builder(
      itemCount: categoryMenu.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        //get individual food
        final food = categoryMenu[index];

        //returen food title
        return MyFoodTile(
          
          food: food,
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
      },
    );

  }).toList();
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
        drawer: MyDrawer(), 
        body: NestedScrollView(headerSliverBuilder: (context , innerBoxIsScrolled) => [
          MySliverAppBar(
           title: MyTabBar(tabController: _tabController),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
              // my current location.
             MyCurrentLocation(),

              // descreption box
              MyDescriptionBox(),

            ],
           ),
          ),
        ], body: Consumer<Restraurant>(
          builder: (context, restraurant, child) => TabBarView(
            controller: _tabController,
            children:getFoodInThisategory(restraurant.menu),
          ),
        ),
       ),
    
    );
  }
}