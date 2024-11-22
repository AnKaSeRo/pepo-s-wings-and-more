import 'package:flutter/material.dart';
import 'package:peposwings/models/food.dart';

class MyTapBar extends StatelessWidget {
  final TabController tabController;

  const MyTapBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );

    }).toList();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs()
        ),
    );
  }
}