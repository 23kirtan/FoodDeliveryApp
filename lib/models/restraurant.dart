import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/cart_iteam.dart';
import 'package:fooddelivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restraurant extends ChangeNotifier{

  // ignore: unused_field
  final List<Food> _menu = [
    //burgers,
    Food(
     name: 'Classic Chessesburger',
     description: 'A juicy beef patty with melted chedar, lettuce, tomato, and ahint of onion and pickle.',
     imagepath: "lib/asset/images/Burger/cheese_burger.png", 
     price: 100, 
     category: FoodCategory.burgers, 
     availableAddons: [
          Addon(name: "Extra Cheese", price: 50),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 50),
       ],
      ),
    Food(
    name: 'Vegetarian Burger',
    description: 'A delicious plant-based patty with melted cheddar, lettuce, tomato, onions, and pickles, topped with a vegan sauce.',
    imagepath: "lib/asset/images/Burger/veg_burger.png",
    price: 150,
    category: FoodCategory.burgers,
         availableAddons: [
           Addon(name: "Extra Cheese", price: 50),
           Addon(name: "Grilled Mushrooms", price: 50),
           Addon(name: "Avocado", price: 50),
           Addon(name: "Vegan Bacon", price: 50),
         ],
      ),
    Food(
         name: 'Blue Moon Burger',
        description: 'A rich and savory burger with a perfectly grilled beef patty, topped with creamy blue cheese, caramelized onions, and arugula on a toasted brioche bun.',
imagepath: "lib/asset/images/Burger/blueMoon_buger.png",
price: 160,
category: FoodCategory.burgers,
availableAddons: [
  Addon(name: "Extra Blue Cheese", price: 50),
  Addon(name: "Caramelized Onions", price: 50),
  Addon(name: "Bacon", price: 50),
  Addon(name: "Truffle Mayo", price: 50),
],
      ),
    Food(
    name: 'BBQ Burger',
description: 'A smoky and flavorful burger with a juicy beef patty, melted cheddar, crispy onion rings, and tangy BBQ sauce on a toasted brioche bun.',
imagepath: "lib/asset/images/Burger/bbq_burger.png",
price: 200,
category: FoodCategory.burgers,
availableAddons: [
  Addon(name: "Extra BBQ Sauce", price: 50),
  Addon(name: "Crispy Onion Rings", price: 50),
  Addon(name: "Bacon", price: 50),
  Addon(name: "Jalapeños", price: 50),
],
      ),
    Food(
    name: 'Aloha Burger',
description: 'A tropical twist on a classic burger with a juicy beef patty, grilled pineapple, crispy bacon, melted Swiss cheese, and a drizzle of teriyaki sauce on a toasted brioche bun.',
imagepath: "lib/asset/images/Burger/aloha_burger.png",
price: 250,
category: FoodCategory.burgers,
availableAddons: [
  Addon(name: "Extra Pineapple", price: 50),
  Addon(name: "Extra Teriyaki Sauce", price: 50),
  Addon(name: "Bacon", price: 50),
  Addon(name: "Jalapeños", price: 50),
],
      ),

      //salad
    Food(
     name: 'Asian Sesame Salad',
description: 'A fresh and crunchy salad with crisp romaine lettuce, shredded carrots, red cabbage, toasted sesame seeds, and crispy wonton strips, tossed in a savory sesame-ginger dressing.',
imagepath: "lib/asset/images/Salad/Asiansesame_salad.jpg",
price: 300,
category: FoodCategory.salads,
availableAddons: [
  Addon(name: "Grilled Chicken", price: 50),
  Addon(name: "Extra Sesame Seeds", price: 50),
  Addon(name: "Avocado", price: 50),
  Addon(name: "Spicy Thai Dressing", price: 50),
],
      ),
    Food(
    name: 'Caesar Salad',
description: 'A classic Caesar salad with crisp romaine lettuce, crunchy garlic croutons, and shredded Parmesan cheese, tossed in a creamy Caesar dressing.',
imagepath: "lib/asset/images/Salad/Caeser_salad.jpeg",
price: 280,
category: FoodCategory.salads,
availableAddons: [
  Addon(name: "Grilled Chicken", price: 50),
  Addon(name: "Extra Parmesan", price: 50),
  Addon(name: "Bacon Bits", price: 50),
  Addon(name: "Avocado", price: 50),
],
      ),
    Food(
     name: 'Greek Salad',
description: 'A refreshing Mediterranean salad with crisp romaine lettuce, cherry tomatoes, cucumbers, red onions, Kalamata olives, and feta cheese, tossed in a light Greek vinaigrette.',
imagepath: "lib/asset/images/Salad/Greek_salad.jpeg",
price: 330,
category: FoodCategory.salads,
availableAddons: [
  Addon(name: "Grilled Chicken", price: 50),
  Addon(name: "Extra Feta Cheese", price: 50),
  Addon(name: "Avocado", price: 50),
  Addon(name: "Pepperoncini Peppers", price: 50),
],
      ),
    Food(
     name: 'Quinoa Salad',
description: 'A healthy and protein-packed salad with fluffy quinoa, cherry tomatoes, cucumbers, red bell peppers, red onions, and fresh parsley, tossed in a lemon-garlic dressing.',
imagepath: "lib/asset/images/Salad/Quinoa_salad.jpeg",
price: 350,
category: FoodCategory.salads,
availableAddons: [
  Addon(name: "Grilled Chicken", price: 50),
  Addon(name: "Feta Cheese", price: 50),
  Addon(name: "Avocado", price: 50),
  Addon(name: "Toasted Almonds", price: 50),
],
      ),
    Food(
    name: 'Southwest Salad',
description: 'A bold and flavorful salad with crisp romaine lettuce, black beans, corn, cherry tomatoes, red onions, and shredded cheddar cheese, topped with crunchy tortilla strips and a zesty chipotle ranch dressing.',
imagepath: "lib/asset/images/Salad/Southwest_salad.jpeg",
price: 380,
category: FoodCategory.salads,
availableAddons: [
  Addon(name: "Grilled Chicken", price: 50),
  Addon(name: "Avocado", price: 50),
  Addon(name: "Extra Cheddar Cheese", price: 50),
  Addon(name: "Jalapeños", price: 50),
],
      ),

      //sides
    Food(
    name: 'Garlic Breadsticks',
description: 'Soft and fluffy breadsticks brushed with garlic butter, topped with Parmesan and herbs, served with a side of marinara sauce.',
imagepath: "lib/asset/images/Sides/Garlic_sides.jpg",
price: 300,
category: FoodCategory.sides,
availableAddons: [
  Addon(name: "Extra Garlic Butter", price: 50),
  Addon(name: "Cheese Dip", price: 50),
  Addon(name: "Bacon Bits", price: 50),
],
      ),
    Food(
     name: 'Loaded Fries',
description: 'Crispy golden fries loaded with melted cheddar cheese, smoky bacon bits, and a drizzle of ranch, topped with fresh green onions.',
imagepath: "lib/asset/images/Sides/Loaded_fries.jpeg",
price: 450,
category: FoodCategory.sides,
availableAddons: [
  Addon(name: "Extra Cheese", price: 50),
  Addon(name: "Jalapeños", price: 50),
  Addon(name: "Sour Cream", price: 50),
  Addon(name: "Pulled BBQ Chicken", price: 50),
],
      ),
    Food(
    name: 'Classic Mac & Cheese',
description: 'Creamy, cheesy elbow macaroni cooked in a rich blend of cheddar and mozzarella, topped with a golden breadcrumb crust.',
imagepath: "lib/asset/images/Sides/mac_sides.jpg",
price: 400,
category: FoodCategory.sides,
availableAddons: [
  Addon(name: "Extra Cheese", price: 50),
  Addon(name: "Bacon Bits", price: 50),
  Addon(name: "Jalapeños", price: 50),
  Addon(name: "Truffle Oil", price: 50),
],
      ),
    Food(
    name: 'Crispy Onion Rings',
description: 'Golden, crispy onion rings coated in a seasoned batter and fried to perfection, served with a side of tangy dipping sauce.',
imagepath: "lib/asset/images/Sides/Onion_rings.jpeg",
price: 350,
category: FoodCategory.sides,
availableAddons: [
  Addon(name: "Extra Dipping Sauce", price: 50),
  Addon(name: "Cheese Sauce", price: 50),
  Addon(name: "Spicy Seasoning", price: 50),
  Addon(name: "Bacon Bits", price: 50),
],

      ),
    Food(
     name: 'Crispy Sweet Potato Fries',
description: 'Lightly seasoned, crispy sweet potato fries with a hint of sweetness, served with a side of smoky chipotle mayo.',
imagepath: "lib/asset/images/Sides/Sweet_potato_side.jpg",
price: 400,
category: FoodCategory.sides,
availableAddons: [
  Addon(name: "Extra Chipotle Mayo", price: 50),
  Addon(name: "Parmesan Topping", price: 50),
  Addon(name: "Cinnamon Sugar", price: 50),
  Addon(name: "Truffle Oil", price: 50),
],
      ),

      //desserts
    Food(
    name: 'Classic New York Cheesecake',
description: 'Rich, creamy cheesecake with a buttery graham cracker crust, topped with a light vanilla glaze.',
imagepath: "lib/asset/images/Desserts/Cheesecake.jpg",
price: 550,
category: FoodCategory.desserts,
availableAddons: [
  Addon(name: "Strawberry Topping", price: 50),
  Addon(name: "Chocolate Drizzle", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Caramel Sauce", price: 50),
],
      ),
    Food(
     name: 'Chocolate Lava Cake',
description: 'A rich and warm chocolate cake with a gooey molten chocolate center, served with a scoop of vanilla ice cream.',
imagepath: "lib/asset/images/Desserts/Chocolate_lava_cake.jpeg",
price: 600,
category: FoodCategory.desserts,
availableAddons: [
  Addon(name: "Extra Chocolate Drizzle", price: 50),
  Addon(name: "Vanilla Ice Cream", price: 50),
  Addon(name: "Caramel Sauce", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Crushed Oreos", price: 50),
],
      ),
    Food(
    name: 'Mixed Berry Fruit Tart',
description: 'A buttery, flaky tart crust filled with silky vanilla custard and topped with fresh strawberries, blueberries, and raspberries.',
imagepath: "lib/asset/images/Desserts/Fruit_tart.jpg",
price: 550,
category: FoodCategory.desserts,
availableAddons: [
  Addon(name: "Extra Berries", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Chocolate Drizzle", price: 50),
  Addon(name: "Honey Glaze", price: 50),
],
      ),
    Food(
   name: 'Gulab Jamun',
description: 'Soft and spongy milk-based dumplings soaked in a fragrant rose and cardamom-infused sugar syrup, served warm.',
imagepath: "lib/asset/images/Desserts/Gulab_jamun.jpg",
price: 500,
category: FoodCategory.desserts,
availableAddons: [
  Addon(name: "Extra Sugar Syrup", price: 50),
  Addon(name: "Scoop of Vanilla Ice Cream", price: 50),
  Addon(name: "Crushed Pistachios", price: 50),
  Addon(name: "Saffron Garnish", price: 50),
  Addon(name: "Rabri (Thickened Sweet Milk)", price: 50),
],
      ),
    Food(
    name: 'Classic Tiramisu',
description: 'An Italian delight made with layers of coffee-soaked ladyfingers, creamy mascarpone cheese, and a dusting of rich cocoa powder.',
imagepath: "lib/asset/images/Desserts/Tiramisu.jpg",
price: 600,
category: FoodCategory.desserts,
availableAddons: [
  Addon(name: "Extra Cocoa Powder", price: 50),
  Addon(name: "Espresso Shot", price: 50),
  Addon(name: "Dark Chocolate Shavings", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Baileys Irish Cream Drizzle", price: 50),
],
      ),

      //drinks
    Food(
   name: 'Classic Iced Coffee',
description: 'Freshly brewed coffee poured over ice, with a splash of milk and sweetener of your choice.',
imagepath: "lib/asset/images/Drinks/Iced_coffee.jpg",
price: 200,
category: FoodCategory.drinks,
availableAddons: [
  Addon(name: "Extra Espresso Shot", price: 50),
  Addon(name: "Vanilla Syrup", price: 50),
  Addon(name: "Caramel Drizzle", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Oat Milk", price: 50),
],

      ),
    Food(
    name: 'Lemon Mint Cooler',
description: 'A refreshing blend of fresh lemon juice, mint leaves, and chilled soda, lightly sweetened for a perfect summer drink.',
imagepath: "lib/asset/images/Drinks/Lemon_mint_cooler.jpg",
price: 250,
category: FoodCategory.drinks,
availableAddons: [
  Addon(name: "Extra Mint Leaves", price: 50),
  Addon(name: "Honey Instead of Sugar", price: 50),
  Addon(name: "Ginger Infusion", price: 50),
  Addon(name: "Soda Upgrade to Sparkling Water", price: 50),
  Addon(name: "Crushed Ice", price: 50),
],
      ),
    Food(
    name: 'Mango Lassi',
description: 'A creamy and refreshing Indian yogurt-based drink made with ripe mangoes, yogurt, a touch of honey, and a hint of cardamom.',
imagepath: "lib/asset/images/Drinks/Mango_lassi.jpeg",
price: 250,
category: FoodCategory.drinks,
availableAddons: [
  Addon(name: "Extra Mango Pulp", price: 50),
  Addon(name: "Saffron Garnish", price: 50),
  Addon(name: "Chia Seeds", price: 50),
  Addon(name: "Almond Slices", price: 50),
  Addon(name: "Rose Water Infusion", price: 50),
],
      ),
    Food(
    name: 'Strawberry Milkshake',
description: 'A rich and creamy milkshake made with fresh strawberries, vanilla ice cream, and cold milk, blended to perfection.',
imagepath: "lib/asset/images/Drinks/Strawberry_milkshake.jpeg",
price: 250,
category: FoodCategory.drinks,
availableAddons: [
  Addon(name: "Extra Strawberry Syrup", price: 50),
  Addon(name: "Whipped Cream", price: 50),
  Addon(name: "Chocolate Drizzle", price: 50),
  Addon(name: "Vanilla Ice Cream Scoop", price: 50),
  Addon(name: "Crushed Oreos", price: 50),
],
      ),
    Food(
     name: 'Virgin Mojito',
description: 'A refreshing non-alcoholic mojito made with fresh mint leaves, lime juice, soda, and a hint of sweetness, served over crushed ice.',
imagepath: "lib/asset/images/Drinks/Virgin_mojito.jpeg",
price: 250,
category: FoodCategory.drinks,
availableAddons: [
  Addon(name: "Extra Mint Leaves", price: 50),
  Addon(name: "Honey Instead of Sugar", price: 50),
  Addon(name: "Ginger Infusion", price: 50),
  Addon(name: "Pineapple Twist", price: 50),
  Addon(name: "Crushed Ice", price: 50),
],
      ),
  ];
      // G E E T E R S.
    List<Food> get menu => _menu;
    List<CartItem> get cart => _cart; 

    // user cart
    final List<CartItem> _cart = [];

   // add to cart
    void addToCart(Food food, List<Addon> selectedAddons) {
      CartItem? cartItem = _cart.firstWhereOrNull((item) {
// cheak if the list of selected food are same
        bool isSameFood = item.food == food;
// cheak if the list of selected addons are the same
         bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

         return isSameFood && isSameAddons;
       });
    // if item already exsist, increase it's quantity
       if(cartItem != null){
        cartItem.quantity++;
       }
    // otherwise new cart item into the cart
    else{
      _cart.add(CartItem(food:food, selectedAddons:selectedAddons));
    }
    notifyListeners();
  }
  // remove from cart
  void removeFromCart(CartItem cartItem) {
     int cartIndex = _cart.indexOf(cartItem);

     if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
     }
     notifyListeners();
  }
  // get total pricew of cart
   double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal*cartItem.quantity;
    }
    return total;
   }
   // get total number of item in cart
   int getTotalItemCount() {
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount +=  cartItem.quantity;
    }
    return totalItemCount;
   }
   // clear cart
   void clearCart(){
    _cart.clear();
    notifyListeners();
   }

    
   
   // H E L P E R S
    

String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here's your receipt");
  receipt.writeln();

  // Format the date to include up to seconds only
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("---------------------------------------------------------------------------");
  

  for (final cartItem in _cart) {
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ₹${_formatPrice(cartItem.food.price)}");

    // Check if add-ons exist
    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln("  Add-ons:");
      for (final addon in cartItem.selectedAddons) {
        receipt.writeln("    • ${addon.name} - ₹${_formatPrice(addon.price)}");
      }
    }
    receipt.writeln();
  }

  receipt.writeln("---------------------------------------------------------------------------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price: ₹${_formatPrice(getTotalPrice())}");

  return receipt.toString();
}

// Format double value into money
String _formatPrice(double price) {
  return price.toStringAsFixed(2);
}

    

  
      
    
      

      

  
}