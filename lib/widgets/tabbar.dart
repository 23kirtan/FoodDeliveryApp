import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last, // Extracting enum value name
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: tabController,
      isScrollable: true, // ✅ Fix: Allows full tab names to be visible
      tabs: _buildCategoryTabs(),
      indicatorColor: Theme.of(context).colorScheme.primary, // Optional styling
      labelColor: Colors.black, // Optional text color
      labelPadding: EdgeInsets.symmetric(horizontal: 16), // ✅ Adds spacing between tabs
    );
  }
}
